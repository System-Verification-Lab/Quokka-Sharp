import copy
import time
import quokka_sharp as qk
import traceback
import sys
import os.path as path
import pandas as pd

def main(tool_path, qasmfile1, qasmfile2,
         expected_res = None,
         bases = ["comp", "paul"], check_types = ["cyclic", "linear", "cyclic_linear", "cyclic_noY"],
         to_csv=True):
    
    # Parse the circuits
    circuit1 = qk.encoding.QASMparser(qasmfile1, translate_ccx=True)
    circuit2 = qk.encoding.QASMparser(qasmfile2, translate_ccx=True)

    # Get (circuit1)^dagger(circuit2)
    circuit2.dagger()
    circuit1.append(circuit2)

    # initial data
    data = []
    no_match_to_expected = []

    for basis in bases:
        for check_type in check_types:
            if basis in ["comp"] and check_type in ["linear", "cyclic_linear", "cyclic_noY"]:
                continue

            # Get CNF for the merged circuit
            cnf =  qk.encoding.QASM2CNF(circuit1,
                        computational_basis = (basis == "comp"), ancillas=0)

            root = "temp/"+qasmfile1.split('.')[0].split('/')[-1]+"/"
            glb_st = time.time()
            res = qk.CheckEquivalence(tool_path, cnf, check = check_type, N=(16 if check_type=="linear" else 1))
            glb_et = time.time()

            if res == "TIMEOUT":
                print("T", end="")
                pass
            else:
                if expected_res is not None:
                    if str(res) != expected_res:
                        print("W", end="")
                        no_match_to_expected.append((basis, check_type))
                    else:
                        print(".", end="")
                        pass

            if to_csv:
                # pandas dataframe for results
                data.append({
                            'match ex': 'match' if str(res) == expected_res else 'ERROR',
                            'basis': basis,
                            'technic': check_type,
                            'file1': qasmfile1, #.split("/")[-1],
                            'file2': qasmfile2, #.split("/")[-1],
                            'global time': glb_et - glb_st,
                            'result': res,
                            'expected_res': expected_res
                            })

    if no_match_to_expected:
        print(f"""\nFile dosn't match expected:\
                \n   circ1 = \"{qasmfile1}\"\
                \n   circ2 = \"{qasmfile2}\"\
                \n  for checkes: {no_match_to_expected}""")

    if to_csv:
        # convert data to pandas dataframe and add to file
        df = pd.DataFrame(data)
        # print()
        # print(df.to_csv(index=False, header=False, sep='\t'))

if __name__ == '__main__':
    if len(sys.argv) < 2:
        main("/Users/meij/GPMC/bin/gpmc -mode=1", "test.qasm", "test.qasm")
    else:
        tool_path = sys.argv[1]
        circ1 = sys.argv[2]
        circ2 = sys.argv[3]
        expected_res = sys.argv[4]
        try:
            main(tool_path, circ1, circ2, expected_res)
        except AssertionError:
            print(f"""\nAssertion Failed for call:\
                    \n   tool_path = \"{tool_path}\"\
                    \n   circ1 = \"{circ1}\"\
                    \n   circ2 = \"{circ2}\"""")
            print()
            print(traceback.format_exc())
            print()
        except FileNotFoundError:
            # print(f"\tCalled with: \n\t\t {circ1} \n\t\t {circ2})")
            # print(f"\tFile not found: {e.filename}")
            # print(f"nf", end="")
            pass
        except KeyboardInterrupt:
            raise KeyboardInterrupt
        except:
            print(f"""\nError for call:\
                    \n   tool_path = \"{tool_path}\"\
                    \n   circ1 = \"{circ1}\"\
                    \n   circ2 = \"{circ2}\"""")
            print()
            print(traceback.format_exc())
            print()
