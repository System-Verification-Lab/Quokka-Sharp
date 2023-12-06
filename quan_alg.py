import time
import os
import glob
import re

path = os.getcwd() + "/benchmark/algorithm"
circuit_list = glob.glob(path + "/*.qasm")
circuit_list.sort()

for qasm_file in circuit_list:
        
    prep_start = time.time()
    circ_info = os.popen('python3 qc2cnf.py ' + qasm_file).read()
    prep_end = time.time()
    t_prep = round((prep_end - prep_start) * 1000, 3)
    gpmc_path = os.getcwd() + '/tools/GPMC/bin/gpmc'
    filepath = qasm_file.split('/')
    l = len(filepath)
    wmc_file = os.getcwd() + '/tools/GPMC/example/'+ filepath[l-2] + "/" + filepath[l-1]
    result1 = os.popen(gpmc_path + " -mode=1 " + wmc_file).read()
    result2 = os.popen("/Users/meij/quizx/quizx/target/debug/measure_test " + qasm_file).read()
    gpmc_time_str = re.findall(r"Real.time.*s",result1)[0]
    gpmc_ans = (float(re.findall(r"exact.*",result1)[0].split(' ')[3]) + 1)/2
    gpmc_time = round(float(re.findall(r"[-+]?(?:\d*\.*\d+)", gpmc_time_str)[0]) * 1000, 3)
    
    # zx_time_str = re.findall(r"time.*$",result2)[0]
    # zx_ans = re.findall(r"re.*,",result2)[0]
    # zx_time = re.findall(r"[-+]?(?:\d*\.*\d+)", zx_time_str)[0]
    print(filepath[l-1], circ_info)
    print(" t_prep: " + str(t_prep) + " gpmc: " + str(gpmc_time))
    print(result2)