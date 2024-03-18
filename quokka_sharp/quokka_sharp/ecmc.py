import copy
import os
import re
import tempfile
import time
from subprocess import PIPE, Popen

# TODO: information for arguments in functions

def get_result(result):
    result = str(result)
    gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\\nc s",result)[0]
    gpmc_ans = float(gpmc_ans_str)
    if abs(gpmc_ans - 1) > 1e-15:
        return False
    else: return True

def basis(i, Z_or_X, cnf, cnf_file_root):
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.rightProjectZXi(Z_or_X, i)
    cnf_temp.leftProjectZXi(Z_or_X, i)
    
    cnf_file = cnf_file_root + "/quokka_eq_check_"+ ("Z" if Z_or_X else "X") + str(i) + ".cnf"
    cnf_temp.write_to_file(cnf_file)
    return cnf_file

def CheckEquivalence(tool_invocation, cnf, cnf_file_root = tempfile.gettempdir()):
    #TODO: different number of qubits
    cnf_file_list = []
    
    for i in range(cnf.n):
        cnf_file_list.append(basis(i, True, cnf, cnf_file_root))
        cnf_file_list.append(basis(i, False, cnf, cnf_file_root))
        
    result = True
    tool_command = tool_invocation.split(' ')
    # parallel processes
    N = 16
    while True:
        proclist = []
        length = len(cnf_file_list)
        for i in range(min(N, length)):        
            cnf_file = cnf_file_list[i]
            tool_file_command = tool_command + [cnf_file]
            p = Popen(tool_file_command, stdout= PIPE, stderr=PIPE)
            proclist.append(p)
        if len(proclist) == 0:
            break
        procdict = {proc.pid: proc for proc in proclist}
        watched_pids = set(proc.pid for proc in proclist)
        while True:
            pid, _ = os.wait()
            if pid in watched_pids:
                res = procdict[pid].communicate()
                result = get_result(res[0])
                if result == False:
                    break
                else:
                    watched_pids.remove(pid)
            if len(watched_pids) == 0:
                break

        if result == False:
            break

        if length > N:
            cnf_file_list = cnf_file_list[N: length]
        else:
            break
    
    for pid in watched_pids:
        procdict[pid].terminate()
    
    return result