from quokka_sharp.qcmc import Sim, Sim2CNF
from quokka_sharp.encoding.qasm_parser import QASMparser
from quokka_sharp.encoding.qasm2cnf import QASM2CNF

def main(tool_path, qasmfile1):
    
    # Parse the circuit
    circuit1 = QASMparser(qasmfile1, True)
    # Encode the circuit
    cnf_circ1 = QASM2CNF(circuit1)
    
    # Add constraints of measurement outcome 0 on the first qubit and initial state
    cnf_firstzero = Sim2CNF(cnf_circ1, "firstzero")
    # Write to weighted cnf file 
    cnf_firstzero.write_to_file("circ1_firstzero.cnf")
    # Solving cnf file by a given tool
    res = Sim(tool_path, cnf_firstzero, "circ1_firstzero.cnf", "firstzero")
    print(res.prob)

    # Add constraints of measurement outcome 0 on the all qubits and initial state
    cnf_allzero = Sim2CNF(cnf_circ1, "allzero")
    # Write to weighted cnf file 
    cnf_allzero.write_to_file("circ1_allzero.cnf")
    # Solving cnf file by a given tool
    res = Sim(tool_path, cnf_allzero, "circ1_allzero.cnf", "allzero")
    print(res.prob)    
    
if __name__ == '__main__':
    main("/Users/meij/GPMC/bin/gpmc", "test.qasm")