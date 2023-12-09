import random, os, shutil, sys

def generate_random_qasm_circuit(n, m, t_prob):
    circuit_lines = []
    circuit_lines.append(f'qreg q[{n}];')  # Declare qubits
    
    # Generate random gate list
    gates = ['s', 'h', 'cx', 't']
    gates2 = ['s', 'h', 't']
    cx_prob = 0.2
    s_prob = (1 - cx_prob - t_prob) / 2
    h_prob = s_prob
    weight = [s_prob, h_prob, cx_prob, t_prob]
    weight2 = [h_prob/(1-cx_prob), s_prob//(1-cx_prob),t_prob/(1-cx_prob)]

    cw = [weight[0], weight[0]+weight[1], weight[0]+weight[1]+weight[2], 1]

    for _ in range(m):
        qubit = [0] * n
        extra = 0
        for i in range(n):
            if qubit[i] == 0: 
                p = random.random()
                if p < cw[0]:
                    gate = 's'
                elif p < cw[1]:
                    gate = 'h'
                elif p < cw[2]:
                    gate = 'cx'
                else:
                    gate = 't'
                # gate = random.choices(gates, weight, k = 1)
                # gate = gate[0]
                if gate == 'cx':
                    if n != i + extra + 1:
                        while 1:
                            target = random.randint(i+1, n-1)
                            if qubit[target] == 0:
                                break
                        # target = random.choice([j for j in range(n) if j != i and qubit[j] == 0])                  
                        qubit[target] = 1
                        p = random.uniform(0,1)
                        if p > 0.5:
                            circuit_lines.append(f'cx q[{i}],q[{target}];')
                        else: 
                            circuit_lines.append(f'cx q[{target}],q[{i}];')
                        extra = extra + 1
                    else:
                        gate = random.choices(gates2, weight2, k = 1)[0]
                        circuit_lines.append(f'{gate} q[{i}];')
                        qubit[i] = 1
                else:
                    circuit_lines.append(f'{gate} q[{i}];')
                qubit[i] = 1
            else:
                extra = extra - 1

    return circuit_lines

        

def WriteFile(folder, filename, circuit_content):
    with open(folder + "/" + filename, 'w') as file:
        file.write("OPENQASM 2.0;\n")
        file.write("include \"qelib1.inc\";\n\n")
        file.write(circuit_content)

def Tscale(n,m):
    folder = f"random_{n}_{m}"
    folder = os.getcwd() + "/benchmark/random/" + folder
    if os.path.isdir(folder):
        shutil.rmtree(folder)
    os.mkdir(folder)
    for i in range(1,30,5):
        for j in range(1):
            random_circuit = generate_random_qasm_circuit(n, m, i * 0.01)
            circuit_content = '\n'.join(random_circuit)
            if i < 10:
                filename = f"random_{n}_0{i}_{j}.qasm"
            else:        
                filename = f"random_{n}_{i}_{j}.qasm"
            WriteFile(folder, filename, circuit_content)

def QubitScale(n_start, n_end, n_step, m, ProbT):
    folder = f"qubitscale_{m}"
    folder = os.getcwd() + "/benchmark/random/" + folder
    if os.path.isdir(folder):
        shutil.rmtree(folder)
    os.mkdir(folder)
    for i in range(n_start, n_end + 1, n_step):
        random_circuit = generate_random_qasm_circuit(i, m, ProbT)
        circuit_content = '\n'.join(random_circuit)
        if i == 10000:
            filename = f"qubitscale_{i}_{m}.qasm"
        elif i >= 1000:
            filename = f"qubitscale_0{i}_{m}.qasm"
        elif i >= 100:
            filename = f"qubitscale_00{i}_{m}.qasm"
        else:
            filename = f"qubitscale_000{i}_{m}.qasm"
        WriteFile(folder, filename, circuit_content)
    return folder

def GateScale(n, m_start, m_end, m_step, ProbT):
    folder = f"gatescale_{n}"
    folder = os.getcwd() + "/benchmark/random/" + folder
    if os.path.isdir(folder):
        shutil.rmtree(folder)
    os.mkdir(folder)
    for i in range(m_start, m_end + 1, m_step):
        random_circuit = generate_random_qasm_circuit(n, i, ProbT)
        circuit_content = '\n'.join(random_circuit)
        if i < 10:
            filename = f"gatescale_{n}_00{i}.qasm"
        elif i < 100:
            filename = f"gatescale_{n}_0{i}.qasm"
        else:
            filename = f"gatescale_{n}_{i}.qasm"
        WriteFile(folder, filename, circuit_content)
    return folder
               
def DataPoint(n, m, Tprob):
    folder = os.getcwd() + "/benchmark/random/datapoint"
    if os.path.isdir(folder):
        shutil.rmtree(folder)
    os.mkdir(folder)
    random_circuit = generate_random_qasm_circuit(n, m, Tprob)
    circuit_content = '\n'.join(random_circuit)
    filename = f"q{n}g{m}.qasm"
    WriteFile(folder, filename, circuit_content)
    return folder + '/' + filename


def main(filename, n, d, r):
    print("")
    random_circuit = generate_random_qasm_circuit(n, d, r)
    circuit_content = '\n'.join(random_circuit)
    WriteFile(".", filename, circuit_content)

    
if __name__ == "__main__":
    if len(sys.argv) < 2:
        exit(1)

    qubits = 1000
    depth  = 30
    Trate  = .2
    
    if len(sys.argv) > 2:
        qubits = int(sys.argv[2])
    elif len(sys.argv) > 3:
        qubits = int(sys.argv[3])
    elif len(sys.argv) > 4:
        qubits = float(sys.argv[4])
    main(sys.argv[1], qubits, depth, Trate) 
