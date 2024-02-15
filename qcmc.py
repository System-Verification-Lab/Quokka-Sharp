import argparse
import math
import os
import re
import shutil
import sys
import time 
from encoding.qasm_parser import qasm_parser
from encoding.qasm2cnf import qasm2cnf
from experiment.memory import ReturnValueThread, memory_monitor
from queue import Queue
from time import sleep
from subprocess import Popen, PIPE, TimeoutExpired

def QC2SAT(qasm_file, multi_or_single):
    wmc_file = qasm_file + ".cnf"
    prep_start = time.time()
    circuit = qasm_parser(qasm_file, True)
    print("N: "+ str(circuit.n) + " Clifford: " + str(len(circuit.circ) - circuit.tgate) + " T: " + str(circuit.tgate))
    circuit.add_measurement(multi_or_single)
    cnf = qasm2cnf(circuit)
    cnf.leftProjectAllZero()
    ## Alternative to circuit.add_measurement(multi_or_single):
    # if multi_or_single:
    #     cnf.rightProjectAllZero()
    # else:
    #     cnf.rightProjectZXi(True, 0)
    cnf.write_to_file(wmc_file)
    prep_end = time.time()
    t_prep = round(prep_end - prep_start, 3)
    return t_prep

def GPMC(qasm_file, n, multi_or_single, TIMEOUT):
    gpmc_path = shutil.which("gpmc")
    if gpmc_path == None:
        sys.exit("Binary gpmc not found in path.")
    wmc_file = qasm_file + ".cnf"
    p = Popen([gpmc_path, "-mode=1", wmc_file], stdout= PIPE, stderr=PIPE)
    try:
        start_time = time.time()
        result,err = p.communicate(timeout=TIMEOUT)
        end_time = time.time()
        gpmc_time = end_time - start_time
        gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\\nc s",result)[0]
        gpmc_ans = float(gpmc_ans_str)
        if multi_or_single == "multi":
            prob = gpmc_ans / math.pow(2,int(n))
        else:
            prob = gpmc_ans/2+1/2        
        return gpmc_time, prob
    except TimeoutExpired:
        p.kill() 
        return "timeout", "-"


def main(qasm_file, multi_or_single, timeout):
    # start monitor thread for measuring mem
    queue = Queue()
    poll_interval = 0.1
    monitor_thread = ReturnValueThread(target=memory_monitor, args=(queue, poll_interval))
    monitor_thread.start()
    # wait a bit for monitor thread to start measuring mem
    sleep(.5)    
    pre_time = QC2SAT(qasm_file, multi_or_single)
    gpmc_time, prob = GPMC(qasm_file, n, multi_or_single, timeout)
    
    if gpmc_time == timeout:
        time = gpmc_time
    else:
        time = pre_time + gpmc_time
    
    queue.put('stop')
    max_rss = monitor_thread.join()
    
    print(qasm_file.split("/")[-1], 
            ' time:', time,
            ' prob:', prob,
            ' Max RSS:', max_rss / 1024 / 1024, "MB")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='QCMC: The Quantum Circuit simulator based on Model Counting from the Quokka-Sharp (Quokka#) package')
    parser.add_argument('filename')
    parser.add_argument('-m', '--measurement', choices=['firstzero', 'allzero'])
    parser.add_argument('-t', '--timeout', type=int, help="timeout in seconds")
    args = parser.parse_args()
    main(args.filename, args.measurement == 'allzero', args.timeout)