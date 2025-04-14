import copy
import re, os, sys
from subprocess import Popen, PIPE, TimeoutExpired

from .encoding.cnf import CNF
from decimal import Decimal, getcontext
getcontext().prec = 32

global FPE
FPE = 1e-12


def GPMC(tool_invocation, wmc_file, square):
    """
    Parse the output of GPMC to get the weighted model counting result
    Args:
        tool_invocation   :  the running command of the weighted model counter
        wmc_file          :  the path to the encoded WMC file
        square            :  when the value is true get the modulus square root of the output
    Returns:
        result           :  the probability of the circuit
    """
    try:  
        TIMEOUT = int(os.environ["TIMEOUT"])
    except KeyError: 
        print ("Please set the environment variable TIMEOUT")
        sys.exit(1)
    tool_invocation = tool_invocation.split(' ')
    tool_invocation.append(wmc_file)
    p = Popen(tool_invocation, stdout=PIPE)
    try: 
        result = p.communicate(timeout = TIMEOUT)
        result = str(result)    
        gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\\nc s",result)
        if len(gpmc_ans_str) == 0:
            return "MEMOUT"
        gpmc_ans_str = gpmc_ans_str[0].replace("\\n", "").replace(" ", "").replace("i", "j")
        gpmc_ans = complex(gpmc_ans_str)
        real, imag = Decimal(gpmc_ans.real), Decimal(gpmc_ans.imag)
        if abs(real) < 1e-16 and abs(imag) < 1e-16:
            return 0
        elif abs(imag) < 1e-16:
            return real*real if square else real
        else:
            return (real*real + imag*imag) if square else (real*real + imag*imag).sqrt()
    except TimeoutExpired:
        os.system("kill -9 " + str(p.pid))
        return "TIMEOUT"


def Simulate(toolpath, cnf: "CNF"):
    """
    Simulate a quantum circuit and give the corresponding probability
    Args:
        toolpath    :  the running command of the weighted model counter
        cnf         :  the encoded cnf of the given circuit
    Returns:
        result      :  the probability of the circuit
    """
    DEBUG = False
    if cnf.weighted:
        filename = "./tmp/for_sim.cnf"
        cnf.write_to_file(filename)
        result = GPMC(toolpath, filename, square = cnf.square_result)
        if result != "TIMEOUT":
            result = result * (Decimal(1/2)**Decimal(cnf.power_two_normalisation))
        return result
    else:
        sum_results = 0
        for c in ["r", "i"] if cnf.computational_basis else ["r"]:
            complex_sum = 0
            for s in ["p", "m"]:
                for t in ["e", "o"]:
                    filename = f"./tmp/for_sim.cnf"
                    if DEBUG: print(c,s,t)
                    cnf_copy = copy.deepcopy(cnf)
                    if cnf.computational_basis:
                        cnf_copy.add_clause([-cnf.vars.i] if (c == "r") else [cnf.vars.i], comment="copmplex")
                    cnf_copy.add_clause([-cnf.vars.r] if (s == "p") else [cnf.vars.r], comment="sign")
                    cnf_copy.add_clause([-cnf.vars.u] if (t == "e") else [cnf.vars.u], comment="sqrt2 norm")
                    
                    cnf_copy.write_to_file(filename)
                    result = GPMC(toolpath, filename, square = False)
                    if result == "TIMEOUT":
                        return result
                    
                    if DEBUG: print(f"   initial: {result}")
                    if s == "m":
                        result = -result
                    
                    if t == "e":
                        result = result * (Decimal(1/2)**Decimal(cnf.power_two_normalisation))
                        if DEBUG: print(f"   fixed: {result} (/{cnf.power_two_normalisation})")
                    else:
                        result = result * (Decimal(1/2)**Decimal(cnf.power_two_normalisation-0.5))
                        if DEBUG: print(f"   fixed: {result} (/{cnf.power_two_normalisation-0.5})")

                    complex_sum += result
            sum_results += complex_sum * complex_sum
        if not cnf.square_result:
            sum_results = sum_results.sqrt()
        if DEBUG: print(f"  sum_results: {sum_results}")
        return sum_results