import copy
import os
import re
import tempfile
import time
from subprocess import PIPE, Popen

# TODO: add comments for important codes
# TODO: information for arguments in functions

class Result:
    def __init__(self, time, result):
        self.time = time
        if result:
            self.result = "equivalent"
        else:
            self.result = "not_equivalent"

def GPMC(cnf_file):
    # gpmc_path = shutil.which("gpmc")
    # if gpmc_path == None:
    #     sys.exit("Binary gpmc not found in path.")
    gpmc_path = TOOL_PATH
    proc = Popen([gpmc_path, "-mode=1", cnf_file], stdout= PIPE, stderr=PIPE)
    # result, error = proc.communicate()
    return proc

def get_result(result):
    result = str(result)
    gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\\nc s",result)[0]
    gpmc_ans = float(gpmc_ans_str)
    if abs(gpmc_ans - 1) > 1e-14:
        return False
    else: return True

def basis(i, Z_or_X, cnf, cnf_file_root):
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.leftProjectZXi(Z_or_X, i)
    cnf_temp.rightProjectZXi(Z_or_X, i)
    cnf_file = cnf_file_root + "/quokka_eq_check_"+ ("Z" if Z_or_X else "X") + str(i) + ".cnf"
    cnf_temp.write_to_file(cnf_file)
    return cnf_file

def EQ2CNF(cnf, cnf_file_root = tempfile.gettempdir()):
    argulist = []
    cnf_file_list = []
    for i in range(cnf.n):
        argulist.append((i, True,  cnf))
        argulist.append((i, False, cnf))   
    for argu in argulist:
        cnf_file = basis(argu[0], argu[1], argu[2], cnf_file_root)
        cnf_file_list.append(cnf_file)
    return cnf_file_list

def EQ_check(toolpath, cnf_file_list):
    global TOOL_PATH
    TOOL_PATH = toolpath
    #TODO: different number of qubits
    
    result = True

    start = time.time()
    # parallel processes
    N = 16
    while True:
        proclist = []
        length = len(cnf_file_list)
        for i in range(min(N, length)):        
            cnf_file = cnf_file_list[i]
            p = GPMC(cnf_file)
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
    
    end = time.time()

    res = Result(end - start, result)
    return res