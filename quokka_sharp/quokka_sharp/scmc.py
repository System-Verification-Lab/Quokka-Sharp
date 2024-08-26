import copy
import os
import re
import signal
import sys
import tempfile
import time
from subprocess import PIPE, Popen

from .encoding.cnf import CNF
from .encoding.qasm_parser import Circuit, QASMparser
from decimal import Decimal, getcontext
getcontext().prec = 32

# TODO: information for arguments in functions

def get_result(result, expexted_prob):
    ''' return (found, weight, assignment)'''
    result = str(result)
    # get weight
    weight = re.findall(r"o -?[0-9]+",result)
    if not weight: 
        return (False, "CONFLICT", [])
    weight = Decimal(float(weight[0][2:]))
    # get assignment
    assignment = re.findall(r"v [0-9\s\-]+ 0",result)
    if assignment:
        assignment = assignment[0].split(" ")
        assert assignment[0] == "v"
        assert assignment[-1] == "0"
        assignment = assignment[1:-1]

    if abs(weight - expexted_prob) < (expexted_prob+1) * 1e-12:
        return (True, weight, assignment)
    else:
        return (False, weight, assignment)

def identity_check(cnf:'CNF', cnf_file_root, indx, onehot_xz = False):
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.add_identity_clauses(constrain_2n = onehot_xz)
    
    cnf_file = cnf_file_root + f"quokka_syn.cnf" # _{onehot_xz}_{indx}.cnf" # overide files to reduce spaming
    cnf_temp.write_to_file(cnf_file, syntesis_fomat=True)
    return cnf_file

def Synthesys(tool_invocation, cnf: 'CNF', cnf_file_root = tempfile.gettempdir(), incremental = False, inc_step = 1, onehot_xz = False):
    DEBUG = False
    if DEBUG: print() 
    p = None
    it_counter = 0
    try:  
        TIMEOUT = int(os.environ["TIMEOUT"])
        class TimeoutException(Exception): pass 
        def timeout(signum, frame):
            ## TODO: We can return best result so far instead?
            if p is not None:
                p.kill()
            if weight == "CONFLICT":
                raise TimeoutException("CONFLICT")
            else:
                print(it_counter, end="")
                raise TimeoutException("TIMEOUT")
    except KeyError: 
        print ("Please set the environment variable TIMEOUT")
        sys.exit(1)

    try:
        signal.signal(signal.SIGALRM, timeout)
        signal.alarm(TIMEOUT)

        if onehot_xz:
            expected_prob = 2*cnf.n
        elif cnf.computational_basis:
            expected_prob = 2**cnf.n
        else:
            expected_prob = 4**cnf.n
        
        found = False
        weight = 0
        assignment = []
        if incremental:
            num_layers = inc_step
        circuit = Circuit(translate_ccx=True)
        circuit.n = cnf.n
        while not found:
            it_counter+=1
            if not incremental:
                cnf.add_syn_layer()
                file = identity_check(cnf, cnf_file_root, it_counter, onehot_xz = onehot_xz)
            else:
                cnf_copy = copy.deepcopy(cnf)
                cnf_copy.add_syn_layer(num_layers)
                file = identity_check(cnf_copy, cnf_file_root, it_counter, onehot_xz = onehot_xz)
            command = tool_invocation.split(' ') + [file]
            if DEBUG: print(" ".join(command))
            p = Popen(command, stdout= PIPE, stderr=PIPE)
            pid = None
            while pid == p.pid:
                pid, _ = os.wait()
            res = p.communicate()
            last_weight = weight
            found, weight, assignment = get_result(res[0], expected_prob)
            if incremental:
                if weight - last_weight > 0: # TODO Might want to put here a margin error 
                    print(f"({num_layers})", end = "")
                    num_layers = inc_step  
                    circuit_inc = cnf_copy.get_syn_circuit(assignment, translate_ccx=True)
                    circuit.append(circuit_inc)
                    cnf.encode_circuit(circuit_inc)
                else:
                    num_layers += 1
                    weight = last_weight
            if DEBUG: print(found, weight, assignment)
            if DEBUG: print(cnf.get_syn_qasm(assignment))

        if DEBUG: print()
        if not incremental:
            return cnf.get_syn_qasm(assignment)
        else:
            return circuit.to_qasm()

    except TimeoutException as error:
        return str(error)