import re, os, sys, copy
from encoding.qc2cnf_eq import qc2cnf
from settings import GPMC_PATH
import time
from multiprocessing import Pool
from subprocess import PIPE, Popen
from queue import Queue
from memory import ReturnValueThread, memory_monitor
from multiprocessing.pool import ThreadPool


global qasmfile1, qasmfile2
global tab, cnf, tab_init
qasmfile1 = sys.argv[1]
qasmfile2 = sys.argv[2]
encode_start = time.time()
tab, cnf, tab_init = qc2cnf(qasmfile1, qasmfile2)
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
    result, error = proc.communicate()
    result = str(result)
    gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\\nc s",result)[0]
    gpmc_ans = float(gpmc_ans_str)
    if abs(gpmc_ans) < 0.00000001:
        gpmc_ans = 0
    return gpmc_ans

def checker(i, Z_or_X, cnf_file):
    cnf_temp = copy.deepcopy(cnf)
    EC2CNF(tab, cnf_temp, Z_or_X, i, False)
    EC2CNF(tab_init, cnf_temp, Z_or_X, i, True)
    write_cnf(cnf_temp, cnf_file)
    prob = GPMC(cnf_file)
    if abs(prob - 1) > 1e-10:
        return False
    else: return True

def main():
    queue = Queue()
    poll_interval = 0.1
    monitor_thread = ReturnValueThread(target=memory_monitor, args=(queue, poll_interval))
    monitor_thread.start()
    # wait a bit for monitor thread to start measuring mem
    time.sleep(.5)
    result = True
    argu = []
    for i in range(tab.n):
        argu.append((i, True, "./cnf/checkerZ" + str(i) + ".cnf"))
        argu.append((i, False, "./cnf/checkerX" + str(i) + ".cnf"))

    start = time.time()
    # with Pool(8) as pool:
    #     for res in pool.starmap(checker, argu):
    #         if res == False:
    #             result = res
    #             pool.terminate()
    #             break

    with ThreadPool(8) as pool:
        for res in pool.starmap(checker, argu):
            if res == False:
                result = False
                pool.terminate()
  
    # for i in range(tab.n):
    #     if not checker(i, True, "./cnf/checkerZ" + str(i) + ".cnf"):
    #         result = False
    #         break
    #     if not checker(i, False, "./cnf/checkerX" + str(i) + ".cnf"):
    #         result = False
    #         break
        
    end = time.time()

    queue.put('stop')
    max_rss = monitor_thread.join()
    print(  ' time:', (end - start) + encode_time,
            ' result:', result,
            ' Max RSS:', max_rss / 1024 / 1024, "MB")
    
if __name__ == '__main__':    
    main()