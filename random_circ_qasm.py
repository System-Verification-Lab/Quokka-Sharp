import random, os, shutil

def generate_random_qasm_circuit(n, m, t_prob):
    circuit_lines = []
    circuit_lines.append(f'qreg q[{n}];')  # Declare qubits
    
    # Generate random gate list
    gates = ['s', 'h', 'cx', 't']
    cx_prob = 0.2
    s_prob = (1 - cx_prob - t_prob) / 2
    h_prob = s_prob
    weight = [s_prob, h_prob, cx_prob, t_prob]
    
    # for _ in range(m):
    #     gate = random.choices(gates, weight)
    #     circuit_list.append(gate[0])
        
    # for gate in circuit_list:
    #     if gate == 'cx':
    #         control = random.randint(0, n-1)
    #         target = random.choice([i for i in range(n) if i != control])
    #         circuit_lines.append(f'cx q[{control}],q[{target}];')
    #     else:
    #         qubit = random.randint(0, n-1)
    #         circuit_lines.append(f'{gate} q[{qubit}];')
    for _ in range(m):
        qubit = [0] * n
        for i in range(n):
            if qubit[i] == 0: 
                gate = random.choices(gates, weight)
                gate = gate[0]
                if gate == 'cx':
                    control = i
                    try:
                        target = random.choice([j for j in range(n) if j != control and qubit[j] == 0])                  
                        qubit[target] = 1; qubit[control] = 1
                        p = random.uniform(0,1)
                        if p > 0.5:
                            circuit_lines.append(f'cx q[{control}],q[{target}];')
                        else: 
                            circuit_lines.append(f'cx q[{target}],q[{control}];')
                    except:
                        gate = random.choices(['h','s','t'], [h_prob/(1-cx_prob), s_prob/(1-cx_prob) ,t_prob/(1-cx_prob)])
                        gate = gate[0]
                        circuit_lines.append(f'{gate} q[{i}];')
                        qubit[i] = 1
                else:
                    circuit_lines.append(f'{gate} q[{i}];')
                    qubit[i] = 1
            else: continue
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


def main():
    print("")
    random_circuit = generate_random_qasm_circuit(10000, 30, .2)
    circuit_content = '\n'.join(random_circuit)
    WriteFile(".", "random.qasm", circuit_content)

    
if __name__ == "__main__":
    main() 
