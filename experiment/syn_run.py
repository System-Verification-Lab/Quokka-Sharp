import copy
import time
import quokka_sharp as qk
import traceback
import sys
import os.path as path
import pandas as pd

def main(tool_path, qasmfile, expected_res = None):
    # Parse the circuits
    circuit = qk.encoding.QASMparser(qasmfile, True)

    data = []
    cnf = qk.encoding.QASM2CNF(circuit, computational_basis = False)
    glb_st = time.time()
    res = qk.Synthesys(tool_path, cnf)
    glb_et = time.time()

    if res == "TIMEOUT":
        print(qasmfile)
        print("T", end="\n")
    else:
        print(qasmfile)
        print(res)
            

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
    try:
        main(tool_path, circ)
    except AssertionError:
        print(f"""\nAssertion Failed for call:\
                \n   tool_path = \"{tool_path}\"\
                \n   circ1 = \"{circ}\"
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
                \n   tool_path = \"{tool_path}\"\
                \n   circ1 = \"{circ}\"
                """)
        print()
        print(traceback.format_exc())
        print()
