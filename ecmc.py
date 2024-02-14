import re, os, sys, copy
from encoding.qc2cnf_eq import qc2cnf
from settings import GPMC_PATH
import time
from subprocess import PIPE, Popen
from queue import Queue
from experiment.memory import ReturnValueThread, memory_monitor


global qasmfile1, qasmfile2
global tab, cnf, tab_init
qasmfile1 = sys.argv[1]
qasmfile2 = sys.argv[2]
encode_start = time.time()
tab, cnf, tab_init, QUBIT, G1, G2 = qc2cnf(qasmfile1, qasmfile2)
encode_end = time.time()
encode_time = encode_end - encode_start


def EC2CNF(tab, cnf, Z_or_X, idx, init):
    x = tab.x; z = tab.z; r = tab.r; n = tab.n
    if not init:
        cnf.add_weight( r, -1)
        cnf.add_weight(-r,  1)
        # When basis is Z
    if Z_or_X == True:    
        for i in range(n):
            cnf.insert_clause([-x[i]])
            if i == idx:
                cnf.insert_clause([z[i]])
            else:
                cnf.insert_clause([-z[i]])
    else:
        for i in range(n):
            cnf.insert_clause([-z[i]])
            if i == idx:
                cnf.insert_clause([x[i]])
            else:
                cnf.insert_clause([-x[i]])

def write_cnf(cnf, cnf_file):
    with open(cnf_file, 'w') as the_file:
        the_file.writelines("p cnf " + str(cnf.var)+" "+str(cnf.clause)+"\n")
        the_file.write(cnf.weight_list.getvalue())
        for item in cnf.cons_list:
            the_file.writelines(item)

def GPMC(cnf_file):
    gpmc_path = GPMC_PATH + '/bin/gpmc'
    proc = Popen([gpmc_path, "-mode=1", cnf_file],
                    stdout= PIPE, stderr=PIPE)
    # result, error = proc.communicate()
    return proc

def get_result(result):
    result = str(result)
    gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\\nc s",result)[0]
    gpmc_ans = float(gpmc_ans_str)
    if abs(gpmc_ans - 1) > 1e-16:
        return False
    else: return True

def checker(i, Z_or_X, cnf_file):
    cnf_temp = copy.deepcopy(cnf)
    EC2CNF(tab, cnf_temp, Z_or_X, i, False)
    EC2CNF(tab_init, cnf_temp, Z_or_X, i, True)
    write_cnf(cnf_temp, cnf_file)
    proc = GPMC(cnf_file)
    return proc


def main():
    queue = Queue()
    poll_interval = 0.1
    monitor_thread = ReturnValueThread(target=memory_monitor, args=(queue, poll_interval))
    monitor_thread.start()
    # wait a bit for monitor thread to start measuring mem
    time.sleep(.5)
    result = True
    argulist = []
    for i in range(tab.n):
        argulist.append((i, True, "./benchmark/cnf/checkerZ" + str(i) + ".cnf"))
        argulist.append((i, False, "./benchmark/cnf/checkerX" + str(i) + ".cnf"))

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
    print(  ' {"time":', (end - start) + encode_time,
            ', "result":' + ' "' + str(result) + '"',
            ', "MaxRSS":', max_rss / 1024 / 1024,
            ', "N":', QUBIT, ', "G1":', G1, ', "G2":', G2, "}")
    
if __name__ == '__main__':    
    main()