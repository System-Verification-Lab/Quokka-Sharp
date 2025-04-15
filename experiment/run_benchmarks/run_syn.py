import argparse
import time
import quokka_sharp as qk
import sys

def main(tool_path, qasmfile, basis, fid):
        glb_st = time.time()

        # Parse the circuits
        circuit = qk.encoding.QASMparser(qasmfile, True)
        circuit.dagger()
        cnf = qk.encoding.QASM2CNF(circuit, computational_basis = (basis == "comp"))

        res, weight, sol, layers = qk.Synthesis(tool_path, cnf, onehot_xz = False, printing = True, fidelity_threshold = fid) #((fid == 1) and (basis == "pauli"))
        
        glb_et = time.time()
        runtime = glb_et - glb_st

        print()
        print()

        print("Final results: ")
        print(f"  Input Circuit: {qasmfile}")
        print(f"  Runtime: {runtime}")
        print(f"  Result: {res}")
        print(f"  Number of Layers: {layers}")
        print(f"  Achived Weight: {weight}")
        print(f"  Solution QASM:")
        print(sol)

        print()
        print()



if __name__ == '__main__':
    tool_path = "../../../d4v2/build/maxT_static "

    parser = argparse.ArgumentParser(description='Simulating quantum circuits with WMC')
    parser.add_argument('filename')
    parser.add_argument('-b', '--basis', choices=['comp', 'pauli'])
    parser.add_argument('-f', '--fidelity_threshold', type=float, default=1)
    args = parser.parse_args()
    main(tool_path, args.filename, args.basis, args.fidelity_threshold)
