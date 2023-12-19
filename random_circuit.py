import numpy as np
import os
import glob
import re
import matplotlib.pyplot as plt
import matplotlib.ticker as mtick
import time
import threading
from settings import *
from Tableau import *
from random_circ_qasm import *

class RunWithTimeout(object):
    def __init__(self, function, args):
        self.function = function
        self.args = args
        self.answer = TIMEOUT * 1000.0

    def worker(self):
        self.answer = self.function(self.args)

    def run(self, timeout):
        thread = threading.Thread(target=self.worker)
        thread.start()
        thread.join(timeout)
        return self.answer

def CircuitList(folder):
    circuit_list = glob.glob(folder + "/*.qasm")
    circuit_list.sort()
    return circuit_list

def QC2SAT(qasm_file):
    
    filepath = qasm_file.split('/')
    l = len(filepath)
    filepath2 = filepath[l-3] + "/" + filepath[l-2] + "/" + filepath[l-1]
    wmc_file = GPMC_PATH + '/example/'+ filepath2
    prep_start = time.time()   
    circ_info = os.popen('python3 qc2cnf.py ' + qasm_file + ' ' + wmc_file).read()
    print(circ_info)
    prep_end = time.time()
    t_prep = round((prep_end - prep_start) * 1000, 3)
    return t_prep

def GPMC(filename):
    filepath = filename.split('/')
    l = len(filepath)
    filepath2 = filepath[l-3] + "/" + filepath[l-2] + "/" + filepath[l-1]
    gpmc_path = GPMC_PATH + '/bin/gpmc'
    wmc_file = GPMC_PATH + '/example/'+ filepath2
    result = os.popen(gpmc_path + " -mode=1 " + wmc_file).read()
    gpmc_time_str = re.findall(r"Real.time.*s",result)[0]
    gpmc_time = round(float(re.findall(r"[-+]?(?:\d*\.*\d+)", gpmc_time_str)[0]) * 1000, 3)
    gpmc_ans = (float(re.findall(r"exact.*",result)[0].split(' ')[3]) + 1)/2
    print(filepath2)
    print("The resulting probability by GPMC is " + str(gpmc_ans))
    print("The running time of GPMC is " + str(gpmc_time) + "ms")
    return gpmc_time

def GPMCRun(qubit, gate, step, ProbT, Qubit_or_Gate, RepeatedTimes):
    gpmc_list_all = []
    for _ in range(RepeatedTimes):
        if Qubit_or_Gate == 1:
            folder = QubitScale(qubit[0],qubit[1], step, gate, ProbT)
        else:
            folder = GateScale(qubit, gate[0], gate[1], step, ProbT)
        circuitlist = CircuitList(folder)
        gpmc_time_list = []
        for qasm_file in circuitlist:
            pre_time = QC2SAT(qasm_file)
            pgpmc = RunWithTimeout(GPMC,qasm_file)
            gpmc_time = pgpmc.run(TIMEOUT)
            if gpmc_time == 10000: pre_time = 0
            gpmc_time_list.append(gpmc_time + pre_time)
        gpmc_list_all.append(gpmc_time_list)
    n = len(gpmc_list_all)
    m = len(gpmc_list_all[0])
    gpmc_list_res = np.array([])
    for j in range(m):
        s = 0
        for i in range(n):
            s += gpmc_list_all[i][j]
        gpmc_list_res = np.append(gpmc_list_res,s/n)
    return gpmc_list_res

def ZX(filename):
    result = os.popen(QuiZX_PATH + " " + filename).read()
    print(result)
    # zx_time_str = re.findall(r"tall.*$",result)[0]
    # zx_time = re.findall(r"[-+]?(?:\d*\.*\d+)", zx_time_str)[0]
    # print(filename)
    # print(result)
    # if "ms" in zx_time_str:
    #     return float(zx_time)
    # else:
    #     return float(zx_time) * 1000

def ZXRun(qubit, gate, step, ProbT, Qubit_or_Gate, RepeatedTimes):
    zx_list_all = []
    for _ in range(RepeatedTimes):
        if Qubit_or_Gate == 1:
            folder = QubitScale(qubit[0],qubit[1], step, gate, ProbT)
        else:
            folder = GateScale(qubit, gate[0], gate[1], step, ProbT)
        circuitlist = CircuitList(folder)
        zx_time_list = []
        for qasm_file in circuitlist:
            pzx = RunWithTimeout(ZX, qasm_file)
            zx_time = pzx.run(TIMEOUT)
            zx_time_list.append(zx_time)
        zx_list_all.append(zx_time_list)
    n = len(zx_list_all)
    m = len(zx_list_all[0])
    zx_list_res = np.array([])
    for j in range(m):
        s = 0.0
        for i in range(n):
            s += zx_list_all[i][j]
        zx_list_res = np.append(zx_list_res,s/n)
    return zx_list_res

def QubitScalePlot(figname, n_start, n_end, n_step, ProbT, RepeatedTime):
    wmctimelist_30 = GPMCRun([n_start, n_end], 30, n_step, ProbT, 1, RepeatedTime)
    wmctimelist_40 = GPMCRun([n_start, n_end], 40, n_step, ProbT, 1, RepeatedTime)
    wmctimelist_50 = GPMCRun([n_start, n_end], 50, n_step, ProbT, 1, RepeatedTime)
    zxtimelist_30 = ZXRun([n_start, n_end], 30, n_step, ProbT, 1, RepeatedTime)
    zxtimelist_40 = ZXRun([n_start, n_end], 40, n_step, ProbT, 1, RepeatedTime)
    zxtimelist_50 = ZXRun([n_start, n_end], 50, n_step, ProbT, 1, RepeatedTime)        
    fig = plt.figure()
    ax = fig.add_subplot(1,1,1)
    ax.plot([*range(n_start, n_end + 1, n_step)], wmctimelist_30, label='DEPTH = 30, WMC', marker = 'o', color = 'red')  
    ax.plot([*range(n_start, n_end + 1, n_step)], zxtimelist_30, label='DEPTH = 30, ZX', marker = '^', color = 'red')  
    ax.plot([*range(n_start, n_end + 1, n_step)], wmctimelist_40, label='DEPTH = 40, WMC', marker = 'o', color = 'green')  
    ax.plot([*range(n_start, n_end + 1, n_step)], zxtimelist_40, label='DEPTH = 40, ZX', marker = '^', color = 'green')  
    ax.plot([*range(n_start, n_end + 1, n_step)], wmctimelist_50, label='DEPTH = 50, WMC', marker = 'o', color = 'blue')    
    ax.plot([*range(n_start, n_end + 1, n_step)], zxtimelist_50, label='DEPTH = 50, ZX', marker = '^', color = 'blue')   
    plt.xticks(range(n_start, n_end + 1, 10))
    plt.xlabel('#QUBITS')
    plt.ylabel('time (ms)')
    # plt.yscale("log")
    box = ax.get_position()
    ax.set_position([box.x0, box.y0, box.width*0.9, box.height * 0.9])
    ax.legend(loc='upper center', bbox_to_anchor=(0.43, 1.2), ncol=3, fancybox=True, shadow=True)
    plt.savefig('figures/'+ figname +".eps", format='eps')
    plt.show()    
    
def GateScalePlot(figname, m_start, m_end, m_step, ProbT, RepeatedTimes):
    wmc_timelist_50 = GPMCRun(50, [m_start, m_end], m_step, ProbT, 0, RepeatedTimes)
    wmc_timelist_60 = GPMCRun(60, [m_start, m_end], m_step, ProbT, 0, RepeatedTimes)    
    wmc_timelist_70 = GPMCRun(70, [m_start, m_end], m_step, ProbT, 0, RepeatedTimes)
    timelist_50 = ZXRun(50, [m_start, m_end], m_step, ProbT, 0, RepeatedTimes)
    timelist_60 = ZXRun(60, [m_start, m_end], m_step, ProbT, 0, RepeatedTimes)
    timelist_70 = ZXRun(70, [m_start, m_end], m_step, ProbT, 0, RepeatedTimes)
    fig = plt.figure()
    ax = fig.add_subplot(1,1,1)
    ax.plot([*range(m_start, m_end + 1, m_step)], wmc_timelist_50, label='#QUBITS = 50, WMC', marker = 'o', color = 'red')  
    ax.plot([*range(m_start, m_end + 1, m_step)], timelist_50, label='#QUBITS = 50, ZX', marker = '^', color = 'red')
    ax.plot([*range(m_start, m_end + 1, m_step)], wmc_timelist_60, label='#QUBITS = 60, WMC', marker = 'o', color = 'green') 
    ax.plot([*range(m_start, m_end + 1, m_step)], timelist_60, label='#QUBITS = 60, ZX', marker = '^', color = 'green')    
    ax.plot([*range(m_start, m_end + 1, m_step)], wmc_timelist_70, label='#QUBITS = 70, WMC', marker = 'o', color = 'blue')
    ax.plot([*range(m_start, m_end + 1, m_step)], timelist_70, label='#QUBITS = 70, ZX', marker = '^', color = 'blue')
    plt.xticks(range(m_start, m_end + 1, m_step))
    plt.xlabel('DEPTH')
    plt.ylabel('time (ms)')
    plt.yscale("log")
    box = ax.get_position()
    ax.set_position([box.x0, box.y0, box.width, box.height * 0.9])
    ax.legend(loc='upper center', bbox_to_anchor=(0.48, 1.2), ncol=3, fancybox=True, shadow=True)
    plt.savefig('figures/'+ figname +".eps", format='eps')
    plt.show()

def GPMCScatter(qubit, gate, step, ProbT, Qubit_or_Gate, RepeatedTimes):
    gpmc_time_list = np.array([])
    x_list = np.array([])
    for _ in range(RepeatedTimes):
        if Qubit_or_Gate == 1:
            folder = QubitScale(qubit[0], qubit[1], step, gate, ProbT)
            x = qubit[0]
        else:
            folder = GateScale(qubit, gate[0], gate[1],step, ProbT)
            x = gate[0]
        circuitlist = CircuitList(folder)
        for qasm_file in circuitlist:
            pre_time = QC2SAT(qasm_file)
            pgpmc = RunWithTimeout(GPMC,qasm_file)
            gpmc_time = pgpmc.run(TIMEOUT)
            if gpmc_time == 10000: pre_time = 0
            gpmc_time_list = np.append(gpmc_time_list, gpmc_time)
            x_list = np.append(x_list, x)
            x += step
    return [x_list, gpmc_time_list]

def WMCQubitscaling(figname):
    n = 30
    step = 1
    wmctimelist = GPMCScatter([10, 30], 30, step, 0.05, 1, 1)
    plt.scatter(wmctimelist[0],wmctimelist[1])
    plt.xticks(range(0, n+1, 1))
    plt.xlabel('#QUBITS')
    plt.ylabel('time (ms)')
    plt.grid()
    plt.savefig('figures/'+ figname +".eps", format='eps')
    plt.show()    

def DataPointWMC(n, m, ProbT):
    qasm_file = DataPoint(n, m, ProbT)
    pre_time = QC2SAT(qasm_file)
    GPMC(qasm_file)
    print("The encoding time is " + str(pre_time) + "ms")

def DataPointZX(n, m, ProbT):
    qasm_file = DataPoint(n, m, ProbT)
    ZX(qasm_file)