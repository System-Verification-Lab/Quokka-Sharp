import quokka_sharp as qk
import tempfile

# the path of the WMC tool
tool_invocation = "/Users/meij/Desktop/coding/COM-GPMC/GPMC/bin/gpmc -mode=1"
'''
Simulation
'''
# Parse the circuit
circuit1 = qk.encoding.QASMparser('test.qasm', translate_ccx = True)
# Encode the circuit (for computational base instaed of cliffordt, use `computational_basis = True`)
cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
# Set the input state to be all zero state.
cnf.leftProjectAllZero()
# Choose firstzero or allzero
cnf.add_measurement("firstzero")
# Export to benchmarks
cnf.write_to_file("circ.cnf")
prob = qk.Simulate(tool_invocation, cnf)
prob = abs(prob) # since the tool returns a complex number
## if `computational_basis = True` add
# prob = prob*prob
print(prob)

'''
Equivalence checking
'''
# Parse the circuit
circuit1 = qk.encoding.QASMparser("test.qasm", True)
# Parse another circuit
circuit2 = qk.encoding.QASMparser("test.qasm", True)
# Get (circuit1)^dagger(circuit2)
circuit2.dagger()
circuit1.append(circuit2)
# Get CNF for the merged circuit (for computational base instaed of cliffordt, use `computational_basis = True`)
cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
# Users can change the path for the cnf files by setting a different parameter to cnf_file_root, otherwise it would be in the tempfile.
# Users can set a different number N of paralleling processes. The default value is 16.
res = qk.CheckEquivalence(tool_invocation, cnf, check = "id", cnf_file_root = tempfile.gettempdir(), N=1)
print(res)