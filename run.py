from random_circ_qasm import *
import numpy as np
import os
import glob
import re
import matplotlib.pyplot as plt
import matplotlib.ticker as mtick
import time
import math
from settings import *
from settings import GPMC_PATH
from subprocess import Popen, PIPE, TimeoutExpired

def CircuitList(folder):
    circuit_list = glob.glob(folder + "/*")
    circuit_list.sort()
    return circuit_list

def QC2SAT(qasm_file ,multi_or_single):
    filepath = qasm_file.split('/')
    l = len(filepath)
    folder = filepath[l-3] + "/" + filepath[l-2]
    filename = filepath[l-1]
    if os.path.isdir(GPMC_PATH + '/example/' + folder):
        shutil.rmtree(GPMC_PATH + '/example/' + folder)
    os.mkdir(GPMC_PATH + '/example/' + folder)
    wmc_file = GPMC_PATH + '/example/'+ folder + '/' + filename
    prep_start = time.time()
    info = os.popen('python3 qasm2cnf.py ' + qasm_file + ' ' + wmc_file + ' ' + multi_or_single).read()
    prep_end = time.time()
    t_prep = round((prep_end - prep_start) * 1000, 3)
    info = re.split(",|\[|\]",info)
    return [t_prep, int(info[1])]

def GPMC(filename, n, multi_or_single):
    filepath = filename.split('/')
    l = len(filepath)
    filepath2 = filepath[l-3] + "/" + filepath[l-2] + "/" + filepath[l-1]
    gpmc_path = GPMC_PATH + '/bin/gpmc'
    wmc_file = GPMC_PATH + '/example/'+ filepath2
    # result = os.popen(gpmc_path + " -mode=1 " + wmc_file).read()
    p = Popen([gpmc_path, "-mode=1", wmc_file],
                        stdout= PIPE, stderr=PIPE)
    try:
        result,err = p.communicate(timeout=TIMEOUT)
        result = str(result)
        gpmc_time_str = re.findall(r"Real.time.*s",str(result))[0]
        gpmc_time = round(float(re.findall(r"[-+]?(?:\d*\.*\d+)", gpmc_time_str)[0]) * 1000, 3)
        gpmc_ans_str = re.findall(r"exact.double.prec-sci.(.+?)\\nc s",result)[0]
        # print(gpmc_ans_str)
        if "e-" in gpmc_ans_str == 2: # deal with exact: -8.72889813224858e-09
            gpmc_ans = 0
        elif "e+" in gpmc_ans_str:
            gpmc_ans = float(gpmc_ans_str)
        # mem_str = re.findall(r"Memory.used.*", str(result))[0]
        else: 
            gpmc_ans = (float(re.findall(r"[-+]?(?:\d*\.*\d+)", gpmc_ans_str)[0]))
        if multi_or_single == "multi":
            print("gpmc prop = " + str(gpmc_ans / math.pow(2,int(n))))            
        else:
            print("gpmc prop = " + str(gpmc_ans/2+1/2))
            
        # print("The running time of GPMC is " + str(gpmc_time) + "ms" + " " + mem_str)
        return gpmc_time
    except TimeoutExpired:
        p.kill() 
        print(filepath2 + " GPMC IS TIMEOUT")
        return TIMEOUT * 1000

def ZX(filename, multi_or_single):
    if multi_or_single == "multi":
        p = Popen([QuiZX_PATH_multi, filename], stdout = PIPE, stderr= PIPE)    
    else:
        p = Popen([QuiZX_PATH_single, filename], stdout = PIPE, stderr= PIPE)
    try:
        result, err = p.communicate(timeout=TIMEOUT)
        result = str(result)
        result_str = re.findall(r"re\(P\).*$",result)[0]
        print(result_str)
        zx_time_str = re.findall(r"tall.*$",result)[0]
        zx_time = re.findall(r"[-+]?(?:\d*\.*\d+)", zx_time_str)[0]
        if "ms" in zx_time_str:
            return float(zx_time)
        else:
            return float(zx_time) * 1000
    except:
        p.kill()
        print(filename + " ZX IS TIMEOUT")
        return TIMEOUT * 1000

def main(folder, multi_or_single):
    circuitlist = CircuitList(folder)
    zx_time_list = []
    gpmc_time_list = []
    succ_wmc = 0
    succ_zx = 0
    for qasm_file in circuitlist:
        print(qasm_file)
        zx_time = ZX(qasm_file, multi_or_single)
        zx_time_list.append(zx_time)
        print("zx time =" + str(zx_time))
        if zx_time < TIMEOUT * 1000:
            succ_zx += 1
        pre_time, n = QC2SAT(qasm_file, multi_or_single)
        gpmc_time = GPMC(qasm_file, n, multi_or_single)
        print("gpmc time=" + str(pre_time + gpmc_time))
        if gpmc_time == TIMEOUT * 1000: pre_time = 0
        gpmc_time_list.append(gpmc_time + pre_time)
        if gpmc_time < TIMEOUT * 1000:
            succ_wmc += 1
    zx_time_list.append(1000000)
    gpmc_time_list.append(1000000)
    print("succ_wmc: " + str(succ_wmc / 50.0) + " succ_zx: " + str(succ_zx / 50.0) + " min_wmc: " + str(min(gpmc_time_list)) + " min_zx: " + str(min(zx_time_list)))


if __name__ == "__main__":
    main(sys.argv[1],sys.argv[2])