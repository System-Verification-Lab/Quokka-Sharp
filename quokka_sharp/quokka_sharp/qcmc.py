import copy
import re, os, sys
from subprocess import Popen, PIPE, TimeoutExpired

from .encoding.cnf import CNF
from decimal import Decimal, getcontext
getcontext().prec = 32

def GPMC(tool_invocation, wmc_file):
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
        gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\\nc s",result)[0]
        gpmc_ans_str = gpmc_ans_str.replace("\\n", "").replace(" ", "").replace("i", "j")
        gpmc_ans = complex(gpmc_ans_str)
        real, imag = Decimal(gpmc_ans.real), Decimal(gpmc_ans.imag)
        if abs(real) < 1e-16 and abs(imag) < 1e-16:
            gpmc_ans = 0
        return (real*real + imag*imag).sqrt()
    except TimeoutExpired:
        os.system("kill -9 " + str(p.pid))
        return "TIMEOUT"

def Simulate(toolpath, cnf: "CNF"):
    DEBUG = False
    if cnf.weighted:
        filename = "temp_for_sim.cnf"
        cnf.write_to_file(filename)
        result = GPMC(toolpath, filename)
        if result != "TIMEOUT":
            if cnf.square_result:
                result = result * result
            result = result * (Decimal(1/2)**Decimal(cnf.power_two_normalisation))
        return result
    else:
        sum_results = 0
        for s in ["p", "m"]:
            for t in ["e", "o"]:
                filename = f"temp_for_sim.cnf"
                if DEBUG: print(filename)
                cnf_copy = copy.deepcopy(cnf)
                if s == "p":
                    cnf_copy.add_clause([-cnf.vars.r])
                else:
                    cnf_copy.add_clause([cnf.vars.r])
                if t == "e":
                    cnf_copy.add_clause([-cnf.vars.u])
                else:
                    cnf_copy.add_clause([cnf.vars.u])
                
                cnf_copy.write_to_file(filename)
                result = GPMC(toolpath, filename)
                if result == "TIMEOUT":
                    return result
                
                if DEBUG: print(f"initial: {result}")
                if s == "m":
                    result = -result
                
                if t == "e":
                    result = result * (Decimal(1/2)**Decimal(cnf.power_two_normalisation))
                else:
                    result = result * (Decimal(1/2)**Decimal(cnf.power_two_normalisation-0.5))

                sum_results += result
                if DEBUG: print(f"fixed: {result} (num tgates: {cnf.circuit.tgate})")
                if DEBUG: print(f"sum_results: {sum_results}")
                
        return sum_results