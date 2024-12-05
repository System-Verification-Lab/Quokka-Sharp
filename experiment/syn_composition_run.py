import copy
import time
import quokka_sharp as qk
import traceback
import sys
import os.path as path
import os
import pandas as pd
import json

from eq_run import main as eq_check

def main(tool_path, composition_file, eq_tool_path):
    helper_folder = "./syn_cnf_files/" # + composition_file.split('/')[-1].split('.')[0] + "/"
    if not os.path.exists(helper_folder):
        os.mkdir(helper_folder)
    
    print(composition_file)
    with open(composition_file, 'r') as file:
        comp_dicts = json.load(file)

    for gate, comp_dict in comp_dicts.items():
        print(f"Gate: {gate} \t ", end="")
        if "qasm file" in comp_dict.keys():
            cnf = qk.encoding.Composition2CNF(comp_dict)
            cnf.write_to_file(f"./temp_check/{gate}", syntesis_fomat=True)
            circ = qk.encoding.QASMparser(comp_dict["qasm file"], translate_ccx=True)
            circ.dagger()
            cnf.encode_circuit(circ)
            res = qk.CheckEquivalence(eq_tool_path, cnf, check = "2n", N=16)
            print(res)

        continue

        cnf = qk.encoding.Composition2CNF(comp_dict)
        glb_st = time.time()
        res = qk.Synthesys(tool_path, cnf, cnf_file_root=helper_folder, incremental=False, inc_step=1, onehot_xz=True)
        glb_et = time.time()

        if res == "TIMEOUT":
            print("T", end="")
        elif res == "CONFLICT":
            print("C", end="")
        else:
            # print(".", end="")

            sol_folder = '/'.join(composition_file.split('/')[:-1]) + "/" + "_syn_composition_solutions/"
            if not os.path.exists(sol_folder):
                os.mkdir(sol_folder)
            sol_file = sol_folder + gate
            with open(sol_file, "w") as file:
                file.write(res)

            if "qasm file" in comp_dicts.keys():
                eq_check(eq_tool_path, qasmfile1=comp_dicts["qasm file"], qasmfile2=sol_file, expected_res="True", bases = ["paul"], check_types = ["2n"])
            else:
                cnf = qk.encoding.Composition2CNF(comp_dict)
                cnf.encode_circuit(QASMparser(sol_file), translate_ccx=True)
                res = qk.CheckEquivalence(eq_tool_path, cnf, check = "2n", N=16)
                assert res in ["TIMEOUT", True]

    # # pandas dataframe for results
    # data.append({'file': qasmfile, 
    #             'global time': glb_et - glb_st,
    #             'result': res
    #             })

    # # convert data to pandas dataframe and add to file
    # df = pd.DataFrame(data)
    # pandas_file_name = 'syn_results.csv'
    # if path.exists(pandas_file_name):
    #     df0 = pd.read_csv(pandas_file_name)
    #     df = pd.concat([df0, df], ignore_index=True)
    # df.to_csv(pandas_file_name, index=False)


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
