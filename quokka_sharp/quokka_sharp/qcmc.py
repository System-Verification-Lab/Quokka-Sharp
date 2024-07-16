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
    filename = "temp_for_sim.cnf"
    cnf.write_to_file(filename)
    result = GPMC(toolpath, filename)
    if cnf.square_result and result != "TIMEOUT":
        result = result * result
    return result