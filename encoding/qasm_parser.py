class Circuit:
    def __init__(self, translate_ccx):
        self.n = 0
        self.tgate = 0
        self.circ = []
        self.translate_ccx = translate_ccx

    def depth(self):
        return len(self.circ)
    
    def add_single(self,gate,qubit):
        if(gate == 't' or gate == 'tdg'):
            self.tgate += 1
        self.circ.append([gate, qubit])

    def add_double(self, gate, qubitc,qubitr):
        self.circ.append([gate, qubitc, qubitr])
    
    def add_ccx(self,qubitc1,qubitc2,qubitr):
        if self.translate_ccx:
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
        
    def add_measurement(self, multi_or_single):
        if multi_or_single:
            self.circ.append('mm')
        else:
            self.circ.append('m')

def get_num(s):
    num = ''
    idx1 = s.index('[')
    idx2 = s.index(']')
    qreg = s[0:idx1]
    for i in range(idx1 + 1, idx2):
        if s[i].isdigit():
            num = num + s[i]
    return globals()[qreg][int(num)]

#TODO: the translate CCX should be factored out to some optimization pass
#      or separate circuit converter tool
def qasm_parser(filename, translate_ccx) -> Circuit:
    qasm_list = []
    
    with open(filename,"r") as qasm:
        for line in qasm:
            qasm_list.append(line.rsplit())
    # qasm_list = qasm_list[2:]

    circuit = Circuit(translate_ccx)
    
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
            for i in range(0, num):
                globals()[qreg][i] = i + circuit.n + 1
            circuit.n += num

        elif(line[0] == 'barrier' or line[0] == 'measure'):
            raise Exception("Syntax error:" + line[0])
            
        elif line[0] == '//' or line[0] == 'OPENQASM' or line[0] == 'include' or line[0] == 'creg':
            continue

        elif gate == 'cx':
            if(line[1].count('[') == 1):
                qubitc = get_num(line[1])
                qubitr = get_num(line[2])
            else:
                qubits = line[1].split(',')
                qubitc = get_num(qubits[0])
                qubitr = get_num(qubits[1]) 
            circuit.add_double('cx',qubitc,qubitr)

        elif gate == 'cz':
            if(line[1].count('[') == 1):
                qubitc = get_num(line[1])
                qubitr = get_num(line[2])
            else:
                qubits = line[1].split(',')
                qubitc = get_num(qubits[0])
                qubitr = get_num(qubits[1]) 
            circuit.add_double('cz',qubitc,qubitr)

        elif gate == 'z' or gate == 'y' or gate == 'x' or gate == 'h':
            qubit = get_num(line[1])
            circuit.add_single(gate, qubit)

        elif gate == 'rz(pi)' or gate == 'rz(-pi)' or gate == 'rz(1.0*pi)':
            qubit = get_num(line[1])
            circuit.add_single('z',qubit)

        elif gate == 'rx(pi/2)' or gate == 'rx(-0.5*pi)' or gate == 'rx(0.5*pi)':
            qubit = get_num(line[1])
            circuit.add_single('y',qubit)

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
            circuit.add_ccx(qubitc1, qubitc2, qubitr, dagger)

        elif gate == "m":
            circuit.add_measurement()
            
        else:
            gate = line[0]
            raise Exception(str(gate) + " undefined.")

    return circuit