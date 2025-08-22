import math
import re
from decimal import Decimal, getcontext

# set the precision of rotation angles
getcontext().prec = 32

HermiGates = ['id', 'h', 'cx', 'cz', 'cy', 'swap', 'x', 'z', 'y', 'ccx']
RotationGates = ['rx', 'ry', 'rz']
NHermitGates = {'t': 'tdg', 'tdg': 't', 's': 'sdg', 'sdg': 's', 
                'iswap': 'iswapdg', 'iswapdg': 'iswap',
                'cs': 'csdg', 'csdg': 'cs', 'csqrtx': 'csqrtxdg', 'csqrtxdg': 'csqrtx',
                'rx': 'rxdg', 'rxdg': 'rx', 'rz': 'rzdg', 'rzdg': 'rz', 'ry': 'rydg', 'rydg': 'ry'}
FeedbackMap = {
    'x': 'cx',
    'y': 'cy',
    'z': 'cz',
    's': 'cs',
    'sdg': 'csdg',
    'sqrtx': 'csqrtx',
    'sqrtxdg': 'csqrtxdg',
}
class Circuit:
    """
    A class to represent a quantum circuit.
    """
    def __init__(self):
        self.n: int = 0
        self.tgate: int = 0
        self.circ = []
        self.measurements = {}
        self.has_rotations = False
        self.ancillas = 0
        self.cregs = {}
    
    def depth(self):
        """
        Returns the NUMBER OF GATES in the circuit.
        """
        return len(self.circ)
    
    def add_single(self,gate: str, qubit: int):
        """
        Adds a single qubit gate to the circuit.
        """
        if(gate == 't' or gate == 'tdg'):
            self.tgate += 1
        self.circ.append([gate, qubit])

    def add_double(self, gate: str , qubitc: int, qubitr: int):
        """
        Adds a double qubit gate to the circuit.
        """
        self.circ.append([gate, qubitc, qubitr])
    
    def add_rotation(self, gate: str, angle: Decimal, qubit: int):
        """
        Adds a rotation gate to the circuit.
        """
        self.circ.append([gate, angle, qubit])
        self.has_rotations = True
    
    def add_ccx(self,qubitc1: int,qubitc2: int, qubitr: int):
        """
        Adds a Toffoli gate (CCX) to the circuit.
        """
        self.circ.append(['ccx', qubitc1, qubitc2, qubitr])

    def add_if(self, c_name: str, value: int, inner_op: list, c_bit: int | None = None):
        """
        Adds a classically conditioned op: if (c_name[c_bit]==value) <inner_op>.
        """
        cond_key = (c_name, c_bit) if c_bit is not None else c_name
        self.circ.append(['if', cond_key, value] + inner_op)

    def add_measure(self, qubit: int, cname: str, cbit: int):
        """
        Adds a map from qubit to classical bit.
        """
        if cname not in self.cregs:
            raise Exception(f"Measurement register {cname} not defined.")
        if cbit >= self.cregs[cname]:
            raise Exception(f"Measurement bit {cbit} out of range for register {cname}.")
        #self.measurements.append(['measure', qubit, cname, cbit])
        self.measurements[(cname, cbit)] = qubit

    def dagger(self):
        """
        Returns the adjoint of the circuit.
        """
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
        """
        Appends another circuit to this circuit.
        """
        self.circ.extend( other.circ )
        self.n = min(self.n, other.n)
        self.ancillas = max(self.n, other.n) - min(self.n, other.n)
        self.tgate = self.tgate + other.tgate
        # merge classical regs (taking max of sizes if duplicated names appear)
        for k, v in other.cregs.items():
            self.cregs[k] = max(self.cregs.get(k, 0), v)

    def to_qasm(self):
        """
        Converts the circuit to QASM format.
        """
        s = "OPENQASM 2.0;\n"
        s += "include \"qelib1.inc\";\n"
        s += f"qreg q[{self.n + self.ancilas}];\n"
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
    
    def translate_if_statements(self):
        """
        Replace ['if', cname, val, <op> ...] to classically controlled gates.
        """

        new_circ = []
        for item in self.circ:

            if not (isinstance(item, list) and item and item[0] == 'if'):
                new_circ.append(item)
                continue

            cond_key = item[1]
            val = int(item[2])
            op  = item[3]
            q   = item[4] if len(item) > 4 else None

            if isinstance(cond_key, tuple):
                cname, cbit = cond_key
            else:
                cname, cbit = cond_key, 0

            if op not in FeedbackMap or not isinstance(q, int):
                new_circ.append(item)
                continue

            ctrl = self.measurements.get((cname, cbit))
            if ctrl is None:
                continue

            self.measurements.pop((cname, cbit))

            controlledgate = FeedbackMap[op]
            v = int(val) & 1 # test the condition

            if v == 1:
                new_circ.append([controlledgate, ctrl, q, 'if'])
            else:
                # X sandwich
                new_circ.append(['x', ctrl])
                new_circ.append([controlledgate, ctrl, q, 'if'])
                new_circ.append(['x', ctrl])

        self.circ = new_circ


def get_num(s: str):
    """
    Extracts the number from a string in the format qreg[n].
    """
    num = ''
    idx1 = s.index('[')
    idx2 = s.index(']')
    qreg = s[0:idx1]
    for i in range(idx1 + 1, idx2):
        if s[i].isdigit():
            num = num + s[i]
    return globals()[qreg][int(num)]

def get_creg_bit(s: str):
    """
    Parses 'cName[j]' into ('cName', j).
    E.g. 'creg[3]' -> ('creg', 3)
    """
    s = s.rstrip(';')
    idx1 = s.index('[')
    idx2 = s.index(']')
    name = s[0:idx1]
    bit = int(s[idx1+1:idx2])
    return name, bit

def frac_to_float(frac: str):
    """
    Converts a string representation of a fraction to a float.
    """
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
    """
    Converts an angle in string format to a float or Decimal.
    """
    try:
        if "/" in angle:
            theta = frac_to_float(angle)
        else:
            theta_str = angle
            if 'pi' in theta_str:
                theta = theta_str.replace('*', '')
                theta = theta.replace('pi', '')
                if theta == '-':
                    theta = "-1"
                elif theta == '':
                    theta = "1"
                theta = float(theta) * math.pi
            else:
                theta = Decimal(float(theta_str))
        return theta
    except:
        raise Exception(angle, "is not supported")

if_statement_regex = re.compile(
    r'^\(\s*(?P<creg>[A-Za-z_]\w*)(?:\[(?P<bit>\d+)\])?\s*==\s*(?P<val>\d+)\s*\)$'
)

def parse_condition(token: str, cregs: dict):
    m = if_statement_regex.match(token)
    if not m:
        raise Exception(f"Illegal if-condition: {token}")
    cname = m.group('creg')
    cbit = m.group('bit')
    val = int(m.group('val'))
    if cbit is not None:
        bit = int(cbit)
        size = cregs.get(cname, 1)
        if bit < 0 or bit >= size:
            raise Exception(f"if-condition bit out of range: {cname}[{bit}] (size {size})")
        if val not in (0,1):
            raise Exception("Bit-indexed condition must compare to 0 or 1.")
        return cname, bit, val
    else:
        return cname, None, val

def QASMparser(filename) -> Circuit:
    """
    Parses a QASM file and returns a Circuit object.
    """
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

        elif(line[0] == 'barrier'):
            raise Exception("Syntax error:" + line[0])
            
        elif line[0] == '//' or line[0] == 'OPENQASM' or line[0] == 'include':
            continue

        elif line[0] == 'creg':
            reg = line[1].rstrip(';')
            idx1 = reg.find('[')
            idx2 = reg.find(']')
            cname = reg[0:idx1]
            csize = int(reg[idx1+1:idx2])
            circuit.cregs[cname] = csize
            globals()[cname] = list(range(csize))

        elif line[0] == 'if':
            # pattern: ['if', '(c0[0]==1)', '<gate|measure>', ...]
            cname, cbit, cval = parse_condition(line[1], circuit.cregs)
            op = line[2]

            if op in ('id','z','y','x','h','s','sdg','t','tdg'):
                qubit = get_num(line[3])
                circuit.add_if(cname, cval, [op, qubit], cbit)
            else:
                raise Exception(f"Unsupported conditional op: {op}")
        
        elif line[0] == 'measure':
            qubit = get_num(line[1])
            cname, cbit = get_creg_bit(line[3])
            circuit.add_measure(qubit, cname, cbit)

        elif gate == 'cx' or gate == 'cz' or gate == 'cy' or \
                gate == 'swap' or gate == 'iswap' or \
                    gate == 'cs' or gate == 'csdg' or \
                        gate == 'csqrtx' or gate == 'csqrtxdg':
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

        elif gate == 'rz(pi)' or gate == 'rz(1.0*pi)':
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
            circuit.add_ccx(qubitc1, qubitc2, qubitr)

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

    circuit.translate_if_statements()
    for item in circuit.measurements:
        cname, cbit = item
        qubit = circuit.measurements[item]
        circuit.circ.append(['measure', qubit, cname, cbit])
    return circuit
