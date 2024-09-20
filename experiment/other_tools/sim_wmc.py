import quokka_sharp as qk
from queue import Queue
import os, sys
from time import sleep, time
from memory import ReturnValueThread, memory_monitor
import argparse

def wmc(qasmfile1, tool_invocation, meas, basis): 
    # Parse the circuit
    circuit1 = qk.encoding.QASMparser(qasmfile1, True)
    # Encode the circuit
    cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = (basis == "com"))
    cnf.leftProjectAllZero()
    cnf.add_measurement(meas)
    prob = qk.Simulate(tool_invocation, cnf)
    return prob
    
def main(args):
    qasmfile        = args.filename
    tool_invocation = '/Users/meij/Desktop/coding/COM-GPMC/GPMC/bin/gpmc -mode=1'
    basis           = args.basis
    meas            = args.measurement
    # start monitor thread for measuring mem
    queue = Queue()
    poll_interval = 0.1
    monitor_thread = ReturnValueThread(target=memory_monitor, args=(queue, poll_interval))
    monitor_thread.start()
    # wait a bit for monitor thread to start measuring mem
    sleep(.5)
    
    start_time = time()
    prob = wmc(qasmfile, tool_invocation, meas, basis)
    if prob == "TIMEOUT": prob = 99999
    end_time = time()
    queue.put('stop')
    max_rss = monitor_thread.join()
    max_rss = str(max_rss / 1024 / 1024) + "MB"
    filename = qasmfile.split("/")[-1]
    s = '{' + f'"file": "{filename}", "time": "{end_time - start_time}", "prob": "{prob}", "Max RSS": "{max_rss}"' + '}'
    print(s)
    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Simulating quantum circuits with WMC')
    parser.add_argument('filename')
    parser.add_argument('-m', '--measurement', choices=['firstzero', 'allzero'], default='firstzero')
    parser.add_argument('-b', '--basis', choices=['com', 'pauli'])
    args = parser.parse_args()
    main(args)