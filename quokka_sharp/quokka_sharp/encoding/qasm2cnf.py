from .cnf import Variables, CNF
from .qasm_parser import Circuit
import math
from decimal import Decimal, getcontext

# set the precision of rotation angles
getcontext().prec = 32

def frac_to_float(frac_str):
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
            return Decimal(math.pow(-1,sign) * num / denom)

def get_angle(angle):
    try:
        if "/" in angle:
            theta = frac_to_float(angle)
        else:
            theta_str = angle
            if 'pi' in theta_str:
                theta = theta_str.replace('*', '')
                theta = theta.replace('pi', '')
                theta = float(theta) * math.pi
            else:
                theta = Decimal(float(theta_str))
        return theta
    except:
        raise Exception(angle, "is not supported")

def get_cos_sin(theta):
    res_cos = Decimal(math.cos(theta))
    if abs(res_cos) < 1e-15:
        res_cos = 0
    res_sin = Decimal(math.sin(theta))
    if abs(res_sin) < 1e-15:
        res_sin = 0
    return [str(res_cos), str(res_sin)]

def QASM2CNF(circuit : Circuit, computational_basis = False) -> CNF:
    if computational_basis:
        from .comput2cnf import comput2cnf as to_CNF 
    else:
        from .cliffordt2cnf import cliffordt2cnf as to_CNF

    cnf = CNF(circuit.n, computational_basis)

    for element in circuit.circ:
        gate = element[0]
        if gate == 'h':
            k = int(element[1]) - 1
            to_CNF.H2CNF(cnf,k)
        elif gate == 'x':
            k = int(element[1]) - 1
            to_CNF.X2CNF(cnf,k)
        elif gate == 'y':
            k = int(element[1]) - 1
            to_CNF.Y2CNF(cnf,k)
        elif gate == 'z':
            k = int(element[1]) - 1
            to_CNF.Z2CNF(cnf,k)
        elif gate == 'cx':
            j = int(element[1]) - 1
            k = int(element[2]) - 1
            to_CNF.CNOT2CNF(cnf,j,k)
        elif gate == 'cz':
            j = int(element[1]) - 1
            k = int(element[2]) - 1
            to_CNF.CZ2CNF(cnf,j,k)            
        elif gate == 's':
            k = int(element[1]) - 1
            to_CNF.S2CNF(cnf,k)
        elif gate == 'tdg':
            k = int(element[1]) - 1
            to_CNF.Tdg2CNF(cnf,k)
        elif gate == 'sdg':
            k = int(element[1]) - 1
            to_CNF.Sdg2CNF(cnf,k)
        elif gate == 't':
            k = int(element[1]) - 1
            to_CNF.T2CNF(cnf, k)
        elif gate[0] == 'r':
            angle = get_angle(element[1])
            k = int(element[2]) - 1
            if gate == 'rx':
                to_CNF.RX2CNF(cnf,k, angle)
            elif gate == 'rz':
                to_CNF.RZ2CNF(cnf,k, angle)
            elif gate == 'rxdg':
                to_CNF.RX2CNF(cnf,k, -angle)
            elif gate == 'rzdg':
                to_CNF.RZ2CNF(cnf,k, -angle)
        elif gate == "ccx":
            qubitc1 = int(element[1]) - 1
            qubitc2 = int(element[2]) - 1
            qubitr  = int(element[3]) - 1
            to_CNF.H2CNF(cnf,qubitr)
            to_CNF.CNOT2CNF(cnf,qubitc2,qubitr)
            to_CNF.Tdg2CNF(cnf,qubitr)
            to_CNF.CNOT2CNF(cnf,qubitc1,qubitr)
            to_CNF.T2CNF(cnf,qubitr)
            to_CNF.CNOT2CNF(cnf,qubitc2,qubitr)
            to_CNF.Tdg2CNF(cnf,qubitr)
            to_CNF.CNOT2CNF(cnf,qubitc1,qubitr)
            to_CNF.T2CNF(cnf,qubitc2)
            to_CNF.T2CNF(cnf,qubitr)
            to_CNF.CNOT2CNF(cnf,qubitc1,qubitc2)
            to_CNF.H2CNF(cnf,qubitr)
            to_CNF.T2CNF(cnf,qubitc1)
            to_CNF.Tdg2CNF(cnf,qubitc2)
            to_CNF.CNOT2CNF(cnf,qubitc1,qubitc2)
        # elif gate == 'm':
        #     cnf.rightProjectZXi(True, 0)
        # elif gate == 'mm':
        #     cnf.rightProjectAllZero()
        else:
            raise Exception(str(gate) + " undefined."+ str(element))

    return cnf
