import copy
import re, os
from subprocess import Popen, PIPE, TimeoutExpired
import tempfile
from decimal import Decimal, getcontext

# Importing necessary configurations
from .config import CONFIG
from .encoding.cnf import CNF
from .utils.utils import parse_wmc_result

# Global constants from config
DEBUG           = CONFIG["DEBUG"]
TIMEOUT         = CONFIG["TIMEOUT"]
tool_invocation = CONFIG["ToolInvocation"]
get_result      = CONFIG["GetResult"]
FPE             = CONFIG["FPE"]
precision       = CONFIG["Precision"]

getcontext().prec = precision


def WMC(wmc_file, square):
    """
    Parse the output of WMC to get the weighted model counting result
    Args:
        wmc_file          :  the path to the encoded WMC file
        square            :  when the value is true get the modulus square root of the output
    Returns:
        result           :  the probability of the circuit
    """
    global tool_invocation
    tool_invocation = tool_invocation.split(' ')
    tool_invocation.append(wmc_file)
    p = Popen(tool_invocation, stdout=PIPE)
    try: 
        result = p.communicate(timeout = TIMEOUT)
        return parse_wmc_result(result, square)
    except TimeoutExpired:
        os.system("kill -9 " + str(p.pid))
        return "TIMEOUT"


def Simulate(cnf: "CNF", cnf_file_root = tempfile.gettempdir()):
    """
    Simulate a quantum circuit and give the corresponding probability
    Args:
        cnf         :  the encoded cnf of the given circuit
    Returns:
        result      :  the probability of the circuit
    """
    if cnf.weighted:
        filename = os.path.join(cnf_file_root, "for_sim.cnf")
        cnf.write_to_file(filename)
        result = WMC(filename, square = cnf.square_result)
        if result != "TIMEOUT":
            result = Decimal(result) * (Decimal(1/2)**Decimal(cnf.power_two_normalisation))
        return result
    else:
        sum_results = 0
        for c in ["r", "i"] if cnf.computational_basis else ["r"]:
            complex_sum = 0
            for s in ["p", "m"]:
                for t in ["e", "o"]:
                    filename = os.path.join(cnf_file_root, "for_sim.cnf")
                    if DEBUG: print(c,s,t)
                    cnf_copy = copy.deepcopy(cnf)
                    if cnf.computational_basis:
                        cnf_copy.add_clause([-cnf.vars.i] if (c == "r") else [cnf.vars.i], comment="copmplex")
                    cnf_copy.add_clause([-cnf.vars.r] if (s == "p") else [cnf.vars.r], comment="sign")
                    cnf_copy.add_clause([-cnf.vars.u] if (t == "e") else [cnf.vars.u], comment="sqrt2 norm")
                    
                    cnf_copy.write_to_file(filename)
                    result = WMC(filename, square = False)
                    if result == "TIMEOUT":
                        return result
                    
                    if DEBUG: print(f"   initial: {result}")
                    if s == "m":
                        result = -result
                    
                    if t == "e":
                        result = Decimal(result) * (Decimal(1/2)**Decimal(cnf.power_two_normalisation))
                        if DEBUG: print(f"   fixed: {result} (/{cnf.power_two_normalisation})")
                    else:
                        result = Decimal(result) * (Decimal(1/2)**Decimal(cnf.power_two_normalisation-0.5))
                        if DEBUG: print(f"   fixed: {result} (/{cnf.power_two_normalisation-0.5})")

                    complex_sum += result
            sum_results += complex_sum * complex_sum
        if not cnf.square_result:
            sum_results = sum_results.sqrt()
        if DEBUG: print(f"  sum_results: {sum_results}")
        return sum_results