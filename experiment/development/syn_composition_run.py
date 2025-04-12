import copy
import time
import quokka_sharp as qk
import traceback
import sys
import os
import json

def main(tool_path, composition_file, eq_tool_path):
    
    print(composition_file)
    with open(composition_file, 'r') as file:
        comp_dicts = json.load(file)

    for gate, comp_dict in comp_dicts.items():
        print(f"\n\nGate: {gate} \t ", end="")
        helper_folder = "./syn_cnf_files/" + gate + "/"
        if not os.path.exists(helper_folder):
            os.mkdir(helper_folder)
        if "qasm file" in comp_dict.keys():
            cnf = qk.encoding.Composition2CNF(comp_dict, ancillas=0)
            tmp_file = f"./temp_check/{gate}"
            cnf.write_to_file(tmp_file, syntesis_fomat=True)
            circ = qk.encoding.QASMparser(comp_dict["qasm file"], translate_ccx=True)
            tmp_file_ref = f"./temp_check/{gate}_ref"
            cnf_ref = qk.encoding.QASM2CNF(circ, False, True, 0)
            print(cnf_ref.vars)
            cnf_ref.write_to_file(tmp_file_ref, syntesis_fomat=True)
            circ.dagger()
            cnf.encode_circuit(circ)
            res = qk.CheckEquivalence(eq_tool_path, cnf, check = "id", N=1, cnf_file_root = helper_folder[:-1])
            print(res, end="")
        else:
            print("N/A", end="")
        
        continue

        cnf = qk.encoding.Composition2CNF(comp_dict)
        glb_st = time.time()
        res, weight, sol = qk.Synthesis(tool_path, cnf, cnf_file_root=helper_folder, bin_search=False, onehot_xz=True)
        glb_et = time.time()
        print(f"\tRuntime: {glb_et-glb_st:.2f}", end="")

        if res == "TIMEOUT":
            print("\tTIMEOUT")
        else:
            # print(".", end="")

            sol_folder = '/'.join(composition_file.split('/')[:-1]) + "/" + "_syn_composition_solutions/"
            if not os.path.exists(sol_folder):
                os.mkdir(sol_folder)
            sol_file = sol_folder + gate

            if res == "CONFLICT":
                with open(sol_file, "w") as file:
                    file.write(sol)
                print(f"\tCONFLICT \t {sol_file}")
            elif res[:5] == "ERROR":
                with open(sol_file, "w") as file:
                    file.write(sol)
                print(f"\t{res} \t {sol_file}")
            else:
                with open(sol_file, "w") as file:
                    file.write(sol)
                cnf = qk.encoding.Composition2CNF(comp_dict)
                circuit = qk.encoding.QASMparser(sol_file, translate_ccx=True)
                cnf.encode_circuit(circuit)
                res = qk.CheckEquivalence(eq_tool_path, cnf, check = "2n", N=16)
                print(f"\t {res} \t Depth:{circuit.depth()} \t Solution: {sol_file}")

    print()
    print()


if __name__ == '__main__':
    tool_path = sys.argv[1]
    composition_file = sys.argv[2]
    eq_tool_path = sys.argv[3]
    try:
        main(tool_path, composition_file, eq_tool_path)
    except AssertionError:
        print(f"""\nAssertion Failed for call:\
                \n   tool_path=\"{tool_path}\"\
                \n   composition_file=\"{composition_file}\"
                """)
        print()
        print(traceback.format_exc())
        print()
    except FileNotFoundError:
        # print(f"\tCalled with: \n\t\t {composition_file})")
        # print(f"\tFile not found: {e.filename}")
        print(f"nf", end="")
        print(traceback.format_exc())
    except KeyboardInterrupt:
        print("KeyboardInterrupt")
    except:
        print(f"""\nError for call:\
                \n   tool_path=\"{tool_path}\"\
                \n   composition_file=\"{composition_file}\"
                """)
        print()
        print(traceback.format_exc())
        print()
