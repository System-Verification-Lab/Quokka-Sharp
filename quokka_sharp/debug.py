import quokka_sharp as qk
import tempfile
import argparse
import os


# input files

parser = argparse.ArgumentParser(description="QuokkaSharp Debug Script")
parser.add_argument("--tmp", type=str, required=True, help="Path to write CNFs")
parser.add_argument("--qasmfile1", type=str, required=True, help="Path to the first QASM file")
parser.add_argument("--qasmfile2", type=str, required=False, help="Path to the first QASM file")
args = parser.parse_args()

cnf_dir = args.tmp
qasmfile1 = args.qasmfile1
base, ext = os.path.splitext(qasmfile1)
if base.endswith("1"):
    base = base[:-1]
#qasmfile2 = f"{base}2{ext}"

qasmfile2 = args.qasmfile2


# '''
# Simulation
# '''
# # Parse the circuit where the encoding will decompose ccx gate into Clifford+T.
# circuit1 = qk.encoding.QASMparser(qasmfile1)
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
circuit1 = qk.encoding.QASMparser(qasmfile1)
# Parse another circuit
circuit2 = qk.encoding.QASMparser(qasmfile2)
# Get (circuit1)(circuit2)^dagger
circuit2.dagger()
circuit1.append(circuit2)
# Get CNF for the merged circuit (for computational basis instead of Pauli, use `computational_basis = True`)
cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
# Users can set a different number N of parallel processes when the check mode is "linear". For other modes, "N" should be 1.
res = qk.CheckEquivalence(cnf, check = "linear", N=16)
# The result will be "True" if the circuits are equivalent, "False" if not,  "TIMEOUT" if the tool ran out of time, and  "MEMOUT" if the tool ran out of memory and crashed.
print(res)

'''
Verification
'''
# # Parse the circuit
# circuit1 = qk.encoding.QASMparser(qasmfile1)
# # Encode the circuit in Pauli basis (can change to True for the computational basis)
# cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
# # Verify for pre and post conditions given in dictionary format
# res = qk.Verify(cnf, precons={0:0}, postcons={0:0})
# # The result will be "True" if the conditions hold, "False" if not,  "TIMEOUT" if the tool ran out of time, and  "MEMOUT" if the tool ran out of memory and crashed.

'''
Synthesis
'''
# Change the tool_invocation in config.json to be the maximum weighted model counter.

# # Parse the circuits
# circuit = qk.encoding.QASMparser(qasmfile1)
# # Get (circuit)^dagger
# circuit.dagger()
# # Get CNF for the circuit in Pauli basis (can change to True for the computational basis)
# cnf = qk.encoding.QASM2CNF(circuit, computational_basis = False)
# result, weight, solution, layers = qk.Synthesis(cnf, cnf_dir)
# print(f"Result: {result}")
# print(f"Weight: {weight}")
# print(f"Solution: {solution}")
# print(f"Layers: {layers}")
# The result will be "FOUND" if a solution was found, 
# "CRASH" if there was a problem such as an invalid cnf or not enough mem, 
# "ERROR#" if the tool finished with an error, and "TIMEOUT" if the tool ran out of time.
# In the case of "TIMEOUT", the best solution found will be returned.
# weight will give the achieved fidelity (should be 1 if "FOUND", less if "TIMEOUT") of the (best) found circuit.
# solution will be a string in a qasm file format describing the (best) circuit found, achieving the mentioned weight.
# 'layers' is an integer stating the achieved minimal depth