import quokka_sharp as qk
import sys

circuit1 = qk.encoding.QASMparser(sys.argv[1], True)
cnf = qk.encoding.QASM2CNF(circuit1)
cnf.write_to_file(sys.argv[2])