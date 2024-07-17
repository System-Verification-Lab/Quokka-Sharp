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
    ''' return (found, weight, assignment)'''
    result = str(result)
    # get weight
    weight = re.findall(r"o -?[0-9]+",result)
    if not weight: 
        return (False, 0, [])
    # get assignment
    assignment = re.findall(r"v [0-9\s\-]+ 0",result)
    assert assignment
    assignment = assignment[0].split(" ")
    assert assignment[0] == "v"
    assert assignment[-1] == "0"
    assignment = assignment[1:-1]

    if abs(weight - expexted_prob) < (expexted_prob+1) * 1e-12:
        return (False, weight, assignment)
    else:
        return (True, weight, assignment)

def identity_check(cnf:'CNF', cnf_file_root):
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.add_identity_clauses()
    
    cnf_file = cnf_file_root + f"/quokka_syn_{cnf.syn_gate_layer}.cnf"
    cnf_temp.write_to_file(cnf_file, syntesis_fomat=True)
    return cnf_file

def Synthesys(tool_invocation, cnf: 'CNF', cnf_file_root = tempfile.gettempdir()):
    p = None
    found = False
    weight = 0
    assignment = []
    try:  
        TIMEOUT = int(os.environ["TIMEOUT"])
        class TimeoutException(Exception): pass 
        def timeout(signum, frame):
            if p is not None:
                p.kill()
            print(f"""result found: {found} \n
                  max layers tried: {cnf.syn_gate_layer}
                  weight achived: {weight} \n
                  best assignment: {assignment} """)
            raise TimeoutException("TIMEOUT")
    except KeyError: 
        print ("Please set the environment variable TIMEOUT")
        sys.exit(1)

    try:
        signal.signal(signal.SIGALRM, timeout)
        signal.alarm(TIMEOUT)

        if cnf.computational_basis:
            expected_prob = 2**cnf.n
        else:
            expected_prob = 4**cnf.n

        while not found:
            cnf.add_syn_layer()
            file = identity_check(cnf, cnf_file_root)
            command = tool_invocation.split(' ') + [file]
            p = Popen(command, stdout= PIPE, stderr=PIPE)
            pid = None
            while pid == p.pid:
                pid, _ = os.wait()
            res = p.communicate()
            found, weight, assignment = get_result(res[0], expected_prob)
        
        return cnf.get_syn_cuirct(assignment)

    except TimeoutException:
        return "TIMEOUT"