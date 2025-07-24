import os, sys
from queue import Queue
from time import sleep, time
from memory import ReturnValueThread, memory_monitor
import argparse
import re
import signal
from subprocess import Popen, PIPE

QuiZX_PATH_multi = "/Users/meij/quizx/quizx/target/debug/measure_multi"
QuiZX_PATH_single = "/Users/meij/quizx/quizx/target/debug/measure_single"

def ZX(filename, multi_or_single):
    try:
        TIMEOUT = int(os.environ["TIMEOUT"])
        class TimeoutException(Exception): pass
        def timeout(signum, frame):
            p.kill()
            raise TimeoutException("TIMEOUT")        
    except KeyError: 
        print ("Please set the environment variable TIMEOUT")
        sys.exit(1)
    try:
        signal.signal(signal.SIGALRM, timeout)
        signal.alarm(TIMEOUT) 
        if multi_or_single == "allzero":
            p = Popen([QuiZX_PATH_multi, filename], stdout= PIPE, stderr=PIPE)
        else:
            p = Popen([QuiZX_PATH_single, filename], stdout= PIPE, stderr=PIPE)
        result = p.communicate()
        prob_str = re.findall(r"re\(P\).\~.(\d*\.*\d+)",str(result))[0]
        prob = float(prob_str)
        return prob
    except TimeoutException:
        return 99999

def main(args):
    qasm_file = args.filename
    meas = args.measurement
    
    # start monitor thread for measuring mem
    queue = Queue()
    poll_interval = 0.1
    monitor_thread = ReturnValueThread(target=memory_monitor, args=(queue, poll_interval))
    monitor_thread.start()
    # wait a bit for monitor thread to start measuring mem
    sleep(.5)    
    
    start_time = time()
    prob = ZX(qasm_file, meas)
    end_time = time()
    
    queue.put('stop')
    max_rss = monitor_thread.join()
    max_rss = str(max_rss / 1024 / 1024) + "MB"
    filename = qasm_file.split("/")[-1]
    s = '{' + f'"file": "{filename}", "time": "{end_time - start_time}", "prob": "{prob}", "Max RSS": "{max_rss}"' + '}'
    print(s)
    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Simulating quantum circuits with QuiZX')
    parser.add_argument('filename')
    parser.add_argument('-m', '--measurement', choices=['firstzero', 'allzero'])
    args = parser.parse_args()
    main(args)