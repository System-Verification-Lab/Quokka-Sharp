import re
# from .encoding.qasm_parser import QASMparser
from subprocess import Popen, PIPE

class Result:
    def __init__(self, time, prob, memory):
        self.time = time
        self.prob = prob
        self.memory = memory

def Measurement(cnf, multi_or_single):
    cnf.leftProjectAllZero()
    if multi_or_single == "allzero":
        cnf.rightProjectAllZero()
    elif multi_or_single == "firstzero":
        cnf.rightProjectZXi(True, 0)
    return cnf

def GPMC(tool_invocation, wmc_file):
    tool_invocation = tool_invocation.split(' ')
    tool_invocation.append(wmc_file)
    p = Popen(tool_invocation, stdout= PIPE, stderr=PIPE)
    result,err = p.communicate()
    result = str(result)
    gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\\nc s",result)[0]
    gpmc_ans = float(gpmc_ans_str)   
    return gpmc_ans

def Simulate(toolpath, wmc_file):
    prob = GPMC(toolpath, wmc_file)
    return prob