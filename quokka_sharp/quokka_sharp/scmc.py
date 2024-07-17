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

def identity_check(cnf:'CNF', cnf_file_root):
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.add_identity_clauses()
    
    cnf_file = cnf_file_root + "/quokka_eq_check_identity.cnf"
    cnf_temp.write_to_file(cnf_file)
    return cnf_file

def CheckEquivalence(tool_invocation, cnf: 'CNF', cnf_file_root = tempfile.gettempdir(), check = "id"):
    p = None
    try:  
        TIMEOUT = int(os.environ["TIMEOUT"])
        class TimeoutException(Exception): pass 
        def timeout(signum, frame):
            if p is not None:
                p.kill()
            raise TimeoutException("TIMEOUT")
    except KeyError: 
        print ("Please set the environment variable TIMEOUT")
        sys.exit(1)

    try:
        signal.signal(signal.SIGALRM, timeout)
        signal.alarm(TIMEOUT)

        file = identity_check(cnf, cnf_file_root)
        if cnf.computational_basis:
            expected_prob = 2**cnf.n
        else:
            expected_prob = 4**cnf.n
        command = tool_invocation.split(' ') + [file]
        p = Popen(command, stdout= PIPE, stderr=PIPE)
        while True:
            pid, _ = os.wait()
            if pid == p.pid:
                res = p.communicate()
                result = get_result(res[0], expected_prob)
                break
        return result
    except TimeoutException:
        return "TIMEOUT"