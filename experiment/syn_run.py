import copy
import time
import quokka_sharp as qk
import traceback
import sys
import os.path as path
import os
import pandas as pd

from eq_run import main as eq_check

def main(tool_path, qasmfile, eq_tool_path=None):
    # Parse the circuits
    circuit = qk.encoding.QASMparser(qasmfile, True)

    circuit.dagger()

    helper_folder = "./syn_cnf_files/" + qasmfile.split('/')[-1].split('.')[0] + "/"
    if not os.path.exists(helper_folder):
        os.mkdir(helper_folder)
    for onehot in [False]:
        cnf = qk.encoding.QASM2CNF(circuit, computational_basis = False, ancillas=0)
        glb_st = time.time()
        res, weight, sol = qk.Synthesis(tool_path, cnf, cnf_file_root=helper_folder, bin_search=False, initial_depth=0, onehot_xz = onehot)
        glb_et = time.time()

        print(f"\n *** *** ***\t Time: {glb_et-glb_st:.2f} \t Result: {res} \t best weight: {weight:.5f} \t", end="")

        sol_folder = '/'.join(qasmfile.split('/')[:-2]) + "/" + qasmfile.split('/')[-2]+"_syn_solutions/"
        if not os.path.exists(sol_folder):
            os.mkdir(sol_folder)
        sol_file = sol_folder + qasmfile.split('/')[-1]

        with open(sol_file, "w") as file:
            file.write(sol)

        if weight:
            sol_depth = qk.encoding.QASMparser(sol_file, True).depth()
            org_depth = qk.encoding.QASMparser(qasmfile, True).depth()
            print(f"Depth: {qk.encoding.QASMparser(sol_file, True).depth()} (org:{circuit.depth()}) \t", end="")
        if res == "FOUND":
        #     print(f"FOUND \t weight: {weight:.2f} ", end="")
            if eq_tool_path is not None:
                eq_check(eq_tool_path, qasmfile1=qasmfile, qasmfile2=sol_file, expected_res="True",
                bases = ["paul"], check_types = ["id", "2n", "id_2n", "id_noY"], to_csv=False)
        # elif res == "TIMEOUT":
        #     print(f"TIMEOUT \t best weight: {weight:.2f}", end="")
        # elif res == "CRASH":
        #     print(f"CRASH \t best weight: {weight:.2f}", end="")
        # else:
        #     print(f"ERROR - unrecognised result", end="")

    print(f"\t solution: {sol_file}", end="")
    print()



if __name__ == '__main__':
    tool_path = sys.argv[1]
    circ = sys.argv[2]
    if len(sys.argv)>3:
        eq_tool_path = sys.argv[3] 
    else:
        eq_tool_path = None
    try:
        main(tool_path, circ, eq_tool_path)
    except AssertionError:
        print(f"""\nAssertion Failed for call:\
                \n   tool_path=\"{tool_path}\"\
                \n   circ=\"{circ}\"
                """)
        print()
        print(traceback.format_exc())
        print()
    except FileNotFoundError:
        # print(f"\tCalled with: \n\t\t {circ1} \n\t\t {circ2})")
        # print(f"\tFile not found: {e.filename}")
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
