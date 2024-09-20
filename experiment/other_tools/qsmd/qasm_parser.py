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
        if(gate == 't'): self.tgate += 1
        self.circ.append([gate, qubit])

    def add_cx(self,qubitc,qubitr):
        self.cxgate += 1
        self.circ.append(['cx', qubitc, qubitr])

    def add_tdg(self,qubit):
        self.tgate += 1
        self.add_single('tdg',qubit)
    
    def add_ccx(self,qubitc1,qubitc2,qubitr):
        if self.translate_ccx:
            self.add_single('h',qubitr)
            self.add_cx(qubitc2,qubitr)
            self.add_tdg(qubitr)
            self.add_cx(qubitc1,qubitr)
            self.add_single('t',qubitr)
            self.add_cx(qubitc2,qubitr)
            self.add_tdg(qubitr)
            self.add_cx(qubitc1,qubitr)
            self.add_single('t',qubitc2)
            self.add_single('t',qubitr)
            self.add_cx(qubitc1,qubitc2)
            self.add_single('h',qubitr)
            self.add_single('t',qubitc1)
            self.add_tdg(qubitc2)
            self.add_cx(qubitc1,qubitc2)
        else:
            self.circ.append(['ccx', qubitc1, qubitc2, qubitr])
        
    def mea(self):
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

def qasm_parser(filename, translate_ccx):
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
                
            elif gate == 'z':
                qubit = get_num(line[1])
                circuit.add_single('z',qubit)
                        
            elif gate == 'y':
                qubit = get_num(line[1])
                circuit.add_single('y',qubit) 

            elif gate == 'x':
                qubit = get_num(line[1])
                circuit.add_single('x', qubit) 
                
            elif gate == 'tdg':
                qubit = get_num(line[1])
                circuit.add_tdg(qubit) 

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
                circuit.add_ccx(qubitc1,qubitc2,qubitr)
            elif gate == "rz(0.5*pi)" or gate == "rz(pi/2)":
                qubit = get_num(line[1])
                circuit.add_single('s',qubit)
            elif gate == 'rz(-0.5*pi)' or gate == "rz(-pi/2)":
                qubit = get_num(line[1])
                circuit.add_single('sdg',qubit)
            elif gate == 'rz(pi)' or gate == 'rz(-pi)':
                qubit = get_num(line[1])
                circuit.add_single('z',qubit)
            else:
                qubit = get_num(line[1])
                circuit.add_single(gate,qubit)
        else:
            gate = line[0]
            raise Exception(str(gate) + " undefined.")
    
    circuit.mea()
    return circuit

    # with open(filename + '.parser', 'w') as file:
    #     file.writelines(str(circuit.n)+" "+str(circuit.m)+'\n')
    #     for item in circuit.circ:
    #         file.writelines(item+'\n')
    # path_list = filename.split('/')
    # filename_list1 = path_list[len(path_list) - 1].split('.')
    # filename_list2 = filename_list1[0].split('_')
    # tcount = filename_list2[len(filename_list2) - 2]
    # # print(tcount)
    # print("N: "+ str(circuit.n) + " Clifford: " + str(circuit.m - circuit.tgate) + " T: " + str(circuit.tgate))