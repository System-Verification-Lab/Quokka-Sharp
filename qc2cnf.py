import sys, os, shutil
from Tableau import Tableau, CNF
from InitConst import init
from cliffordT import H2CNF,CNOT2CNF,S2CNF,T2CNF
from measure import M2CNF
from qasm_parser import qasm_parser


def main(filename):
    circuit = qasm_parser(filename)
    qclist = circuit.circ

    n = circuit.n
    m = circuit.m

    tab = Tableau(n,m)
    cnf = CNF()

    init(tab,cnf)

    for t in range(tab.m):
        element = qclist[t]
        gate = element[0]
        if gate == 'h':
            k = element[1] - 1
            H2CNF(tab,cnf,t,k)
        if gate == 'cx':
            j = element[1] - 1 
            k = element[2] - 1
            CNOT2CNF(tab,cnf,t,j,k)
        if gate == 's':
            k = int(element[1]) - 1
            S2CNF(tab,cnf,t,k)
        if gate == 't':
            k = int(element[1]) - 1
            T2CNF(tab,cnf,t,k)
        if gate == 'm':
            M2CNF(tab,cnf)
    filepath = filename.split('/')
    l = len(filepath)
    wmc_folder = './tools/GPMC/example/' + filepath[l-3] + "/" + filepath[l-2]
    if os.path.isdir(wmc_folder) == False:
        # shutil.rmtree(folder)
        os.mkdir(wmc_folder)
    with open(wmc_folder + "/" + filepath[l-1], 'w') as the_file:
        the_file.writelines("p cnf " + str(cnf.var)+" "+str(cnf.clause)+"\n")
        for item in cnf.weight_list:
            the_file.writelines(item)
        for item in cnf.cons_list:
            the_file.writelines(item)
    print("N: "+ str(circuit.n) + " Clifford: " + str(circuit.m - circuit.tgate) + " T: " + str(circuit.tgate))
    # print([circuit.n, circuit.m])

if __name__ == "__main__":
    main(sys.argv[1])