from quokka_sharp.ecmc import EQ_check, EQ2CNF
from quokka_sharp.encoding.qasm_parser import QASMparser
from quokka_sharp.encoding.qasm2cnf import QASM2CNF
import sys

def main(tool_path, qasmfile1, qasmfile2):
    
    # Parse the circuit
    circuit1 = QASMparser(qasmfile1, True)
    # Parse another circuit
    circuit2 = QASMparser(qasmfile2, True)
    # Get (circuit1)^dagger(circuit2)
    circuit1.dagger()
    circuit1.merge(circuit2)
    # Get CNF for the merged circuit
    cnf = QASM2CNF(circuit1)

    # write to the cnf_file_list containing 2N cnf files under given root (tempfile.gettempdir() by default)
    # N is the number of qubits
    cnf_file_list = EQ2CNF(cnf, cnf_file_root="./cnf/")
    res = EQ_check(tool_path, cnf_file_list)
    print(res.result)
    

if __name__ == '__main__':
    tool_path = sys.argv[1]
    circ1 = sys.argv[2]
    circ2 = sys.argv[3]
    main(tool_path, circ1, circ2)
    # main("/Users/meij/GPMC/bin/gpmc", "test.qasm", "test.qasm.opt.qasm")