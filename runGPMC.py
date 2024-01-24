from random_circ_qasm import *
import os
import glob
import re
import time
import math
from settings import *
from settings import GPMC_PATH
from subprocess import Popen, PIPE, TimeoutExpired
from queue import Queue, Empty
from resource import getrusage, RUSAGE_SELF
from time import sleep
from threading import Thread


class ReturnValueThread(Thread):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.result = None

    def run(self):
        if self._target is None:
            return  # could alternatively raise an exception, depends on the use case
        try:
            self.result = self._target(*self._args, **self._kwargs)
        except Exception as exc:
            print(f'{type(exc).__name__}: {exc}', file=sys.stderr)  # properly handle the exception

    def join(self, *args, **kwargs):
        super().join(*args, **kwargs)
        return self.result

def memory_monitor(command_queue: Queue, poll_interval=1):
    old_max = 0
    while True:
        try:
            command_queue.get(timeout=poll_interval)
            return max_rss
        except Empty:
            max_rss = getrusage(RUSAGE_SELF).ru_maxrss
            if max_rss > old_max:
                old_max = max_rss
                # print(datetime.now(), 'max RSS', max_rss / 1024 / 1024, "MB")
def QC2SAT(qasm_file ,multi_or_single):
    filepath = qasm_file.split('/')
    l = len(filepath)
    folder = filepath[l-3] + "/" + filepath[l-2]
    filename = filepath[l-1]
    if os.path.isdir(GPMC_PATH + '/example/' + folder):
        shutil.rmtree(GPMC_PATH + '/example/' + folder)
    os.mkdir(GPMC_PATH + '/example/' + folder)
    wmc_file = GPMC_PATH + '/example/'+ folder + '/' + filename
    prep_start = time.time()
    info = os.popen('python3 qasm2cnf.py ' + qasm_file + ' ' + wmc_file + ' ' + multi_or_single).read()
    prep_end = time.time()
    t_prep = round((prep_end - prep_start) * 1000, 3)
    info = re.split(",|\[|\]",info)
    return [t_prep, int(info[1])]

def GPMC(filename, n, multi_or_single):
    filepath = filename.split('/')
    l = len(filepath)
    filepath2 = filepath[l-3] + "/" + filepath[l-2] + "/" + filepath[l-1]
    gpmc_path = GPMC_PATH + '/bin/gpmc'
    wmc_file = GPMC_PATH + '/example/'+ filepath2
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