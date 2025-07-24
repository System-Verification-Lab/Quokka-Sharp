import quokka_sharp as qk
import sys

circuit1 = qk.encoding.QASMparser("test.qasm", True)
cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False, ganak=True)
cnf.leftProjectAllZero()
cnf.add_measurement("allzero")
print(cnf.vars.XVar)
cnf.write_to_file("test.cnf", projectionset = [cnf.vars.ZVar, cnf.vars.XVar])
# cnf.write_to_file("test.cnf")