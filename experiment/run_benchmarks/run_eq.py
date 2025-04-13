import quokka_sharp as qk
from queue import Queue
from time import sleep, time
from memory import ReturnValueThread, memory_monitor
import argparse

def main(args):

    qasmfile1       = args.filename1
    qasmfile2       = args.filename2
    tool_path       = '../../../GPMC/bin/gpmc -mode=1'
    basis           = args.basis
    
    # start monitor thread for measuring mem
    queue = Queue()
    poll_interval = 0.1
    monitor_thread = ReturnValueThread(target=memory_monitor, args=(queue, poll_interval))
    monitor_thread.start()
    # wait a bit for monitor thread to start measuring mem
    sleep(.5)
    start_time = time()
    
    try:
        # Parse the circuit
        circuit1 = qk.encoding.QASMparser(qasmfile1, True)
        # Parse another circuit
        circuit2 = qk.encoding.QASMparser(qasmfile2, True)
        # Get (circuit1)^dagger(circuit2)
        circuit2.dagger()
        circuit1.append(circuit2)
        # Get CNF for the merged circuit (for computational base instaed of cliffordt, use `computational_basis = True`)
        cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = (basis == "comp"))
        # "id" or "2n"
        res = qk.CheckEquivalence(tool_path, cnf, check = "cyclic" if (basis == "comp") else "linear", N = 1 if (basis == "comp") else 16)
    except FileNotFoundError:
        res = "FILE_NOT_FOUND"
    

    # if res == "TIMEOUT": res = 99999
    end_time = time()
    queue.put('stop')
    max_rss = monitor_thread.join()
    max_rss = str(max_rss / 1024) + "MB"
    filename1 = qasmfile1.split("/")[-1]
    filename2 = qasmfile2.split("/")[-1]
    s = '{' + f'"file1": "{filename1}", "file2": "{filename2}", "time": "{end_time - start_time}", "res": "{res}"' + '}'
    print(s)
    

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Check equality of quantum circuits with WMC')
    parser.add_argument('filename1')
    parser.add_argument('filename2')
    parser.add_argument('-b', '--basis', choices=['comp', 'pauli'])
    args = parser.parse_args()
    main(args)

        
