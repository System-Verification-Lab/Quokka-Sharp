import sys
from Tableau import Tableau, CNF
from InitConst import init
from cliffordT import *
from measure import M2CNF
from qasm_parser import qasm_parser
from settings import GPMC_PATH
import math, re

def get_cos_sin(str):
    print(str)
    # theta_str = re.findall(r"\[([-+]?[A-Za-z0-9_*.]+)\]", str)[0]
    # if 'pi' in theta_str:
    #     theta = theta_str.split('*')
    #     theta = float(theta[0]) * math.pi
    # else:
    #     theta = float(theta_str)
    # res_cos = math.cos(theta)
    # if abs(res_cos) < 1e-15:
    #     res_cos = 0
    # res_sin = math.sin(theta)
    # if abs(res_sin) < 1e-15:
    #     res_sin = 0
    res_cos = 0
    res_sin = 0
    return [res_cos, res_sin]

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
        if 'rx' in gate:
            [res_cos, res_sin] = get_cos_sin(element[0])
            k = int(element[1]) - 1
            RX2CNF(tab,cnf,t,k, res_cos, res_sin)
        if 'rz' in gate:
            [res_cos, res_sin] = get_cos_sin(element[0])
            k = int(element[1]) - 1
            RZ2CNF(tab,cnf,t,k, res_cos, res_sin)
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