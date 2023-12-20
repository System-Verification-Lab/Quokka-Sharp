class Circuit:
    def __init__(self):
        self.n = 0
        self.m = 0
        self.tgate = 0
        self.cxgate = 0
        self.circ = []
    
    def add_single(self,gate,qubit):
        self.m += 1
        if(gate == 't'): self.tgate += 1
        self.circ.append([gate, qubit])

    def add_cx(self,qubitc,qubitr):
        self.m += 1
        self.cxgate += 1
        self.circ.append(['cx', qubitc, qubitr])
     
    def add_z(self,qubit):
        self.add_single('s',qubit)
        self.add_single('s',qubit)
    
    def add_x(self,qubit):
        self.add_single('h',qubit)
        self.add_z(qubit)
        self.add_single('h',qubit)

    def add_tdg(self,qubit):
        self.add_z(qubit)
        self.add_single('s',qubit)
        self.add_single('t',qubit)
    
    def add_ccx(self,qubitc1,qubitc2,qubitr):
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
        
    def mea(self):
        self.m += 1        
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

def qasm_parser(filename):
    qasm_list = []
    
    with open(filename,"r") as qasm:
        for line in qasm:
            qasm_list.append(line.rsplit())
    qasm_list = qasm_list[2:]

    gates = ['h','s','cx', 'ccx', 't','z','x','tdg', 'rx', 'rz']

    circuit = Circuit()
    
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

        elif(line[0] == 'barrier' or line[0] == '//' or line[0] == 'measure'):
            continue
                
        if(any(item in gates for item in line[0])):
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
                circuit.add_z(qubit)
                        
            elif gate == 'x':
                qubit = get_num(line[1])
                circuit.add_x(qubit) 
                
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
            else: 
                qubit = get_num(line[1])
                if gate == "rz(0.5*pi)":
                    circuit.add_single('s',qubit)
                elif gate == 'rz(-0.5*pi)':
                    circuit.add_single('sdg',qubit)             
                else:
                    circuit.add_single(gate,qubit)

    
    circuit.mea()
    print(circuit.circ)
    return circuit

#     # with open(filename + '.parser', 'w') as file:
#     #     file.writelines(str(circuit.n)+" "+str(circuit.m)+'\n')
#     #     for item in circuit.circ:
#     #         file.writelines(item+'\n')
#     # path_list = filename.split('/')
#     # filename_list1 = path_list[len(path_list) - 1].split('.')
#     # filename_list2 = filename_list1[0].split('_')
#     # tcount = filename_list2[len(filename_list2) - 2]
#     # # print(tcount)
#     # print("N: "+ str(circuit.n) + " Clifford: " + str(circuit.m - circuit.tgate) + " T: " + str(circuit.tgate))