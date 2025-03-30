import copy
import time
import quokka_sharp as qk
import traceback
import sys
import os.path as path
import os
import pandas as pd

from eq_run import main as eq_check

def comp_syn(qasmfile):
    circuit = qk.encoding.QASMparser(qasmfile, True)
    circuit.dagger()
    cnf = qk.encoding.QASM2CNF(circuit, computational_basis = True, ancillas=0)
    helper_folder = "./syn_comp_cnf_files/" + qasmfile.split('/')[-1].split('.')[0] + "/"
    print(helper_folder)
    if not os.path.exists(helper_folder):
        os.mkdir(helper_folder)
        
    glb_st = time.time()
    file = qk.Synthesis("", cnf, cnf_file_root=helper_folder, bin_search=False, initial_depth=0)
    glb_et = time.time()

def main(tool_path, qasmfile, eq_tool_path=None):
    helper_folder = "./syn_files/" + qasmfile.split('/')[-1].split('.')[0] + "/"
    if not os.path.exists(helper_folder):
        os.makedirs(helper_folder, exist_ok=True)
    for comp_basis, onehot, sandwich in [(True, False, False), (False, False, False), (False, True, False)]: #, (False, False, True), (False, True, True)
        glb_st = time.time()

        # Parse the circuits
        circuit = qk.encoding.QASMparser(qasmfile, True)
        circuit.dagger()
        cnf = qk.encoding.QASM2CNF(circuit, computational_basis = comp_basis, ancillas=0)

        res, weight, sol = qk.Synthesis(tool_path, cnf, cnf_file_root=helper_folder, fidelity_threshold=0.99, bin_search=False, initial_depth=0, onehot_xz = onehot, h_sandwich=sandwich)
        
        sol_folder = '/'.join(qasmfile.split('/')[:-2]) + "/" + qasmfile.split('/')[-2]+"_syn_solutions/"
        if not os.path.exists(sol_folder):
            os.mkdir(sol_folder)
        sol_file = sol_folder + ("comp" if comp_basis else "pauli") + "_" + ("1hot" if onehot else "full")+ "_" + ("HSan" if sandwich else "reg") + "_" + qasmfile.split('/')[-1] 

        with open(sol_file, "w") as file:
            file.write(sol)

        glb_et = time.time()
        print(f"\n *** *** ***\t Time: {glb_et-glb_st:.2f} \t Result: {res} \t best weight: {weight} \t", end="")

        if weight:
            sol_depth = qk.encoding.QASMparser(sol_file, True).depth()
            org_depth = qk.encoding.QASMparser(qasmfile, True).depth()
            print(f"#ofGates: {qk.encoding.QASMparser(sol_file, True).depth()} (org:{circuit.depth()}) \t")
        print(f"\t origin: {qasmfile}")
        print(f"\t solution: {sol_file}")
        print(f"\t ", end='')
        
        if res == "FOUND":
        #     print(f"FOUND \t weight: {weight:.2f} ", end="")
            if eq_tool_path is not None:
                eq_check(eq_tool_path, qasmfile1=qasmfile, qasmfile2=sol_file, expected_res="True",
                bases = ["paul"], check_types = ["cyclic", "linear", "cyclic_linear", "cyclic_noY"], to_csv=False)
        # elif res == "TIMEOUT":
        #     print(f"TIMEOUT \t best weight: {weight:.2f}", end="")
        # elif res == "CRASH":
        #     print(f"CRASH \t best weight: {weight:.2f}", end="")
        # else:
        #     print(f"ERROR - unrecognised result", end="")

        print()
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
