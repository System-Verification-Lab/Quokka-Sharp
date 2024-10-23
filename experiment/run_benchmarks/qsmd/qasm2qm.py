from collections import Counter
import linecache
import os
from datetime import datetime
from queue import Queue, Empty
from resource import getrusage, RUSAGE_SELF
from threading import Thread
from time import sleep

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


import quasimodo
import time
import argparse
from math import pi

def interpreter_quasimodo(args):

    circuit = qasm_parser(args.filename, False)
    print(args.filename)
    # print(circuit)
    gates = circuit.circ
    n = circuit.n
    m = circuit.depth()

    # GHZ
    qc = quasimodo.QuantumCircuit("CFLOBDD", n, args.seed)

    for t in range(m):
        element = gates[t]
        gate = element[0]
        if gate == 'h':
            k = int(element[1]) - 1
            qc.h(k)
        elif gate == 'x':
            k = int(element[1]) - 1
            qc.x(k)
        elif gate == 'y':
            k = int(element[1]) - 1
            qc.y(k)
        elif gate == 'z':
            k = int(element[1]) - 1
            qc.z(k)
        elif gate == 'cx':
            j = int(element[1]) - 1
            k = int(element[2]) - 1
            qc.cx(j,k)
        elif gate == 'ccx':
            j = int(element[1]) - 1
            k = int(element[2]) - 1
            l = int(element[3]) - 1
            qc.ccx(j,k,l)
        elif gate == 's':
            k = int(element[1]) - 1
            qc.s(k)
        elif gate == 'sdg':
            k = int(element[1]) - 1
            qc.z(k)
            qc.s(k)
        elif gate == 'tdg':
            k = int(element[1]) - 1
            qc.t(k)
            qc.z(k)
            qc.x(k)
        elif gate == 't':
            k = int(element[1]) - 1
            qc.t(k)
        elif 'rx' in gate:
            theta = element[0].split("(")[1].rstrip(")")
            theta = convert_to_float(theta) / math.pi
            k = int(element[1]) - 1
            qc.h(k)
            qc.p(k, theta)
            qc.h(k)
        elif 'rz' in gate:
            theta = element[0].split("(")[1].rstrip(")")
            theta = convert_to_float(theta) / math.pi
            k = int(element[1]) - 1
            qc.p(k, theta)
        elif gate == 'm':
            a = 1
        else:
            sys.exit('Unknown gate: '+ element[0])
    
    b = dict()
    if args.measurement == 'firstzero' or args.measurement == None:
        b[0] = 0
    elif args.measurement == 'allzero':
        for i in range(0, n):
            b[i] = 0
    else:
        parser.exit(args.measurement)
    p = qc.prob(b)

    return p

def main(args):
    # start monitor thread for measuring mem
    queue = Queue()
    poll_interval = 0.1
    monitor_thread = ReturnValueThread(target=memory_monitor, args=(queue, poll_interval))
    monitor_thread.start()
    # wait a bit for monitor thread to start measuring mem
    sleep(.5)
    
    # start quasimodo interpreter
    start = time.time()
    p = interpreter_quasimodo(args)
    end = time.time()
    
    # stop monitor thread for measuring mem
    queue.put('stop')
    max_rss = monitor_thread.join()
    print(args.filename.split("/")[-1], args.seed,
            ' time:', (end - start),
            ' prob:', p,
            ' Max RSS:', max_rss / 1024 / 1024, "MB")



import sys, io
import argparse
import math
from qasm_parser import qasm_parser
# from qasm2cnf import convert_to_float

def convert_to_float(frac_str):
    sign = 0
    if "-" in frac_str:
        sign = 1
        frac_str = frac_str.replace("-",'')
    try:
        return float(frac_str)
    except:
        try:
            num, denom = frac_str.split('/')
        except:
            num = frac_str.split('/')[0]
            denom = 1
        piflag = 0
        denom = float(denom)
        if num == "pi":
            piflag = 1
            num = 1
        elif "pi" in num:
            piflag = 1
            num = num.replace("pi",'')
            num = num.replace("*",'')
            num = float(num)
        if piflag == 1:
            return math.pow(-1,sign) * num / denom * math.pi
        else:
            return math.pow(-1,sign) * num / denom

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate CFLOBDD python binding code.')
    parser.add_argument('filename')
    parser.add_argument('-s', '--seed', default=1)
    parser.add_argument('-m', '--measurement', choices=['firstzero', 'allzero'])
    args = parser.parse_args()
    main(args)