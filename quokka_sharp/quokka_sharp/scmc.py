import copy
import os
import re
import signal
import sys
import tempfile
import time
import datetime
from subprocess import PIPE, Popen

from .encoding.cnf import CNF
from .encoding.qasm_parser import Circuit, QASMparser
from decimal import Decimal, getcontext
getcontext().prec = 32

# TODO: information for arguments in functions

def get_result(result_file, expexted_prob):
    ''' return (found, weight, assignment)'''

    with open(result_file, 'r') as file:
        result_str = file.read()

    # get weight
    if re.findall(r"r SATISFIABLE",result_str):
        weight = re.findall(r"s -?[0-9\.]+",result_str)
    else:
        weight = re.findall(r"o -?[0-9\.]+",result_str) + re.findall(r"k -?[0-9]+",result_str)
        if not weight: 
            return (False, "CRASH", [])
    # get assignment
    assignment = re.findall(r"v [0-9\s\-]+ 0",result_str)
    weight = Decimal(float(weight[0][2:]))
    if assignment:
        assignment = assignment[0].split(" ")
        assert assignment[0] == "v"
        assert assignment[-1] == "0"
        assignment = assignment[1:-1]

    prec = Decimal(weight/Decimal(expexted_prob))
    return (prec > (1-1e-12), prec, assignment)
    
def identity_check(cnf:'CNF', cnf_file_root, indx, onehot_xz = False):
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.add_identity_clauses(constrain_2n = onehot_xz)
    
    cnf_file = cnf_file_root + f"quokka_syn_{onehot_xz}_{indx}.cnf" # overide files to reduce spaming
    cnf_temp.write_to_file(cnf_file, syntesis_fomat=True)
    return cnf_file

def Synthesis(tool_invocation, cnf: 'CNF', cnf_file_root = tempfile.gettempdir(), fidelity_threshold = 1, bin_search=True, initial_depth=0, onehot_xz = False, computational_basis = False):
    DEBUG = False
    if DEBUG: print() 
    p = None
    it_counter = 0
    try:  
        TIMEOUT = int(os.environ["TIMEOUT"])
        if DEBUG: print(f"TIMEOUT set to: {TIMEOUT}") 
        class TimeoutException(Exception): pass 
        def timeout(signum, frame):
            if DEBUG: print(f"TIMEOUT expiered")
            if DEBUG: print(f"Run Time: {time.time()-start}")
            if p is not None:
                p.kill()
            else:
                if DEBUG: print(it_counter, end="")
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
        expected_prob = expected_prob 
        
        done = False
        bin_lb = 0
        bin_ub = None
        bin_ub_results = None
        weight = 0
        assignment = []
        qasm = ""
        num_layers = 1
        cnf_copy = copy.deepcopy(cnf)
        if initial_depth:
            cnf_copy.add_syn_layer(initial_depth)
        # QUESTION: add two synthesis layers?
        while not done:
            if DEBUG: print() 
            it_counter+=1
            if DEBUG: print(f"Global Time: {datetime.datetime.now()}")
            start = time.time()
            if DEBUG: print(f"Iteration: {it_counter}")
            if cnf.computational_basis:
                cnf_copy.add_syn_layer()
                file = identity_check(cnf_copy, cnf_file_root, it_counter, onehot_xz = onehot_xz)
                return file
            if bin_search:
                cnf_copy = copy.deepcopy(cnf)
                cnf_copy.add_syn_layer(initial_depth+num_layers)
                file = identity_check(cnf_copy, cnf_file_root, it_counter, onehot_xz = onehot_xz)
            else:
                cnf_copy.add_syn_layer()
                file = identity_check(cnf_copy, cnf_file_root, it_counter, onehot_xz = onehot_xz)
            if DEBUG: print(f"num_layers: {cnf_copy.syn_gate_layer}")
            if DEBUG: print(f"num qubits: {cnf_copy.n} + {cnf_copy.ancillas}")
            command = tool_invocation.split(' ') + ["--maxsharpsat-threshold", str(expected_prob * fidelity_threshold), "-i", file]
            if DEBUG: print(" ".join(command))
            out_file = cnf_file_root+f"d4_i{it_counter}.out"
            err_file = cnf_file_root+f"d4_i{it_counter}.err"
            res_file = cnf_file_root+f"d4_i{it_counter}.res"
            if DEBUG: print(f"Out file: {out_file}")
            if DEBUG: print(f"Err file: {err_file}")
            with open(out_file, 'w') as out:
                with open(err_file, 'w') as err:
                    p = Popen(command, stdout=out, stderr=err)
            pid = None
            err = 0
            while pid == p.pid:
                pid, err = os.wait()
            res, cerr = p.communicate()
            if err:
                return f"ERROR{err}", 0, res
            if cerr:
                return f"ERROR{cerr}", 0, res
            found, weight, assignment = get_result(out_file, expected_prob)
            if DEBUG: print(f"found:{found}, weight:{weight:.10f}")
            if weight == "CRASH":
                if DEBUG: print(err, cerr)
                return "CRASH", 0, ""
            
            qasm = cnf_copy.get_syn_qasm(assignment)
            with open(res_file, "w") as f:
                f.write(qasm)
                if DEBUG: print(f"Res file: {res_file}")

            if bin_search:
                if found:
                    bin_ub = num_layers
                    bin_ub_results = (weight, qasm)
                else: 
                    bin_lb = num_layers
                
                if DEBUG: print(f"bin_lb: {bin_lb}, bin_ub: {bin_ub}, weight: {weight}")

                if bin_lb + 1 == bin_ub:
                    if found == False:
                        weight, qasm = bin_ub_results
                    done = True

                if bin_ub:
                    num_layers = int((bin_lb + bin_ub) / 2)
                else:
                    num_layers = int(bin_lb*2)
            else:
                if found or weight > fidelity_threshold:
                    done = True
            if DEBUG: print(f"Run Time: {time.time()-start}")

        if DEBUG: print()
        if DEBUG: print(f"Global Time: {datetime.datetime.now()}")
        return "FOUND", weight, qasm

    except TimeoutException as error:
        t_found, t_weight, t_assignment = get_result(out_file, expected_prob)
        if t_found:
            return "FOUND", t_weight, cnf_copy.get_syn_qasm(t_assignment)
        if bin_ub_results:
            return str(error), bin_ub_results[0], bin_ub_results[1]
        elif weight == "CRASH":
            return str(error), weight, qasm
        else:
            if t_weight!="CRASH" and t_weight > weight:
                return str(error), t_weight, cnf_copy.get_syn_qasm(t_assignment)
            return str(error), weight, qasm