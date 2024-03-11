import argparse
import math
import re
import shutil
import sys
import time 
# from .encoding.qasm_parser import QASMparser
from .encoding.memory import ReturnValueThread, memory_monitor
from queue import Queue
from time import sleep
from subprocess import Popen, PIPE, TimeoutExpired

class Result:
    def __init__(self, time, prob, memory):
        self.time = time
        self.prob = prob
        self.memory = memory

def Sim2CNF(cnf, multi_or_single):
    cnf.leftProjectAllZero()
    if multi_or_single == "allzero":
        cnf.rightProjectAllZero()
    elif multi_or_single == "firstzero":
        cnf.rightProjectZXi(True, 0)
    return cnf
    
# def QC2SAT(qasm_file, multi_or_single):
#     wmc_file = qasm_file + ".cnf"
#     prep_start = time.time()
#     circuit = QASMparser(qasm_file, True)
#     cnf = QASM2CNF(circuit)
#     cnf.leftProjectAllZero()
#     ## Alternative to circuit.add_measurement(multi_or_single):
#     if multi_or_single:
#         cnf.rightProjectAllZero()
#     else:
#         cnf.rightProjectZXi(True, 0)
#     cnf.write_to_file(wmc_file)
#     prep_end = time.time()
#     t_prep = round(prep_end - prep_start, 3)
#     return [t_prep, circuit.n]

def GPMC(toolpath, wmc_file, n, multi_or_single):
    # gpmc_path = shutil.which("gpmc")
    gpmc_path = toolpath
    # if gpmc_path == None:
    #     sys.exit("Binary gpmc not found in path.")
    p = Popen([gpmc_path, "-mode=1", wmc_file], stdout= PIPE, stderr=PIPE)
    start_time = time.time()
    result,err = p.communicate()
    result = str(result)
    end_time = time.time()
    gpmc_time = end_time - start_time
    gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\\nc s",result)[0]
    gpmc_ans = float(gpmc_ans_str)
    if multi_or_single == "allzero":
        prob = gpmc_ans / math.pow(2,int(n))
    elif multi_or_single == "firstzero":
        prob = gpmc_ans/2+1/2        
    return gpmc_time, prob

def Sim(toolpath, cnf, wmc_file, multi_or_single):
    # start monitor thread for measuring mem
    queue = Queue()
    poll_interval = 0.1
    monitor_thread = ReturnValueThread(target=memory_monitor, args=(queue, poll_interval))
    monitor_thread.start()
    # wait a bit for monitor thread to start measuring mem
    sleep(.5)    
    gpmc_time, prob = GPMC(toolpath, wmc_file, cnf.n, multi_or_single)
    
    time = gpmc_time
    
    queue.put('stop')
    max_rss = monitor_thread.join()
    memory = max_rss / 1024 / 1024, "MB"
    res = Result(time, prob, memory)
    return res