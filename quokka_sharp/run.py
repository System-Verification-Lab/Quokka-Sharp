from quokka_sharp.ecmc import EQ_check, EQ2CNF
from quokka_sharp.qcmc import Sim, Sim2CNF
from quokka_sharp.encoding.qasm_parser import QASMparser
from quokka_sharp.encoding.qasm2cnf import QASM2CNF

def main(qasmfile1, qasmfile2):
    # the path of the WMC tool
    tool_path = "/Users/meij/GPMC/bin/gpmc"
    # cnf_file_root = " "
    
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
    
    # Parse another circuit
    circuit2 = QASMparser(qasmfile2, True)
    # Get (circuit1)^dagger(circuit2)
    circuit1.dagger()
    circuit1.merge(circuit2)
    # Get CNF for the merged circuit
    cnf = QASM2CNF(circuit1)

    # write to the cnf_file_list containing 2N cnf files under given root (tempfile.gettempdir() by default)
    # N is the number of qubits
    cnf_file_list = EQ2CNF(cnf, cnf_file_root="./")
    res = EQ_check(tool_path, cnf_file_list)
    print(res.result)
    

if __name__ == '__main__':
    main("test.qasm", "test2.qasm")