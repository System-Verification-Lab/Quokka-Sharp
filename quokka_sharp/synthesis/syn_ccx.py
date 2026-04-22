import quokka_sharp as qk
import tempfile
import argparse
import os
import sympy as sy

parser = argparse.ArgumentParser(description="QuokkaSharp Synthesis Script")
parser.add_argument("--tmp", type=str, required=True, help="Path to write CNFs")
parser.add_argument("--qasmfile", type=str, required=True, help="Path to the first QASM file")
args = parser.parse_args()

cnf_dir = args.tmp
qasmfile = args.qasmfile

'''
Synthesis
'''

# Parse the circuits
circuit = qk.encoding.QASMparser(qasmfile, False)
# Get (circuit)^dagger
circuit.dagger()
# Get CNF for the circuit in Pauli basis (can change to True for the computational basis)
cnf = qk.encoding.QASM2CNF(circuit, computational_basis = False)
result, weight, solution, layers = qk.Synthesis(cnf, cnf_dir, onehot_xz = True)
print("Solution: ")
print(solution)
# The result will be "FOUND" if a solution was found, 
# "CRASH" if there was a problem such as an invalid cnf or not enough mem, 
# "ERROR#" if the tool finished with an error, and "TIMEOUT" if the tool ran out of time.
# In the case of "TIMEOUT", the best solution found will be returned.
# weight will give the achieved fidelity (should be 1 if "FOUND", less if "TIMEOUT") of the (best) found circuit.
# solution will be a string in a qasm file format describing the (best) circuit found, achieving the mentioned weight.
# 'layers' is an integer stating the achieved minimal depth