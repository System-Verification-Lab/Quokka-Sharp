import quokka_sharp as qk
import sys

def main(tool_invocation, qasmfile1):
    
    # Parse the circuit
    circuit1 = qk.encoding.QASMparser(qasmfile1, True)
    # Encode the circuit
    cnf = qk.encoding.QASM2CNF(circuit1)
    cnf.add_measurement("firstzero")
    cnf.write_to_file("circ.cnf")
    prob = qk.Simulate(tool_invocation, "circ.cnf")
    print(prob)

if __name__ == '__main__':
    if len(sys.argv) < 2:
        main("/Users/meij/GPMC/bin/gpmc -mode=3", "test.qasm")
    else:
        tool_invocation = sys.argv[1]
        circ1 = sys.argv[2]
        main(tool_invocation, circ1)
