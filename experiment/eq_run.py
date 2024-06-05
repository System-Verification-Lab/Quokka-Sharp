import quokka_sharp as qk
import sys

def main(reg_tool_path, com_tool_path, qasmfile1, qasmfile2):
    
    # Parse the circuit
    circuit1 = qk.encoding.QASMparser(qasmfile1, True)
    # Parse another circuit
    circuit2 = qk.encoding.QASMparser(qasmfile2, True)
    # Get (circuit1)^dagger(circuit2)
    circuit2.dagger()
    circuit1.append(circuit2)
    # Get CNF for the merged circuit
    cnf = qk.encoding.QASM2CNF(circuit1)
    res = qk.CheckEquivalence(reg_tool_path, cnf)
    cnf_C = qk.encoding.QASM2COMCNF(circuit1)
    res_C = qk.CheckEquivalence(com_tool_path, cnf_C)
    assert res == res_C, f"Results are different: {res} vs {res_C}"
    
    

if __name__ == '__main__':
    if len(sys.argv) < 2:
        main("/Users/meij/GPMC/bin/gpmc -mode=1", "test.qasm", "test.qasm")
    else:
        reg_tool_path = sys.argv[1]
        com_tool_path = sys.argv[2]
        circ1 = sys.argv[3]
        circ2 = sys.argv[4]
        main(reg_tool_path, com_tool_path, circ1, circ2)
