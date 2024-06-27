import quokka_sharp as qk
import traceback
import sys

def main(tool_path, qasmfile1, qasmfile2):
    # Parse the circuits
    circuit1 = qk.encoding.QASMparser(qasmfile1, True)
    circuit2 = qk.encoding.QASMparser(qasmfile2, True)

    # Get (circuit1)^dagger(circuit2)
    circuit2.dagger()
    circuit1.append(circuit2)

    res = {}
    for basis in ["poul", "comp"]:
        # Get CNF for the merged circuit
        cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = (basis == "comp"))
        res[basis] = qk.CheckEquivalence(tool_path, cnf)
        if res[basis] == "TIMEOUT":
            print("T", end="")
            return
    
    # Compare the results
    assert res["poul"] == res["comp"], f"Results are different: {res["poul"]} vs {res["comp"]}"
    
    

if __name__ == '__main__':
    if len(sys.argv) < 2:
        main("/Users/meij/GPMC/bin/gpmc -mode=1", "test.qasm", "test.qasm")
    else:
        tool_path = sys.argv[1]
        circ1 = sys.argv[2]
        circ2 = sys.argv[3]
        try:
            main(tool_path, circ1, circ2)
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
            print(f"nf", end="")
        except:
            print(f"""\nError for call:\
                    \n   tool_path = \"{tool_path}\"\
                    \n   circ1 = \"{circ1}\"\
                    \n   circ2 = \"{circ2}\"""")
            print()
            print(traceback.format_exc())
            print()
