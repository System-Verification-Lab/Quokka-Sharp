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

def ZX(filename, multi_or_single):
    if multi_or_single == "multi":
        result = os.popen(QuiZX_PATH_multi + ' ' + filename).read() 
    else:
        result = os.popen(QuiZX_PATH_single + ' ' + filename).read()
    print(result)
    # zx_time_str = re.findall(r"tall.*$",result)[0]
    # zx_time = re.findall(r"[-+]?(?:\d*\.*\d+)", zx_time_str)[0]
    # if "ms" in zx_time_str:
    #     return float(zx_time)
    # else:
    #     return float(zx_time) * 1000
    return 0

def main(qasm_file, multi_or_single):
    # start monitor thread for measuring mem
    queue = Queue()
    poll_interval = 0.1
    monitor_thread = ReturnValueThread(target=memory_monitor, args=(queue, poll_interval))
    monitor_thread.start()
    # wait a bit for monitor thread to start measuring mem
    sleep(.5)    
    zx_time = ZX(qasm_file, multi_or_single)
    
    queue.put('stop')
    max_rss = monitor_thread.join()
    
    print(qasm_file.split("/")[-1], 
            # ' time:', (zx_time),
            # ' prob:', prob,
            ' Max RSS:', max_rss / 1024 / 1024, "MB")
    
if __name__ == "__main__":
    main(sys.argv[1],sys.argv[2])