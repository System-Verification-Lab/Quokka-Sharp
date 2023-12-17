import sys, os, shutil
from Tableau import Tableau, CNF
from InitConst import init
from cliffordT import H2CNF,CNOT2CNF,S2CNF,T2CNF
from measure import M2CNF
from qasm_parser import qasm_parser
from settings import GPMC_PATH


def main(qasm_file, cnf_file):
    circuit = qasm_parser(qasm_file)
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

    print("N: "+ str(circuit.n) + " Clifford: " + str(circuit.m - circuit.tgate) + " T: " + str(circuit.tgate))

    with open(cnf_file, 'w') as the_file:
        the_file.writelines("p cnf " + str(cnf.var)+" "+str(cnf.clause)+"\n")
        the_file.write(cnf.weight_list.getvalue())
        the_file.write(cnf.cons_list.getvalue())
    # print([circuit.n, circuit.m])

if __name__ == "__main__":
    if len(sys.argv) < 2:
        exit(1)
    if len(sys.argv) < 3:
        out = sys.argv[1] + ".cnf"
    else:
        out = sys.argv[2]
    main(sys.argv[1], out)