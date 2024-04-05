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
    res = qk.CheckEquivalence(tool_path, cnf)
    
    
    print(res)
    

if __name__ == '__main__':
    if len(sys.argv) < 2:
        main("/Users/meij/GPMC/bin/gpmc -mode=3", "test.qasm", "test.qasm")
    else:
        tool_path = sys.argv[1]
        circ1 = sys.argv[2]
        circ2 = sys.argv[3]
        main(tool_path, circ1, circ2)
