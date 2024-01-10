from random_circuit import *

def main():
    print("Please enter the mode of running the programs.\n Enter 0 for getting figure of qubit count scalability \n Enter 1 for getting figure of depth scalability \n Enter 2 for running a single case using WMC \n Enter 3 for running a single case using ZX")
    # mode = int(input("Mode = "))
    mode = 6
    if mode == 0:
        print("You are running increasing qubit counts with depth being 30, 40, 50")
        figname = input("The name of the figure :")
        n_start = int(input("the beginning qubit counts = "))
        n_end = int(input("the end qubit counts = "))
        n_step = int(input("the increasing step = "))
        ProbT = float(input("the probability of T gates = "))
        RepeatedTimes = int(input("the repeated times of running = "))
        QubitScalePlot(figname, n_start, n_end, n_step, ProbT, RepeatedTimes)
    
    elif mode == 1:
        print("You are running increasing depth with qubit counts being 50, 60, 70")
        figname = input("The name of the figure :")
        m_start = int(input("the beginning depth = "))
        m_end = int(input("the end depth = "))
        m_step = int(input("the increasing step = "))
        ProbT = float(input("the probability of T gates = "))
        RepeatedTimes = int(input("the repeated times of running = "))
        GateScalePlot(figname, m_start, m_end, m_step, ProbT, RepeatedTimes)
    
    elif mode == 2:
        print("You are running a single case using WMC.")
        n = int(input("The number of qubits = "))
        m = int(input("The depth = "))
        ProbT = float(input("The probability of T gates = "))
        DataPointWMC(n, m, ProbT)
    
    elif mode == 3:
        print("You are running a single case using QuiZX.")
        n = int(input("The number of qubits = "))
        m = int(input("The depth = "))
        ProbT = float(input("The probability of T gates = "))     
        DataPointZX(n, m, ProbT)
    elif mode == 4:
        Quizxbench("/Users/meij/Desktop/NewEncoding/cliffordtmc/benchmark/random/quizx_q100d100")
    elif mode == 5:
        RunFolder("/Users/meij/Desktop/NewEncoding/cliffordtmc/benchmark/algorithm/test")
    elif mode == 6:
        file = "/Users/meij/Desktop/NewEncoding/cliffordtmc/benchmark/random/test/test.qasm"
        QC2SAT(file)
        # GPMC(file)
if __name__ == "__main__":
    main() 