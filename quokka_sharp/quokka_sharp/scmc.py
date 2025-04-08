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

def get_result(result_file, expexted_prob, abs_value):
    ''' return (found, weight, assignment)'''

    with open(result_file, 'r') as file:
        result_str = file.read()

    if re.findall(r"s UNSAT",result_str):
        return (False, 0, [])
    
    # get weight
    weight_regex = r"-?[0-9\.\s+\-i]+"
    if re.findall(r"r SATISFIABLE",result_str):
        weight = re.findall(r"s " + weight_regex,result_str)
    else:
        weight = re.findall(r"[okt] " + weight_regex,result_str)
        if not weight: 
            return (False, "CRASH", [])
    # get assignment 
    assignment = re.findall(r"v [0-9\s\-]+ 0",result_str)

    assert len(weight) == 1

    weight = weight[0][2:].replace("\\n", "").replace(" ", "").replace("i", "j").replace("+-", "-")
    weight = complex(weight)
    real_w, imag_w = Decimal(weight.real), Decimal(weight.imag)
    if abs_value:
        weight = (abs(real_w)**2 + abs(imag_w)**2).sqrt()
    else:
        weight = real_w
    if assignment:
        assert len(assignment) == 1
        assignment = assignment[0].split(" ")
        assert assignment[0] == "v"
        assert assignment[-1] == "0"
        assignment = assignment[1:-1]

    expexted_w = Decimal(expexted_prob)
    print(f"achived: {weight}/{expexted_w}")
    prec = weight/expexted_w
    return (prec > (1-1e-12), prec, assignment)
    
def identity_check(cnf:'CNF', cnf_file_root, files_prefix, indx, onehot_xz = False):
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.add_identity_clauses(constrain_2n = onehot_xz)
    
    cnf_file = cnf_file_root + f"{files_prefix}_{indx}_quokka_syn.cnf" # overide files to reduce spaming
    cnf_temp.write_to_file(cnf_file, syntesis_fomat=True)
    return cnf_file

def Synthesis(tool_invocation, cnf: 'CNF', cnf_file_root = tempfile.gettempdir(), fidelity_threshold = 1, bin_search=True, initial_depth=0, onehot_xz = False, h_sandwich = False):
    DEBUG = True
    if DEBUG: print() 
    if DEBUG: print(f"fidelity_threshold:{fidelity_threshold}, onehot_xz:{onehot_xz}") 
    p = None
    it_counter = 0
    try:  
        TIMEOUT = int(os.environ["TIMEOUT"])
        if DEBUG: print(f"TIMEOUT set to: {TIMEOUT}") 
        class TimeoutException(Exception): pass 
        def timeout(signum, frame):
            if DEBUG: print(f"TIMEOUT expiered")
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
            expected_abs_value = False
        elif cnf.computational_basis:
            expected_prob = 2**cnf.n
            expected_abs_value = True
        else:
            expected_prob = 4**cnf.n
            expected_abs_value = True
        expected_prob = expected_prob 
        
        done = False
        bin_lb = 0
        bin_ub = None
        bin_ub_results = None
        weight = 0
        assignment = []
        qasm = ""
        if bin_search:
            num_layers = 1
        cnf_copy_init = copy.deepcopy(cnf)
        if h_sandwich:
            cnf_copy_init.add_syn_layer(1, limit_gates=True, h_layer=True)
        if initial_depth:
            cnf_copy_init.add_syn_layer(initial_depth)
        cnf_copy = cnf_copy_init
        cnf_revert = cnf_copy
        skip_first = True
        while not done:
            if DEBUG: print() 
            if DEBUG: print(f"Global Time: {datetime.datetime.now()}")
            start = time.time()
            if DEBUG: print(f"Iteration: {it_counter}")
            files_prefix = (("onehotXZ" if onehot_xz else "fullP") if not cnf.computational_basis else "comp") + "_" + ("HSan" if h_sandwich else "Reg") 

            if bin_search:
                it_counter+=1
                cnf_copy = copy.deepcopy(cnf_copy_init)
                cnf_copy.add_syn_layer(num_layers, limit_gates=h_sandwich, h_layer=False)
                cnf_copy.add_syn_layer(1, limit_gates=h_sandwich, h_layer=True)
                file = identity_check(cnf_copy, cnf_file_root, files_prefix, it_counter, onehot_xz = onehot_xz)
            else:
                if h_sandwich:
                    cnf_copy = cnf_revert
                if skip_first:
                    skip_first = False
                else:
                    cnf_copy.add_syn_layer()
                    it_counter+=1
                if h_sandwich:
                    cnf_revert = copy.deepcopy(cnf_copy)
                    cnf_copy.add_syn_layer(1, limit_gates=h_sandwich, h_layer=True)
                file = identity_check(cnf_copy, cnf_file_root, files_prefix, it_counter, onehot_xz = onehot_xz)

            if DEBUG: print(f"num_layers: {cnf_copy.syn_gate_layer}")
            if DEBUG: print(f"num qubits: {cnf_copy.n} + {cnf_copy.ancillas}")
            command = (tool_invocation.split(' ') + 
                       ["-i", file] + 
                       ["--complex", ("1" if cnf.computational_basis else "0")] + 
                       ["--threshold", str(expected_prob * fidelity_threshold) + (" 0" if cnf.computational_basis else "")]
                    )
            if DEBUG: print(" ".join(command))
            out_file = cnf_file_root+f"{files_prefix}_{it_counter}_d4.out"
            err_file = cnf_file_root+f"{files_prefix}_{it_counter}_d4.err"
            res_file = cnf_file_root+f"{files_prefix}_{it_counter}_d4.res"
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
            found, weight, assignment = get_result(out_file, expected_prob, abs_value=expected_abs_value)
            if DEBUG: print(f"found:{found}, weight:{weight}")
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
        return "FOUND", weight, qasm, cnf_copy.syn_gate_layer

    except TimeoutException as error:
        if DEBUG: print(f"Run Time: {time.time()-start}")
        if DEBUG: print(f"Global Time: {datetime.datetime.now()}")
        t_found, t_weight, t_assignment = get_result(out_file, expected_prob, expected_abs_value)
        if t_found:
            return "FOUND", t_weight, cnf_copy.get_syn_qasm(t_assignment), cnf_copy.syn_gate_layer
        if bin_ub_results:
            return str(error), bin_ub_results[0], bin_ub_results[1], cnf_copy.syn_gate_layer
        elif weight == "CRASH":
            return str(error), weight, qasm, cnf_copy.syn_gate_layer
        else:
            if t_weight!="CRASH" and t_weight > weight:
                return str(error), t_weight, cnf_copy.get_syn_qasm(t_assignment), cnf_copy.syn_gate_layer
            return str(error), weight, qasm, cnf_copy.syn_gate_layer