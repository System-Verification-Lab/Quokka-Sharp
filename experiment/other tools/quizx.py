import os, sys
from queue import Queue
from time import sleep
from memory import ReturnValueThread, memory_monitor

QuiZX_PATH_multi = "/Users/meij/quizx/quizx/target/debug/measure_multi"
QuiZX_PATH_single = "/Users/meij/quizx/quizx/target/debug/measure_single"

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
            ' time:', (zx_time),
            # ' prob:', prob,
            ' Max RSS:', max_rss / 1024 / 1024, "MB")
    
if __name__ == "__main__":
    main(sys.argv[1],sys.argv[2])