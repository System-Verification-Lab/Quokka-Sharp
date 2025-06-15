import numpy as np
import os

def generate_random_circuit_qasm(n, d, seed=None, weighted_prob_cx_h_s_sdg_t_tdg = [1, 1, 1, 1, 1, 1], 
								 folder_name = "uniform", 
							     filename_format="random_q{n:02d}_d{d:03d}_s{seed:02d}.qasm"):
    """
    Generates a random quantum circuit in QASM format.
    Args:
        n (int): Number of qubits.
        m (int): Number of gate layers.
        seed (int, optional): Random seed for reproducibility. Defaults to None.
        weighted_prob_cx_h_s_sdg_t_tdg (list, optional): List of weights for the gates. Defaults to [1, 1, 1, 1, 1, 1].
        folder (str, optional): Folder in which to save the generated circuit. Defaults to "uniform/origin".
        filename_format (str, optional): Format for the output filename. Defaults to "random_{n:02d}_{m:03d}_{seed:02d}.qasm".
    """
    # Check if the number of weights matches the number of gates
    if len(weighted_prob_cx_h_s_sdg_t_tdg) != 6:
        raise ValueError("The length of weighted_prob_cx_h_s_sdg_t_tdg must be 6.")
    # Check if the sum of weights is zero
    if sum(weighted_prob_cx_h_s_sdg_t_tdg) == 0:
        raise ValueError("The sum of weighted_prob_cx_h_s_sdg_t_tdg must not be zero.")
    
    # if file already exists, skip
    folder = os.path.join(os.path.dirname(os.path.realpath(__file__)), "..", "benchmark", "random", folder_name, "origin")
    filename = os.path.join(folder, filename_format.format(n=n, d=d, seed=seed))
    if os.path.exists(filename):
        print(f"File {filename} already exists. Skipping...")
        return
    
    circuit_lines = []
    circuit_lines.append("OPENQASM 2.0;")
    circuit_lines.append("include \"qelib1.inc\";")
    circuit_lines.append(f'qreg q[{n}];')  # Declare qubits
    
    # gate list
    gates = ['cx', 'h', 's', 'sdg', 't', 'tdg']
    gate_weights = np.array(weighted_prob_cx_h_s_sdg_t_tdg)/np.sum(weighted_prob_cx_h_s_sdg_t_tdg)
    if all(x == gate_weights[0] for x in gate_weights):     # If all weights are equal
        gate_weights = None                           # set to None for uniform distribution

    rng = np.random.default_rng(seed) 

    for _ in range(d):
        qubits = rng.permutation(n) #  Random qubits order
        while len(qubits) > 0:
            gate = rng.choice(gates, p=gate_weights) # randomly select gate from the list with weights
            target = qubits[0]  # Get the first qubit from the shuffled list
            qubits = qubits[1:]  # Remove the first qubit from the list
            if gate == 'cx':
                if len(qubits) > 0:
                    control = qubits[0]  # Get the first qubit from the shuffled list
                    qubits = qubits[1:]  # Remove the first qubit from the list
                    circuit_lines.append(f'cx q[{control}],q[{target}];')
                else:
                    # If no target qubit is available, change the gate to a single qubit gate
                    gate = rng.choice(gates[1:], p=weighted_prob_cx_h_s_sdg_t_tdg[1:]/np.sum(weighted_prob_cx_h_s_sdg_t_tdg[1:]))
                    circuit_lines.append(f'{gate} q[{target}];')
                    
            else:
                circuit_lines.append(f'{gate} q[{target}];')

    # Create the output directory if it doesn't exist
    os.makedirs(folder, exist_ok=True)
    # Generate the filename
    filename = os.path.join(folder, filename_format.format(n=n, d=d, seed=seed))
    # Write the circuit to a file
    with open(filename, 'w') as f:
        f.write('\n'.join(circuit_lines))

    
if __name__ == "__main__":
    for n in [5]:
        for d in range(10, 101, 10):
            for seed in range(10):
                generate_random_circuit_qasm(n, d, seed=seed, 
                                             filename_format="random_q{n:02d}_d{d:03d}_s{seed:01d}.qasm")
    

    for n in [5, 10]:
        for d in [10, 50, 100]:
            for t_h_ratio in [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]:
                for seed in range(50):
                    generate_random_circuit_qasm(n, d, seed=seed, 
                                                 folder_name="TH_ratio",
                                                 filename_format="random_q{n:02d}_d{d:02d}_s{seed:01d}_THr"+str(t_h_ratio)+".qasm",
                                                 weighted_prob_cx_h_s_sdg_t_tdg=[1, 3*(1-t_h_ratio), 1, 1, 1.5*t_h_ratio, 1.5*t_h_ratio])
    