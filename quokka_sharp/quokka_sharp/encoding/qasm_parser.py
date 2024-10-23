import math
import re
from decimal import Decimal, getcontext

# set the precision of rotation angles
getcontext().prec = 32

HermiGates = ['id', 'h', 'cx', 'cz', 'x', 'z', 'y', 'ccx']
RotationGates = ['rx', 'ry', 'rz']
NHermitGates = {'t': 'tdg', 'tdg': 't', 's': 'sdg', 'sdg': 's', 
                'rx': 'rxdg', 'rx': 'rxdg', 'rz': 'rzdg', 'rzdg': 'rz', 'ry': 'rydg', 'rydg': 'ry'}

class Circuit:
    def __init__(self):
        self.n: int = 0
        self.tgate: int = 0
        self.circ = []
        self.has_rotations = False
    
    def depth(self):
        return len(self.circ)
    
    def add_single(self,gate: str, qubit: int):
        if(gate == 't' or gate == 'tdg'):
            self.tgate += 1
        self.circ.append([gate, qubit])

    def add_double(self, gate: str , qubitc: int, qubitr: int):
        self.circ.append([gate, qubitc, qubitr])
    
    def add_rotation(self, gate: str, angle: Decimal, qubit: int):
        self.circ.append([gate, angle, qubit])
        self.has_rotations = True
    
    def add_ccx(self,qubitc1: int,qubitc2: int, qubitr: int, translate_ccx:bool):
        if translate_ccx:
            self.add_single('h',    qubitr)
            self.add_double('cx',   qubitc2, qubitr)
            self.add_single('tdg',  qubitr)
            self.add_double('cx',   qubitc1, qubitr)
            self.add_single('t',    qubitr)
            self.add_double('cx'    ,qubitc2, qubitr)
            self.add_single('tdg',  qubitr)
            self.add_double('cx',   qubitc1, qubitr)
            self.add_single('t',    qubitc2)
            self.add_single('t',    qubitr)
            self.add_double('cx',   qubitc1, qubitc2)
            self.add_single('h',    qubitr)
            self.add_single('t',    qubitc1)
            self.add_single('tdg',  qubitc2)
            self.add_double('cx',   qubitc1, qubitc2)
        else:
            self.circ.append(['ccx', qubitc1, qubitc2, qubitr])
        
    def add_measurement(self, multi_or_single: bool):
        if multi_or_single:
            self.circ.append('mm')
        else:
            self.circ.append('m')

    def dagger(self):
        self.circ.reverse()
        for idx in range(len(self.circ)):
            gate = self.circ[idx][0]
            if gate in HermiGates:
                pass
            elif NHermitGates.get(gate) != None:
                self.circ[idx][0] = NHermitGates[gate]
            else:
                raise Exception("Gate "+ gate[0] +" dagger not supported.")

    def append(self, other: 'Circuit'):
        self.circ.extend( other.circ )
        self.n = max(self.n, other.n)
        self.tgate = self.tgate + other.tgate

    def to_qasm(self):
        s = "OPENQASM 2.0;\n"
        s += "include \"qelib1.inc\";\n"
        s += f"qreg q[{self.n}];\n"
        for gate in self.circ:
            if gate[0] == "id":
                continue
            if gate[0] in RotationGates:
                s += f"{gate[0]}"
                s += f"({gate[1]})"
                s += f" q[{gate[2]}]"
                s += f" ;\n"
            else:
                s += f"{gate[0]}"
                for b in gate[1:]:
                    s += f" q[{b}]"
                s += f" ;\n"
        return s

def get_num(s: str):
    num = ''
    idx1 = s.index('[')
    idx2 = s.index(']')
    qreg = s[0:idx1]
    for i in range(idx1 + 1, idx2):
        if s[i].isdigit():
            num = num + s[i]
    return globals()[qreg][int(num)]

def frac_to_float(frac: str):
    sign = 0
    if "-" in frac:
        sign = 1
        frac = frac.replace("-",'')
    try:
        return float(frac)
    except:
        try:
            num, denom = frac.split('/')
        except:
            num = frac.split('/')[0]
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

def get_angle(angle: str):
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

#TODO: the translate CCX should be factored out to some optimization pass
#      or separate circuit converter tool
def QASMparser(filename, translate_ccx: bool) -> Circuit:
    qasm_list = []
    
    with open(filename,"r") as qasm:
        for line in qasm:
            qasm_list.append(line.rsplit())

    circuit = Circuit()
    
    for line in qasm_list:
        if len(line) == 0:
            continue

        gate = line[0]
        if any(item in ["qreg"] for item in line):
            idx1 = line[1].find('[')
            idx2 = line[1].find(']')
            qreg = line[1][0:idx1]
            num = int(line[1][idx1+1:idx2])
            globals()[qreg] = [0] * num
            for i in range(num):
                globals()[qreg][i] = i + circuit.n
            circuit.n += num

        elif(line[0] == 'barrier' or line[0] == 'measure'):
            raise Exception("Syntax error:" + line[0])
            
        elif line[0] == '//' or line[0] == 'OPENQASM' or line[0] == 'include' or line[0] == 'creg':
            continue

        elif gate == 'cx' or gate == 'cz':
            if(line[1].count('[') == 1):
                qubitc = get_num(line[1])
                qubitr = get_num(line[2])
            else:
                qubits = line[1].split(',')
                qubitc = get_num(qubits[0])
                qubitr = get_num(qubits[1]) 
            circuit.add_double(gate, qubitc, qubitr)

        elif gate == 'id' or gate == 'z' or gate == 'y' or gate == 'x' or gate == 'h':
            qubit = get_num(line[1])
            circuit.add_single(gate, qubit)

        elif gate == 'rz(pi)' or gate == 'rz(-pi)' or gate == 'rz(1.0*pi)':
            qubit = get_num(line[1])
            circuit.add_single('z',qubit)

        elif gate == 's' or gate == "rz(0.5*pi)" or gate == "rz(pi/2)":
            qubit = get_num(line[1])
            circuit.add_single("s", qubit)
        
        elif gate == 'sdg' or gate == 'rz(-0.5*pi)' or gate == "rz(-pi/2)":
            qubit = get_num(line[1])
            circuit.add_single("sdg", qubit)

        elif gate == 't' or gate == "rz(0.25*pi)" or gate == "rz(pi/4)":
            qubit = get_num(line[1])
            circuit.add_single("t", qubit)
                            
        elif gate == 'tdg' or gate == 'rz(-0.25*pi)' or gate == "rz(-pi/4)":
            qubit = get_num(line[1])
            circuit.add_single("tdg", qubit)
        
        elif gate == 'ccx':
            if(line[1].count('[') == 1):
                qubitc1 = get_num(line[1])
                qubitc2 = get_num(line[2])
                qubitr = get_num(line[3])
            else:
                qubits = line[1].split(',')
                qubitc1 = get_num(qubits[0])
                qubitc2 = get_num(qubits[1]) 
                qubitr = get_num(qubits[2])                
            circuit.add_ccx(qubitc1, qubitc2, qubitr, translate_ccx)

        elif len(gate) > 4 and gate[0:2] in RotationGates:
            # TODO: gate exception
            gate_angle = re.findall(r"(.*?)\((.*?)\)",gate)[0]
            rgate = gate_angle[0]
            angle = get_angle(gate_angle[1])
            qubit = get_num(line[1])
            circuit.add_rotation(rgate, angle, qubit)
        else:
            gate = line[0]
            raise Exception(str(gate) + " undefined.")

    return circuit