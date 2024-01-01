from random_circ_qasm import *
import numpy as np
import os
import glob
import re
import matplotlib.pyplot as plt
import matplotlib.ticker as mtick
import time
import threading
from settings import *
from settings import GPMC_PATH
from subprocess import Popen, PIPE, TimeoutExpired


# class RunWithTimeout(object):
#     def __init__(self, function, args):
#         self.function = function
#         self.args = args
#         self.answer = TIMEOUT * 1000.0

#     def worker(self):
#         self.answer = self.function(self.args)

#     def run(self, timeout):
#         thread = threading.Thread(target=self.worker)
#         thread.start()
#         thread.join(timeout)
#         return self.answer

def CircuitList(folder):
    circuit_list = glob.glob(folder + "/*")
    circuit_list.sort()
    return circuit_list

def QC2SAT(qasm_file):
    filepath = qasm_file.split('/')
    l = len(filepath)
    folder = filepath[l-3] + "/" + filepath[l-2]
    filename = filepath[l-1]
    if os.path.isdir(GPMC_PATH + '/example/' + folder):
        shutil.rmtree(GPMC_PATH + '/example/' + folder)
    os.mkdir(GPMC_PATH + '/example/' + folder)
    wmc_file = GPMC_PATH + '/example/'+ folder + '/' + filename
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
    # result = os.popen(gpmc_path + " -mode=1 " + wmc_file).read()
    p = Popen([gpmc_path, "-mode=1", wmc_file],
                        stdout= PIPE, stderr=PIPE)
    try:
        result,err = p.communicate(timeout=TIMEOUT)
        result = str(result)

        gpmc_time_str = re.findall(r"Real.time.*s",str(result))[0]
        gpmc_time = round(float(re.findall(r"[-+]?(?:\d*\.*\d+)", gpmc_time_str)[0]) * 1000, 3)
        gpmc_ans_str = re.findall(r"exact.*\\nc s",result)[0]
        if gpmc_ans_str.count('e') == 2: # deal with exact: -8.72889813224858e-09
            gpmc_ans_str = '0'
        print(gpmc_ans_str)
        gpmc_ans = (float(re.findall(r"[-+]?(?:\d*\.*\d+)", gpmc_ans_str)[0]) + 1) / 2
        print("The resulting probability by GPMC is " + str(gpmc_ans))
        print("The running time of GPMC is " + str(gpmc_time) + "ms")
        return gpmc_time
    except TimeoutExpired:
        p.kill() 
        print(filepath2 + " GPMC IS TIMEOUT")
        return TIMEOUT * 1000

def ZX(filename):
    p = Popen([QuiZX_PATH, filename], stdout = PIPE, stderr= PIPE)
    try:
        result, err = p.communicate(timeout=TIMEOUT)
        print(result)
        result = str(result)
        # print(err)
        zx_time_str = re.findall(r"tall.*$",result)[0]
        zx_time = re.findall(r"[-+]?(?:\d*\.*\d+)", zx_time_str)[0]
        print(zx_time_str)
        if "ms" in zx_time_str:
            return float(zx_time)
        else:
            return float(zx_time) * 1000
    except:
        p.kill()
        print(filename + " ZX IS TIMEOUT")
        return TIMEOUT * 1000

def RunFolder(folder):
    circuitlist = CircuitList(folder)
    zx_time_list = []
    gpmc_time_list = []
    for qasm_file in circuitlist:
        print(qasm_file)
        zx_time = ZX(qasm_file)
        zx_time_list.append(zx_time)
        pre_time = QC2SAT(qasm_file)
        gpmc_time = GPMC(qasm_file)
        if gpmc_time == TIMEOUT * 1000: pre_time = 0
        print("gpmc_time + pre_time = " + str(gpmc_time + pre_time))
        gpmc_time_list.append(gpmc_time + pre_time)

    
    
def Quizxbench(folder):
    circuitlist = CircuitList(folder)
    zx_time_list = []
    gpmc_time_list = []
    succ_wmc = 0
    succ_zx = 0
    for qasm_file in circuitlist:
        zx_time = ZX(qasm_file)
        zx_time_list.append(zx_time)
        if zx_time < TIMEOUT * 1000:
            succ_zx += 1
        pre_time = QC2SAT(qasm_file)
        gpmc_time = GPMC(qasm_file)
        if gpmc_time == TIMEOUT * 1000: pre_time = 0
        gpmc_time_list.append(gpmc_time + pre_time)
        if gpmc_time < TIMEOUT * 1000:
            succ_wmc += 1
    print("succ_wmc: " + str(succ_wmc / 50.0) + " succ_zx: " + str(succ_zx / 50.0) + " min_wmc: " + str(min(gpmc_time_list)) + " min_zx: " + str(min(zx_time_list)))

def PlotQuizxbench(figname):
    gpmc_succ_list = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.96, 0.86, 0.6]
    zx_succ_list = [1.0, 1.0, 1.0, 1.0, 1.0, 0.98, 0.98, 0.88, 0.68]
    gpmc_time_list = [32.151, 35.574, 39.223, 42.902, 46.187, 50.334, 54.881, 61.35, 66.428]
    zx_time_list = [4.356875, 8.172083, 14.283, 25.891167, 45.627166, 148.392292, 326.029167, 588.531709, 1219.006]
    fig, (ax1, ax2) = plt.subplots(2) 
    ax1.plot([*np.arange(10, 91, 10)], gpmc_succ_list, label=f'WMC', marker = 'o', color = 'red')
    ax1.plot([*np.arange(10, 91, 10)], zx_succ_list, label=f'ZX', marker = '^', color = 'blue')  
    # box1 = ax1.get_position()
    # ax1.set_position([box1.x0, box1.y0, box1.width*0.9, box1.height * 0.9])
    ax1.legend(loc='upper center', bbox_to_anchor=(0.45, 1.25), ncol=3, fancybox=True, shadow=True)    
    ax1.set(ylabel = "% successful")
    ax2.plot([*np.arange(10, 91, 10)], gpmc_time_list, label=f'WMC', marker = 'o', color = 'red')
    ax2.plot([*np.arange(10, 91, 10)], zx_time_list, label=f'ZX', marker = '^', color = 'blue')      
    # box2 = ax2.get_position()
    # ax2.set_position([box2.x0, box2.y0, box2.width*0.9, box2.height * 0.9])
    # ax2.legend(loc='upper center', bbox_to_anchor=(0.43, 1.2), ncol=3, fancybox=True, shadow=True)    
    ax2.set(ylabel = "time (ms)")
    # ax2.ylabel("time (ms)")
    plt.xlabel('DEPTH')
    plt.savefig('figures/'+ figname +".eps", format='eps')
    plt.show()    
    
def run_GPMC_ZX(qubit, gate, step, ProbT, Qubit_or_Gate, RepeatedTimes):
    zx_list_all = []
    gpmc_list_all = []
    for _ in range(RepeatedTimes):
        if Qubit_or_Gate == 1:
            folder = QubitScale(qubit[0],qubit[1], step, gate, ProbT)
        else:
            folder = GateScale(qubit, gate[0], gate[1], step, ProbT)
        circuitlist = CircuitList(folder)
        zx_time_list = []
        gpmc_time_list = []
        for qasm_file in circuitlist:
            zx_time = ZX(qasm_file)
            zx_time_list.append(zx_time)
            pre_time = QC2SAT(qasm_file)
            gpmc_time = GPMC(qasm_file)
            if gpmc_time == 10000: pre_time = 0
            gpmc_time_list.append(gpmc_time + pre_time)
        zx_list_all.append(zx_time_list)
        gpmc_list_all.append(gpmc_time_list)
    n = len(zx_list_all)
    m = len(zx_list_all[0])
    zx_list_res = np.array([])
    gpmc_list_res = np.array([])
    for j in range(m):
        s1 = 0.0
        s2 = 0.0
        for i in range(n):
            s1 += zx_list_all[i][j]
            s2 += gpmc_list_all[i][j]
        zx_list_res = np.append(zx_list_res,s1/n)
        gpmc_list_res = np.append(gpmc_list_res,s2/n)
    return [gpmc_list_res, zx_list_res]

def QubitScalePlot(figname, depthlist, n_start, n_end, n_step, ProbT, RepeatedTime):
    fig = plt.figure()
    ax = fig.add_subplot(1,1,1)
    # colordict = {
    #     depthlist[0] : 'red',
    #     depthlist[1] : 'green',
    #     depthlist[2] : 'blue'
    # }
    colorlist = ['red','green','blue']
    i = 0
    for depth in depthlist:
        res_list = run_GPMC_ZX([n_start, n_end], depth, n_step, ProbT, 1, RepeatedTime)
        wmctimelist = res_list[0]
        zxtimelist = res_list[1]
        ax.plot([*range(n_start, n_end + 1, n_step)], wmctimelist, label=f'DEPTH = {depth}, WMC', marker = 'o', color = colorlist[i])  
        ax.plot([*range(n_start, n_end + 1, n_step)], zxtimelist, label=f'DEPTH = {depth}, ZX', marker = '^', color = colorlist[i])  
        i += 1
    # plt.xticks(range(n_start, n_end + 1, 10))
    # plt.xlabel('#QUBITS')
    # plt.ylabel('time (ms)')
    # # plt.yscale("log")
    # box = ax.get_position()
    # ax.set_position([box.x0, box.y0, box.width*0.9, box.height * 0.9])
    # ax.legend(loc='upper center', bbox_to_anchor=(0.43, 1.2), ncol=3, fancybox=True, shadow=True)
    # plt.savefig('figures/'+ figname +".eps", format='eps')
    # plt.show()    
    
def GateScalePlot(figname, qubitlist, m_start, m_end, m_step, ProbT, RepeatedTimes):
    fig = plt.figure()
    ax = fig.add_subplot(1,1,1)
    # colordict = {
    #     qubitlist[0] : 'red',
    #     qubitlist[1] : 'green',
    #     qubitlist[2] : 'blue'
    # }
    colorlist = ['red','green','blue']
    i = 0
    for qubit in qubitlist:
        res_list = run_GPMC_ZX(qubit, [m_start, m_end], m_step, ProbT, 0, RepeatedTimes)
        wmctimelist = res_list[0]
        zxtimelist = res_list[1]
        ax.plot([*range(m_start, m_end + 1, m_step)], wmctimelist, label=f'#QUBITS = {qubit}, WMC', marker = 'o', color = colorlist[i])  
        ax.plot([*range(m_start, m_end + 1, m_step)], zxtimelist, label=f'#QUBITS = {qubit}, ZX', marker = '^', color = colorlist[i])
        i += 1
    plt.xticks(range(m_start, m_end + 1, m_step))
    plt.xlabel('DEPTH')
    plt.ylabel('time (ms)')
    plt.yscale("log")
    box = ax.get_position()
    ax.set_position([box.x0, box.y0, box.width, box.height * 0.9])
    ax.legend(loc='upper center', bbox_to_anchor=(0.48, 1.2), ncol=3, fancybox=True, shadow=True)
    plt.savefig('figures/'+ figname +".eps", format='eps')
    plt.show()

# def GPMCScatter(qubit, gate, step, ProbT, Qubit_or_Gate, RepeatedTimes):
#     gpmc_time_list = np.array([])
#     x_list = np.array([])
#     for _ in range(RepeatedTimes):
#         if Qubit_or_Gate == 1:
#             folder = QubitScale(qubit[0], qubit[1], step, gate, ProbT)
#             x = qubit[0]
#         else:
#             folder = GateScale(qubit, gate[0], gate[1],step, ProbT)
#             x = gate[0]
#         circuitlist = CircuitList(folder)
#         for qasm_file in circuitlist:
#             pre_time = QC2SAT(qasm_file)
#             pgpmc = RunWithTimeout(GPMC,qasm_file)
#             gpmc_time = pgpmc.run(TIMEOUT)
#             if gpmc_time == 10000: pre_time = 0
#             gpmc_time_list = np.append(gpmc_time_list, gpmc_time)
#             x_list = np.append(x_list, x)
#             x += step
#     return [x_list, gpmc_time_list]

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
    
def success_rate(qubit, gate, ProbT,sample):
    succ_wmc = 0
    succ_zx = 0
    avg_wmc = 0
    avg_zx = 0
    for i in range(sample):
        print(f"this is sample {i} for depth {gate}")
        qasm_file = DataPoint(qubit, gate, ProbT)
        try:
            pre_time = QC2SAT(qasm_file)
            gpmc_time = GPMC(qasm_file) 
            print(gpmc_time)
            if gpmc_time < TIMEOUT * 1000:
                succ_wmc += 1
            avg_wmc += gpmc_time
        except:
            print("WMC TIMEOUT")
        try:
            zx_time = ZX(qasm_file)
            print(zx_time)
            if zx_time < TIMEOUT * 1000:
                succ_zx += 1
            avg_zx += zx_time
        except:
            print("ZX TIMEOUT")
        if gpmc_time == "***":
                break
    return [succ_wmc / sample, succ_zx / sample]
    # print("wmc succ rate:",succ_wmc / sample, "zx succ rate:", succ_zx / sample, "wmc avg:", avg_wmc / sample, "zx avg:", avg_zx / sample)

def success_rate_plot(n, mstart, mend, mstep, tProb, sample):
    wmc_succ_list = []
    zx_succ_list = []    
    # for tRate in np.arange(Tstart, Tend, Tstep):
    #     result = success_rate(n, m, tRate, sample)
    #     wmc_succ = result[0]
    #     zx_succ = result[1]
    #     wmc_succ_list.append(wmc_succ)
    #     zx_succ_list.append(zx_succ)
    # fig = plt.figure()
    # ax = fig.add_subplot(1,1,1)
 
    # ax.plot([*np.arange(Tstart, Tend, Tstep)], wmc_succ_list, label=f'WMC', marker = 'o', color = 'red')
    # ax.plot([*np.arange(Tstart, Tend, Tstep)], wmc_succ_list, label=f'ZX', marker = '^', color = 'blue')      
    # plt.xlabel('T gate rate')
    for m in range(mstart, mend+1, mstep):
        result = success_rate(n, m, tProb, sample)
        wmc_succ = result[0] * 100
        zx_succ = result[1] * 100
        wmc_succ_list.append(wmc_succ)
        zx_succ_list.append(zx_succ)
        print(wmc_succ, zx_succ)
    fig = plt.figure()
    ax = fig.add_subplot(1,1,1)
    print(wmc_succ_list)
    print(zx_succ_list)
    # ax.plot([*range(mstart, mend+1, mstep)], wmc_succ_list, label=f'WMC', marker = 'o', color = 'red')
    # ax.plot([*range(mstart, mend+1, mstep)], zx_succ_list, label=f'ZX', marker = '^', color = 'blue')      
    # plt.xlabel('DEPTH')   
    # plt.ylabel('% successful')
    # plt.xticks(range(mstart, mend+1, mstep))
    # plt.yticks(np.arange(0, 101, 25))
    # # plt.yscale("log")
    # box = ax.get_position()
    # ax.set_position([box.x0, box.y0, box.width*0.9, box.height * 0.9])
    # ax.legend(loc='upper center', bbox_to_anchor=(0.43, 1.2), ncol=3, fancybox=True, shadow=True)
    # plt.savefig('figures/'+ "succ_rate2" +".eps", format='eps')
    # plt.show()

# def SatRate(n, m, tRate):
