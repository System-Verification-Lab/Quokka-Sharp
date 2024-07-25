import copy
import time
import quokka_sharp as qk
import traceback
import sys
import os.path as path
import os
import pandas as pd

from eq_run import main as eq_check

def main(tool_path, qasmfile, eq_tool_path):
    sol_file = qasmfile+".syn_sol.qasm"
    # Parse the circuits
    circuit = qk.encoding.QASMparser(qasmfile, True)

    data = []
    cnf = qk.encoding.QASM2CNF(circuit, computational_basis = False)
    glb_st = time.time()
    folder = "./syn_cnf_files/" + qasmfile.split('/')[-1].split('.')[0]
    if not os.path.exists(folder):
        os.mkdir(folder)
    res = qk.Synthesys(tool_path, cnf, cnf_file_root=folder)
    glb_et = time.time()

    if res == "TIMEOUT":
        print(qasmfile)
        print("T", end="\n")
    else:
        print(qasmfile)
        print(".", end="\n")
        with open(sol_file, "w") as file:
            file.write(res)
        eq_check(eq_tool_path, qasmfile1=qasmfile, qasmfile2=sol_file, expected_res=True)
            

    # pandas dataframe for results
    data.append({'file': qasmfile, 
                'global time': glb_et - glb_st,
                'result': res
                })

    # convert data to pandas dataframe and add to file
    df = pd.DataFrame(data)
    pandas_file_name = 'syn_results.csv'
    if path.exists(pandas_file_name):
        df0 = pd.read_csv(pandas_file_name)
        df = pd.concat([df0, df], ignore_index=True)
    df.to_csv(pandas_file_name, index=False)



if __name__ == '__main__':
    tool_path = sys.argv[1]
    circ = sys.argv[2]
    eq_tool_path = sys.argv[3]
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
