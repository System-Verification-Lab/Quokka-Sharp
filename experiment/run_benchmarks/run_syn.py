import time
import quokka_sharp as qk
import traceback
import sys

def main(tool_path, qasmfile):
        glb_st = time.time()

        # Parse the circuits
        circuit = qk.encoding.QASMparser(qasmfile, True)
        circuit.dagger()
        cnf = qk.encoding.QASM2CNF(circuit, computational_basis = False)

        res, weight, sol, layers = qk.Synthesis(tool_path, cnf, onehot_xz = True, printing = True)
        
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
    tool_path = sys.argv[1]
    circ = sys.argv[2]
    main(tool_path, circ)
