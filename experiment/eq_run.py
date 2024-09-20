import quokka_sharp as qk
import sys

def main(tool_path, qasmfile1, qasmfile2):
    
    # Parse the circuit
    circuit1 = qk.encoding.QASMparser(qasmfile1, True)
    # Parse another circuit
    circuit2 = qk.encoding.QASMparser(qasmfile2, True)
    # Get (circuit1)^dagger(circuit2)
    circuit2.dagger()
    circuit1.append(circuit2)
    # Get CNF for the merged circuit
    cnf = qk.encoding.QASM2CNF(circuit1)
    res = qk.CheckEquivalence(tool_path, cnf, N=16)
    
    
    print(res)
    

if __name__ == '__main__':
        tool_path = "/Users/meij/Desktop/coding/qc2cnf/tools/GPMC/bin/gpmc -mode=1"
        # circ1 = sys.argv[1]
        # circ2 = sys.argv[2]
        circ1 = "test.qasm"
        circ2 = "test.qasm"
        main(tool_path, circ1, circ2)
