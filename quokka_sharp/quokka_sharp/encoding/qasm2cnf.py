from .cnf import Variables, CNF
from quokka_sharp.encoding.cliffordt2cnf import *
from .qasm_parser import Circuit
import math

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

def get_angle(angle):
    try:
        if "/" in angle:
            theta = convert_to_float(angle)
        else:
            theta_str = angle
            if 'pi' in theta_str:
                theta = theta_str.replace('*', '')
                theta = theta.replace('pi', '')
                theta = float(theta) * math.pi
            else:
                theta = float(theta_str)
        return theta
    except:
        raise Exception(angle, "is not supported")

def get_cos_sin(theta):
    res_cos = math.cos(theta)
    if abs(res_cos) < 1e-15:
        res_cos = 0
    res_sin = math.sin(theta)
    if abs(res_sin) < 1e-15:
        res_sin = 0
    return [res_cos, res_sin]

def QASM2CNF(circuit : Circuit) -> CNF:

    cnf = CNF(circuit.n)

    for element in circuit.circ:
        gate = element[0]
        if gate == 'h':
            k = int(element[1]) - 1
            H2CNF(cnf,k)
        elif gate == 'x':
            k = int(element[1]) - 1
            X2CNF(cnf,k)
        elif gate == 'y':
            k = int(element[1]) - 1
            Y2CNF(cnf,k)
        elif gate == 'z':
            k = int(element[1]) - 1
            Z2CNF(cnf,k)
        elif gate == 'cx':
            j = int(element[1]) - 1
            k = int(element[2]) - 1
            CNOT2CNF(cnf,j,k)
        elif gate == 'cz':
            j = int(element[1]) - 1
            k = int(element[2]) - 1
            CZ2CNF(cnf,j,k)            
        elif gate == 's':
            k = int(element[1]) - 1
            S2CNF(cnf,k)
        elif gate == 'tdg':
            k = int(element[1]) - 1
            Tdg2CNF(cnf,k)
        elif gate == 'sdg':
            k = int(element[1]) - 1
            Sdg2CNF(cnf,k)
        elif gate == 't':
            k = int(element[1]) - 1
            T2CNF(cnf,k)
        elif gate[0] == 'r':
            angle = get_angle(element[1])
            k = int(element[2]) - 1
            if gate == 'rx':
                [res_cos, res_sin] = get_cos_sin(angle)
                RX2CNF(cnf,k, res_cos, res_sin)
            elif gate == 'rz':
                [res_cos, res_sin] = get_cos_sin(angle)
                RZ2CNF(cnf,k, res_cos, res_sin)
            elif gate == 'rxdg':
                [res_cos, res_sin] = get_cos_sin((-1) * angle)
                RX2CNF(cnf,k, res_cos, res_sin)
            elif gate == 'rzdg':
                [res_cos, res_sin] = get_cos_sin((-1) * angle)
                RZ2CNF(cnf,k, res_cos, res_sin)
        elif gate == "ccx":
            qubitc1 = int(element[1]) - 1
            qubitc2 = int(element[2]) - 1
            qubitr  = int(element[3]) - 1
            H2CNF(cnf,qubitr)
            CNOT2CNF(cnf,qubitc2,qubitr)
            Tdg2CNF(cnf,qubitr)
            CNOT2CNF(cnf,qubitc1,qubitr)
            T2CNF(cnf,qubitr)
            CNOT2CNF(cnf,qubitc2,qubitr)
            Tdg2CNF(cnf,qubitr)
            CNOT2CNF(cnf,qubitc1,qubitr)
            T2CNF(cnf,qubitc2)
            T2CNF(cnf,qubitr)
            CNOT2CNF(cnf,qubitc1,qubitc2)
            H2CNF(cnf,qubitr)
            T2CNF(cnf,qubitc1)
            Tdg2CNF(cnf,qubitc2)
            CNOT2CNF(cnf,qubitc1,qubitc2)
        elif gate == 'm':
            cnf.rightProjectZXi(True, 0)
        elif gate == 'mm':
            cnf.rightProjectAllZero()
        else:
            raise Exception(str(gate) + " undefined."+ str(element))

    return cnf
