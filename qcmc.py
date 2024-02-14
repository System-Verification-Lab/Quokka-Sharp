
import math
import os
import re
import shutil
import sys
import time 
from encoding.qasm2cnf import qasm2cnf
from settings import *
from queue import Queue
from time import sleep
from experiment.memory import ReturnValueThread, memory_monitor

def QC2SAT(qasm_file ,multi_or_single):
    wmc_file = qasm_file + ".cnf"
    prep_start = time.time()
    circuit = qasm2cnf(qasm_file, wmc_file, multi_or_single)
    prep_end = time.time()
    t_prep = round((prep_end - prep_start) * 1000, 3)
    return [t_prep, circuit.n]

def GPMC(qasm_file, n, multi_or_single):
    gpmc_path = shutil.which("gpmc")
    if gpmc_path == None:
        sys.exit("Binary gpmc not found in path.")
    wmc_file = qasm_file + ".cnf"
    result = os.popen(gpmc_path + " -mode=1 " + wmc_file).read()
    gpmc_time_str = re.findall(r"Real.time.*s",str(result))[0]
    gpmc_time = round(float(re.findall(r"[-+]?(?:\d*\.*\d+)", gpmc_time_str)[0]) * 1000, 3)
    gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\n",result)[0]
    if "e-" in gpmc_ans_str == 2: # deal with exact: -8.72889813224858e-09
        gpmc_ans = 0
    elif "e+" in gpmc_ans_str:
        gpmc_ans = float(gpmc_ans_str)
    # mem_str = re.findall(r"Memory.used.*", str(result))[0]
    else: 
        gpmc_ans = (float(re.findall(r"[-+]?(?:\d*\.*\d+)", gpmc_ans_str)[0]))
    if multi_or_single == "multi":
        prob = gpmc_ans / math.pow(2,int(n))
    else:
        prob = gpmc_ans/2+1/2        
    # print("The running time of GPMC is " + str(gpmc_time) + "ms" + " " + mem_str)
    return gpmc_time, prob

def main(qasm_file, multi_or_single):
    # start monitor thread for measuring mem
    queue = Queue()
    poll_interval = 0.1
    monitor_thread = ReturnValueThread(target=memory_monitor, args=(queue, poll_interval))
    monitor_thread.start()
    # wait a bit for monitor thread to start measuring mem
    sleep(.5)    
    pre_time, n = QC2SAT(qasm_file, multi_or_single)
    gpmc_time, prob = GPMC(qasm_file, n, multi_or_single)
    
    queue.put('stop')
    max_rss = monitor_thread.join()
    
    print(qasm_file.split("/")[-1], 
            ' time:', (pre_time + gpmc_time),
            ' prob:', prob,
            ' Max RSS:', max_rss / 1024 / 1024, "MB")
    
if __name__ == "__main__":
    main(sys.argv[1],sys.argv[2])