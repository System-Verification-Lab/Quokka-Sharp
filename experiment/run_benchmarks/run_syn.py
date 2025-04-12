import time
import quokka_sharp as qk
import traceback
import sys
import os

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
    try:
        main(tool_path, circ)
    except AssertionError:
        print(f"""\nAssertion Failed for call:\
                \n   tool_path=\"{tool_path}\"\
                \n   circ=\"{circ}\"
                """)
        print()
        print(traceback.format_exc())
        print()
    except FileNotFoundError:
        print(f"nf", end="")
    except KeyboardInterrupt:
        print("KeyboardInterrupt")
    except:
        print(f"""\nError for call:\
                \n   tool_path=\"{tool_path}\"\
                \n   circ=\"{circ}\"
                """)
        print()
        print(traceback.format_exc())
        print()
