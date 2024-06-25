import re, os, sys
from subprocess import Popen, PIPE, TimeoutExpired

from .encoding.cnf import CNF

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
        if abs(gpmc_ans) < 1e-8:
            gpmc_ans = 0
        return gpmc_ans
    except TimeoutExpired:
        os.system("kill -9 " + str(p.pid))
        return "TIMEOUT"

def Simulate(toolpath, wmc_file):
    prob = GPMC(toolpath, wmc_file)
    return prob