import quokka_sharp as qk
import tempfile


# input files
benchdir = "/Users/muhos/Desktop/Quantum/repositories/quokka"
qasmfile1 = benchdir + "/test1.qasm"
qasmfile2 = benchdir + "/test2.qasm"

# '''
# Simulation
# '''
# # Parse the circuit where the encoding will decompose ccx gate into Clifford+T.
# circuit1 = qk.encoding.QASMparser(qasmfile1, translate_ccx = True)
# # Encode the circuit (for computational basis, use `computational_basis = True`)
# cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
# # Set the input state to be the all-zero state |0...0>.
# cnf.leftProjectAllZero()
# # Add measurement specification. We offer 'allzero' as a parameter for a simple way to specify a measure with all-zero state.
# cnf.add_measurement({0:0})
# # Export to benchmarks
# cnf.write_to_file("circ.cnf", )
# prob = qk.Simulate(cnf)

# The result will be a float if the probability was computed,  "TIMEOUT" if the tool ran out of time, and  "MEMOUT" if the tool ran out of memory and crashed.

# '''
# Equivalence checking
# '''
# Parse the circuit
circuit1 = qk.encoding.QASMparser(qasmfile1, True)
# Parse another circuit
circuit2 = qk.encoding.QASMparser(qasmfile2, True)
# Get (circuit1)(circuit2)^dagger
circuit2.dagger()
circuit1.append(circuit2)
# Get CNF for the merged circuit (for computational basis instead of Pauli, use `computational_basis = True`)
cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
# Users can set a different number N of parallel processes when the check mode is "linear". For other modes, "N" should be 1.
res = qk.CheckEquivalence(cnf, check = "linear", N=16)
# The result will be "True" if the circuits are equivalent, "False" if not,  "TIMEOUT" if the tool ran out of time, and  "MEMOUT" if the tool ran out of memory and crashed.
print(res)