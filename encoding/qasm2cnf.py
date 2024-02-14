import sys
from encoding.Tableau import Tableau, CNF
from encoding.InitConst import init
from encoding.cliffordT import *
from encoding.measure import M2CNF
from encoding.qasm_parser import qasm_parser, Circuit
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
        try:
            num, denom = frac_str.split('/')
        except:
            num = frac_str.split('/')[0]
            denom = 1
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

def qasm2cnf(circuit : Circuit) -> CNF:

    qclist = circuit.circ
    n = circuit.n
    m = len(qclist)

    tab = Tableau(n)
    cnf = CNF()

    init(tab, cnf)

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
        elif gate == "ccx":
            qubitc1 = int(element[1]) - 1
            qubitc2 = int(element[2]) - 1
            qubitr  = int(element[3]) - 1
            H2CNF(tab,cnf,qubitr)
            CNOT2CNF(tab,cnf,qubitc2,qubitr)
            Tdg2CNF(tab,cnf,qubitr)
            CNOT2CNF(tab,cnf,qubitc1,qubitr)
            T2CNF(tab,cnf,qubitr)
            CNOT2CNF(tab,cnf,qubitc2,qubitr)
            Tdg2CNF(tab,cnf,qubitr)
            CNOT2CNF(tab,cnf,qubitc1,qubitr)
            T2CNF(tab,cnf,qubitc2)
            T2CNF(tab,cnf,qubitr)
            CNOT2CNF(tab,cnf,qubitc1,qubitc2)
            H2CNF(tab,cnf,qubitr)
            T2CNF(tab,cnf,qubitc1)
            Tdg2CNF(tab,cnf,qubitc2)
            CNOT2CNF(tab,cnf,qubitc1,qubitc2)
        elif gate == 'm':
            M2CNF(tab,cnf,False)
        elif gate == 'mm':
            M2CNF(tab,cnf,True)
        else:
            raise Exception(str(line[0]) + " undefined.")
    return cnf

if __name__ == "__main__":
    if len(sys.argv) < 2:
        exit(1)
    if len(sys.argv) < 3:
        out = sys.argv[1] + ".cnf"
    else:
        out = sys.argv[2]
    cnf = main(sys.argv[1])
    cnf.write_to_file(out)
