from encoding.qasm_parser_eq import eq_parser
import sys
from encoding.Tableau import Tableau, CNF
from encoding.cliffordT import *
import math, re, copy

def init_var(tab, cnf):
    x = tab.x; z = tab.z
    for i in range(tab.n):
        x[i] = cnf.add_var()
        z[i] = cnf.add_var()       
    tab.r = cnf.add_var()
    cnf.add_clause([-tab.r])

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
            const_list = re.findall(r"[-+]?(?:\d*\.*\d+)", theta_str)
            if len(const_list) == 1:
                const = const_list[0]
            elif len(const_list) == 0:
                const = 1
            else: raise Exception("Angle Not Support")
            theta = float(const) * math.pi
        else:
            theta = float(theta_str)
    res_cos = math.cos(theta)
    if abs(res_cos) < 1e-15:
        res_cos = 0
    res_sin = math.sin(theta)
    if abs(res_sin) < 1e-15:
        res_sin = 0
    return [res_cos, res_sin]

def qc2cnf(qasm_file1, qasm_file2):
    circuit = eq_parser(qasm_file1, qasm_file2)
    qclist = circuit.circ
    n = circuit.n
    tab = Tableau(n)
    cnf = CNF()
    init_var(tab, cnf)
    tab_init = copy.deepcopy(tab)
    
    for element in qclist:
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
        elif gate == 'cz':
            j = int(element[1]) - 1
            k = int(element[2]) - 1
            CZ2CNF(tab,cnf,j,k)
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
            if 'dg' in gate:
                res_sin = (-1) * res_sin
            k = int(element[1]) - 1
            RX2CNF(tab,cnf,k, res_cos, res_sin)
        elif 'rz' in gate:
            [res_cos, res_sin] = get_cos_sin(element[0])
            k = int(element[1]) - 1
            if 'dg' in gate:
                res_sin = (-1) * res_sin
            RZ2CNF(tab,cnf,k, res_cos, res_sin)

    return tab, cnf, tab_init