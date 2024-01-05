import sys
from Tableau import Tableau, CNF
from InitConst import init
from cliffordT import *
from measure import M2CNF
from qasm_parser import qasm_parser
from settings import GPMC_PATH
import math, re


def convert_to_float(frac_str):
    sign = 0
    if "-" in frac_str:
        sign = 1
        frac_str = frac_str.replace("-",'')
    try:
        return float(frac_str)
    except:
        num, denom = frac_str.split('/')
        piflag = 0
        denom = float(denom)
        if num == "pi":
            piflag = 1
            num = 1
        elif "pi" in num:
            piflag = 1
            num = num.replace("pi",'')
            num = num.replace("*",'')
            num = float(num)
        if piflag == 1:
            return math.pow(-1,sign) * num / denom * math.pi
        else:
            return math.pow(-1,sign) * num / denom

def get_cos_sin(str):
    angle = re.findall(r"\((.*?)\)",str)[0]
    if "/" in str:
        theta = convert_to_float(angle)
    else:
        theta_str = angle
        if 'pi' in theta_str:
            theta = theta_str.split('*')
            theta = float(theta[0]) * math.pi
        else:
            theta = float(theta_str)
    res_cos = math.cos(theta)
    if abs(res_cos) < 1e-15:
        res_cos = 0
    res_sin = math.sin(theta)
    if abs(res_sin) < 1e-15:
        res_sin = 0
    return [res_cos, res_sin]

def main(qasm_file, cnf_file):
    circuit = qasm_parser(qasm_file)
    qclist = circuit.circ


    n = circuit.n
    m = circuit.m

    tab = Tableau(n)
    cnf = CNF()

    init(tab,cnf)

    for t in range(m):
        element = qclist[t]
        gate = element[0]
        if gate == 'h':
            k = int(element[1]) - 1
            H2CNF(tab,cnf,k)
        elif gate == 'x':
            k = int(element[1]) - 1
            X2CNF(tab,cnf,k)
        elif gate == 'y':
            k = int(element[1]) - 1
            Y2CNF(tab,cnf,k)
        elif gate == 'z':
            k = int(element[1]) - 1
            Z2CNF(tab,cnf,k)
        elif gate == 'cx':
            j = int(element[1]) - 1
            k = int(element[2]) - 1
            CNOT2CNF(tab,cnf,j,k)
        elif gate == 's':
            k = int(element[1]) - 1
            S2CNF(tab,cnf,k)
        elif gate == 'tdg':
            k = int(element[1]) - 1
            Tdg2CNF(tab,cnf,k)
        elif gate == 'sdg':
            k = int(element[1]) - 1
            Sdg2CNF(tab,cnf,k)
        elif gate == 't':
            k = int(element[1]) - 1
            T2CNF(tab,cnf,k)
        elif 'rx' in gate:
            [res_cos, res_sin] = get_cos_sin(element[0])
            k = int(element[1]) - 1
            RX2CNF(tab,cnf,k, res_cos, res_sin)
        elif 'rz' in gate:
            [res_cos, res_sin] = get_cos_sin(element[0])
            k = int(element[1]) - 1
            RZ2CNF(tab,cnf,k, res_cos, res_sin)
        elif gate == 'm':
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