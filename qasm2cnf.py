import re, math, sys
from encoding.cliffordT import *
from encoding.Tableau import Tableau, CNF
from encoding.InitConst import init
from encoding.measure import M2CNF

class Circuit:
    def __init__(self):
        self.n = 0
        self.m = 0
        self.tgate = 0
        self.cxgate = 0
        self.rgate = 0

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

def get_num(s):
    num = ''
    idx1 = s.index('[')
    qreg = s[0:idx1]
    num = re.findall(r"\[([0-9]*)\]",s)[0]
    return globals()[qreg][int(num)]

def qasm2cnf(qasm_file, cnf_file, multi_or_single):
    qasm_list = []
    with open(qasm_file,"r") as qasm:
        for line in qasm:
            qasm_list.append(line.rsplit())
    qasm_list = qasm_list[2:]

    gates = ['h','s','cx', 'ccx', 't','z','y','x','tdg', 'rx', 'rz']

    circuit = Circuit()
    
    gate_line = -1
    
    for line in qasm_list:
        gate_line += 1
        if len(line) == 0:
            continue
        elif line[0] == '//' or line[0] == 'OPENQASM' or line[0] == 'include' or line[0] == 'creg':
            continue
        elif any(item in ["qreg"] for item in line):
            idx1 = line[1].find('[')
            idx2 = line[1].find(']')
            qreg = line[1][0:idx1]
            num = int(line[1][idx1+1:idx2])
            globals()[qreg] = [0] * num
            for i in range(0, num):
                globals()[qreg][i] = i + circuit.n
            circuit.n += num
        else:
            break

    qasm_list = qasm_list[gate_line:]
    
    tab = Tableau(circuit.n)
    cnf = CNF()
    init(tab,cnf)
    
    for line in qasm_list:
        if len(line) == 0:
            continue
        if(line[0] == 'barrier' or line[0] == 'measure'):
            raise Exception("Syntax error:" + line[0])
        elif line[0] == '//' or line[0] == 'creg':
            continue
        elif(any(item in gates for item in line[0])): 
            gate = line[0]
            if gate != "ccx":
                circuit.m += 1
            if gate == 'h':
                k = get_num(line[1])
                H2CNF(tab,cnf,k)
            elif gate == 's' or gate == "rz(0.5*pi)" or gate == "rz(pi/2)":
                k = get_num(line[1])
                S2CNF(tab,cnf,k)
            elif gate == 'x':
                k = get_num(line[1])
                X2CNF(tab,cnf,k)
            elif gate == 'y':
                k = get_num(line[1])
                Y2CNF(tab,cnf,k)
            elif gate == 'z' or gate == 'rz(pi)' or gate == 'rz(-pi)':
                k = get_num(line[1])
                Z2CNF(tab,cnf,k)
            elif gate == 'cx':
                circuit.cxgate += 1
                if(line[1].count('[') == 1):
                    qubitc = get_num(line[1])
                    qubitr = get_num(line[2])
                else:
                    qubits = line[1].split(',')
                    qubitc = get_num(qubits[0])
                    qubitr = get_num(qubits[1]) 
                CNOT2CNF(tab,cnf,qubitc,qubitr)
            elif gate == 'tdg':
                circuit.rgate += 1
                k = get_num(line[1])
                Tdg2CNF(tab,cnf,k)
            elif gate == 'sdg' or gate == 'rz(-0.5*pi)' or gate == "rz(-pi/2)":
                circuit.rgate += 1
                k = get_num(line[1])
                Sdg2CNF(tab,cnf,k)
            elif gate == 't':
                circuit.tgate += 1
                k = get_num(line[1])
                T2CNF(tab,cnf,k)
            elif "rx" in gate:
                circuit.rgate += 1
                [res_cos, res_sin] = get_cos_sin(gate)
                k = get_num(line[1])
                RX2CNF(tab,cnf,k, res_cos, res_sin)
            elif "rz" in gate:
                circuit.rgate += 1
                [res_cos, res_sin] = get_cos_sin(gate)
                k = get_num(line[1])
                RZ2CNF(tab,cnf,k, res_cos, res_sin)
            elif gate == "ccx":
                if(line[1].count('[') == 1):
                    qubitc1 = get_num(line[1])
                    qubitc2 = get_num(line[2])
                    qubitr = get_num(line[3])
                else:
                    qubits = line[1].split(',')
                    qubitc1 = get_num(qubits[0])
                    qubitc2 = get_num(qubits[1]) 
                    qubitr = get_num(qubits[2]) 
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
                circuit.m += 15
                circuit.tgate += 4
                circuit.rgate += 3
                circuit.cxgate += 6
                
        else:
            raise Exception(str(line[0]) + " undefined.")
    
    M2CNF(tab, cnf, multi_or_single)
    
    with open(cnf_file, 'w') as the_file:
        the_file.writelines("p cnf " + str(cnf.var)+" "+str(cnf.clause)+"\n")
        the_file.write(cnf.weight_list.getvalue())
        the_file.write("0\n".join(cnf.cons_list))  #cnf.cons_list.getvalue())
    
    return circuit
    
if __name__ == "__main__":
    if len(sys.argv) < 2:
        exit(1)
    if len(sys.argv) < 3:
        out = sys.argv[1] + ".cnf"
    else:
        out = sys.argv[2]
    circuit = qasm2cnf(sys.argv[1], out, sys.argv[3])
    print([circuit.n, circuit.m, circuit.tgate, circuit.rgate])