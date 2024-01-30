class Circuit:
    def __init__(self, translate_ccx):
        self.n = 0
        self.tgate = 0
        self.cxgate = 0
        self.circ = []
        self.translate_ccx = translate_ccx

    def depth(self):
        return len(self.circ)
    
    def add_single(self,gate,qubit):
        if(gate == 't' or gate == 'tdg'): self.tgate += 1
        self.circ.append([gate, qubit])

    def add_cx(self,qubitc,qubitr):
        self.cxgate += 1
        self.circ.append(['cx', qubitc, qubitr])
    
    def add_ccx(self,qubitc1,qubitc2,qubitr, dagger):
        if self.translate_ccx:
            if not dagger:
                self.add_single('h',qubitr)
                self.add_cx(qubitc2,qubitr)
                self.add_single('tdg',qubitr)
                self.add_cx(qubitc1,qubitr)
                self.add_single('t',qubitr)
                self.add_cx(qubitc2,qubitr)
                self.add_single('tdg',qubitr)
                self.add_cx(qubitc1,qubitr)
                self.add_single('t',qubitc2)
                self.add_single('t',qubitr)
                self.add_cx(qubitc1,qubitc2)
                self.add_single('h',qubitr)
                self.add_single('t',qubitc1)
                self.add_single('tdg',qubitc2)
                self.add_cx(qubitc1,qubitc2)
            else:
                self.add_cx(qubitc1,qubitc2)
                self.add_single('t',qubitc2) 
                self.add_single('tdg',qubitc1)   
                self.add_single('h',qubitr)  
                self.add_cx(qubitc1,qubitc2)   
                self.add_single('tdg',qubitr)    
                self.add_single('tdg',qubitc2)
                self.add_cx(qubitc1,qubitr)
                self.add_single('t',qubitr)
                self.add_cx(qubitc2,qubitr)
                self.add_single('tdg',qubitr)
                self.add_cx(qubitc1,qubitr)
                self.add_single('t',qubitr)
                self.add_cx(qubitc2,qubitr)
                self.add_single('h',qubitr)
        else:
            self.circ.append(['ccx', qubitc1, qubitc2, qubitr])
        
def ADD(circuit1, circuit2):
        circuit3 = Circuit(False)
        circuit3.n = circuit1.n + circuit2.n
        circuit3.tgate = circuit1.tgate + circuit2.tgate
        circuit3.cxgate = circuit1.cxgate + circuit2.cxgate
        circuit3.circ = circuit1.circ + circuit2.circ
        return circuit3

def get_num(s):
    num = ''
    idx1 = s.index('[')
    idx2 = s.index(']')
    qreg = s[0:idx1]
    for i in range(idx1 + 1, idx2):
        if s[i].isdigit():
            num = num + s[i]
    return globals()[qreg][int(num)]

def qasm_parser(filename, translate_ccx, dagger):
    qasm_list = []
    
    with open(filename,"r") as qasm:
        for line in qasm:
            qasm_list.append(line.rsplit())
    qasm_list = qasm_list[2:]
    gates = ['h','s','cx', 'ccx', 't','z','y','x','tdg', 'rx', 'rz']
    circuit = Circuit(translate_ccx)
    for line in qasm_list:
        if len(line) == 0:
            continue
        elif any(item in ["qreg"] for item in line):
            if not dagger:
                idx1 = line[1].find('[')
                idx2 = line[1].find(']')
                qreg = line[1][0:idx1]
                num = int(line[1][idx1+1:idx2])
                globals()[qreg] = [0] * num
                for i in range(0, num):
                    globals()[qreg][i] = i + circuit.n + 1
                circuit.n += num
            # use the same qreg
            else: continue
            
        elif(line[0] == 'barrier' or line[0] == 'measure'):
            raise Exception("Syntax error:" + line[0])            
        elif line[0] == '//' or line[0] == 'OPENQASM' or line[0] == 'include' or line[0] == 'creg':
            continue
        elif(any(item in gates for item in line[0])):
            gate = line[0]
            if gate == 'cx':
                if(line[1].count('[') == 1):
                    qubitc = get_num(line[1])
                    qubitr = get_num(line[2])
                else:
                    qubits = line[1].split(',')
                    qubitc = get_num(qubits[0])
                    qubitr = get_num(qubits[1]) 
                circuit.add_cx(qubitc,qubitr)
                
            elif gate == 'z' or gate == 'y' or gate == 'x' or gate == 'h':
                qubit = get_num(line[1])
                circuit.add_single(gate, qubit)
            elif gate == 'rz(pi)' or gate == 'rz(-pi)':
                qubit = get_num(line[1])
                circuit.add_single('z',qubit)

            elif gate == 's' or gate == "rz(0.5*pi)" or gate == "rz(pi/2)":
                if not dagger:
                    qubit = get_num(line[1])
                    circuit.add_single("s", qubit) 
                else:
                    qubit = get_num(line[1])
                    circuit.add_single("sdg", qubit) 
           
            elif gate == 'sdg' or gate == 'rz(-0.5*pi)' or gate == "rz(-pi/2)":
                if not dagger:
                    qubit = get_num(line[1])
                    circuit.add_single("sdg", qubit) 
                else:
                    qubit = get_num(line[1])
                    circuit.add_single("s", qubit) 

            elif gate == 't' or gate == "rz(0.25*pi)" or gate == "rz(pi/4)":
                if not dagger:
                    qubit = get_num(line[1])
                    circuit.add_single("t", qubit) 
                else:
                    qubit = get_num(line[1])
                    circuit.add_single("tdg", qubit)
                               
            elif gate == 'tdg' or gate == 'rz(-0.25*pi)' or gate == "rz(-pi/4)":
                if not dagger:
                    qubit = get_num(line[1])
                    circuit.add_single("tdg", qubit) 
                else:
                    qubit = get_num(line[1])
                    circuit.add_single("t", qubit)
            
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
            else:
                qubit = get_num(line[1])
                if not dagger:
                    circuit.add_single(gate,qubit)
                else:
                    circuit.add_single(gate + "dg",qubit)
        else:
            gate = line[0]
            raise Exception(str(gate) + " undefined.")
    if dagger:
        circuit.circ.reverse()
    
    return circuit

def eq_parser(file1, file2):
    circuit1 = qasm_parser(file1, False, False)
    circuit2 = qasm_parser(file2, False, True)
    circuit3 = ADD(circuit1, circuit2)
    return circuit3

if __name__ == '__main__':
    eq_parser("test.qasm", "test.qasm.opt.qasm")