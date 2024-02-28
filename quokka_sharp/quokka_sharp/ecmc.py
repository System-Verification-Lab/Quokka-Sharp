import argparse
import copy
import os
import re
import shutil
import sys
import tempfile
import time
from .encoding.qasm_parser import QASMparser
from .encoding.qasm2cnf import QASM2CNF
from subprocess import PIPE, Popen
from queue import Queue
from .encoding.memory import ReturnValueThread, memory_monitor


def GPMC(cnf_file):
    # gpmc_path = shutil.which("gpmc")
    # if gpmc_path == None:
    #     sys.exit("Binary gpmc not found in path.")
    gpmc_path = TOOL_PATH
    proc = Popen([gpmc_path, "-mode=1", cnf_file], stdout= PIPE, stderr=PIPE)
    # result, error = proc.communicate()
    return proc

def get_result(result):
    result = str(result)
    gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\\nc s",result)[0]
    gpmc_ans = float(gpmc_ans_str)
    if abs(gpmc_ans - 1) > 1e-16:
        return False
    else: return True

def checker(i, Z_or_X, cnf):
    cnf_temp = copy.deepcopy(cnf)
    cnf_temp.leftProjectZXi(Z_or_X, i)
    cnf_temp.rightProjectZXi(Z_or_X, i)
    cnf_file = tempfile.gettempdir() + "/ecmc_eq_check_"+ ("Z" if Z_or_X else "X") + str(i) + ".cnf"
    cnf_temp.write_to_file(cnf_file)
    proc = GPMC(cnf_file)
    return proc

def EQ_check(toolpath, qasmfile1, qasmfile2):
    global TOOL_PATH
    TOOL_PATH = toolpath
    encode_start = time.time()

    circuit1 = QASMparser(qasmfile1, True)
    circuit2 = QASMparser(qasmfile1, True)

    if circuit1.n != circuit2.n:
            f1 = qasmfile1.split("/")[0]
            f2 = qasmfile2.split("/")[0]
            raise Exception("Different number of qubits:,"+ f1 +" has "+ circuit1.n +" while "+ f2 +" has "+ circuit2.n)
    # print("N: "+ str(circuit1.n) + " Clifford: " + str(len(circuit1.circ) - circuit1.tgate) + " T: " + str(circuit1.tgate))
    circuit1.dagger()
    circuit1.merge(circuit2)
    cnf = QASM2CNF(circuit1)

    encode_end = time.time()
    encode_time = encode_end - encode_start

    queue = Queue()
    poll_interval = 0.1
    monitor_thread = ReturnValueThread(target=memory_monitor, args=(queue, poll_interval))
    monitor_thread.start()
    # wait a bit for monitor thread to start measuring mem
    time.sleep(.5)
    result = True
    argulist = []
    for i in range(cnf.n):
        argulist.append((i, True,  cnf))
        argulist.append((i, False, cnf))

    start = time.time()
# parallel processes
    N = 16
    while True:
        proclist = []
        length = len(argulist)
        for i in range(min(N, length)):        
            argu = argulist[i]
            p = checker(argu[0], argu[1], argu[2])
            proclist.append(p)
        if len(proclist) == 0:
            break
        procdict = {proc.pid: proc for proc in proclist}
        watched_pids = set(proc.pid for proc in proclist)
        while True:
            pid, _ = os.wait()
            if pid in watched_pids:
                res = procdict[pid].communicate()
                result = get_result(res[0])
                if result == False:
                    break
                else:
                    watched_pids.remove(pid)
            if len(watched_pids) == 0:
                break

        if result == False:
            break

        if length > N:
            argulist = argulist[N: length]
        else:
            break
    
    for pid in watched_pids:
        procdict[pid].terminate()
    
    end = time.time()

    queue.put('stop')
    max_rss = monitor_thread.join()

    G1 = len(circuit1.circ)
    G2 = len(circuit2.circ)
    print(  ' {"time":', (end - start) + encode_time,
            ', "result":' + ' "' + str(result) + '"',
            ', "MaxRSS":', max_rss / 1024 / 1024,
            ', "N":', cnf.n, ', "G1":', G1, ', "G2":', G2, "}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='ECMC: The quantum circuit Equivalence Checker based on Model Counting from the Quokka-Sharp (Quokka#) package')
    parser.add_argument('toolpath')
    parser.add_argument('qasmfile1')
    parser.add_argument('qasmfile2')
    args = parser.parse_args()
    EQ_check(args.toolpath, args.qasmfile1, args.qasmfile2)
