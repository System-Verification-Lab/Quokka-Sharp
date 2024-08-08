import copy
import os
import re
import signal
import sys
import tempfile
import time
from subprocess import PIPE, Popen

from .encoding.cnf import CNF
from decimal import Decimal, getcontext
getcontext().prec = 32

# TODO: information for arguments in functions

def get_result(result, expexted_prob):
    result = str(result)
    gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\\nc s",result)[0]
    gpmc_ans_str = gpmc_ans_str.replace("\\n", "").replace(" ", "").replace("i", "j")
    gpmc_ans = complex(gpmc_ans_str)
    real, imag = Decimal(gpmc_ans.real), Decimal(gpmc_ans.imag)
    prob = (abs(real)**2 + abs(imag)**2).sqrt()
    if abs(prob - expexted_prob) < (expexted_prob+1) * 1e-12:
        return True
    else: 
        return False

def comp_basis(i, cnf, cnf_file_root):
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.rightProjectQBi(i)
    cnf_temp.leftProjectQBi(i)
    
    cnf_file = cnf_file_root + "/quokka_eq_check_"+ str(i) + ".cnf"
    cnf_temp.write_to_file(cnf_file)
    return cnf_file

def basis(i, Z_or_X, cnf:'CNF', cnf_file_root):
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.rightProjectZXi(Z_or_X, i)
    cnf_temp.leftProjectZXi(Z_or_X, i)
    
    cnf_file = cnf_file_root + "/quokka_eq_check_"+ ("Z" if Z_or_X else "X") + str(i) + ".cnf"
    cnf_temp.write_to_file(cnf_file)
    return cnf_file

def identity_check(cnf:'CNF', cnf_file_root):
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.add_identity_clauses()
    
    cnf_file = cnf_file_root + "/quokka_eq_check_identity.cnf"
    cnf_temp.write_to_file(cnf_file)
    return cnf_file

def CheckEquivalence(tool_invocation, cnf: 'CNF', cnf_file_root = tempfile.gettempdir(), check = "id"):
    try:  
        TIMEOUT = int(os.environ["TIMEOUT"])
        class TimeoutException(Exception): pass 
        def timeout(signum, frame):
            for proc in proclist:
                procdict[proc.pid].kill()
            raise TimeoutException("TIMEOUT")
    except KeyError: 
        print ("Please set the environment variable TIMEOUT")
        sys.exit(1)

    try:
        signal.signal(signal.SIGALRM, timeout)
        signal.alarm(TIMEOUT)
        #TODO: different number of qubits
        cnf_file_list = []
        proclist = []
        
        match check:
            case "id":
                cnf_file_list.append(identity_check(cnf, cnf_file_root))
                if cnf.computational_basis or cnf.double_and_entangle:
                    expected_prob = 2**cnf.n
                else:
                    expected_prob = 4**cnf.n
            case "2n":
                if cnf.computational_basis:
                    assert False, "2n check is not supported for computational basis"
                    for i in range(cnf.n):
                        cnf_file_list.append(comp_basis(i, cnf, cnf_file_root))
                else:
                    for i in range(cnf.n):
                        cnf_file_list.append(basis(i, True, cnf, cnf_file_root))
                        cnf_file_list.append(basis(i, False, cnf, cnf_file_root))
                    expected_prob = 1
            case _:
                raise ValueError("Invalid check type")
        
            
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
                    result = get_result(res[0], expected_prob)
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
            procdict[pid].kill()
        
        return result
    except TimeoutException:
        return "TIMEOUT"