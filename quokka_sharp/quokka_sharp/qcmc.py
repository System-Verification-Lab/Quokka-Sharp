import argparse
import math
import re
import shutil
import sys
import time 
from .encoding.qasm_parser import QASMparser
from .encoding.qasm2cnf import QASM2CNF
from .encoding.memory import ReturnValueThread, memory_monitor
from queue import Queue
from time import sleep
from subprocess import Popen, PIPE, TimeoutExpired

def QC2SAT(qasm_file, multi_or_single):
    wmc_file = qasm_file + ".cnf"
    prep_start = time.time()
    circuit = QASMparser(qasm_file, True)
    circuit.add_measurement(multi_or_single)
    cnf = QASM2CNF(circuit)
    cnf.leftProjectAllZero()
    ## Alternative to circuit.add_measurement(multi_or_single):
    # if multi_or_single:
    #     cnf.rightProjectAllZero()
    # else:
    #     cnf.rightProjectZXi(True, 0)
    cnf.write_to_file(wmc_file)
    prep_end = time.time()
    t_prep = round(prep_end - prep_start, 3)
    return [t_prep, circuit.n]

def GPMC(toolpath, qasm_file, n, multi_or_single):
    # gpmc_path = shutil.which("gpmc")
    gpmc_path = toolpath
    # if gpmc_path == None:
    #     sys.exit("Binary gpmc not found in path.")
    wmc_file = qasm_file + ".cnf"
    p = Popen([gpmc_path, "-mode=1", wmc_file], stdout= PIPE, stderr=PIPE)
    start_time = time.time()
    result,err = p.communicate()
    result = str(result)
    end_time = time.time()
    gpmc_time = end_time - start_time
    gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\\nc s",result)[0]
    gpmc_ans = float(gpmc_ans_str)
    if multi_or_single == "multi":
        prob = gpmc_ans / math.pow(2,int(n))
    else:
        prob = gpmc_ans/2+1/2        
    return gpmc_time, prob


def Measure(toolpath, qasm_file, multi_or_single):
    # start monitor thread for measuring mem
    queue = Queue()
    poll_interval = 0.1
    monitor_thread = ReturnValueThread(target=memory_monitor, args=(queue, poll_interval))
    monitor_thread.start()
    # wait a bit for monitor thread to start measuring mem
    sleep(.5)    
    encode_time, n = QC2SAT(qasm_file, multi_or_single)
    gpmc_time, prob = GPMC(toolpath, qasm_file, n, multi_or_single)
    
    time = encode_time + gpmc_time
    
    queue.put('stop')
    max_rss = monitor_thread.join()
    
    print(qasm_file.split("/")[-1], 
            ' time:', time,
            ' prob:', prob,
            ' Max RSS:', max_rss / 1024 / 1024, "MB")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='QCMC: The Quantum Circuit simulator based on Model Counting from the Quokka-Sharp (Quokka#) package')
    parser.add_argument('toolpath')
    parser.add_argument('filename')
    parser.add_argument('-m', '--measurement', choices=['firstzero', 'allzero'])
    args = parser.parse_args()
    Measure(args.toolpath, args.filename, args.measurement == 'allzero')