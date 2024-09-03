import quokka_sharp as qk
import traceback
import sys

def main(tool_invocation, qasmfile1):
    
    # Parse the circuit
    circuit1 = qk.encoding.QASMparser(qasmfile1, True)
    prob = {}
    for mesurement in ["allzero", "firstzero"]:
        # print()
        # print(mesurement)
        for basis in ["pauli", "comp"]:
            # Encode the circuit
            cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = (basis == "comp"), weighted= True)
            cnf.leftProjectAllZero()
            cnf.add_measurement(mesurement)
            prob[basis] = qk.Simulate(tool_invocation, cnf)
            # print(prob[basis])
            if prob[basis] == "TIMEOUT":
                print("T", end="")
                return
            
            # if basis == "pauli":
            #     cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = (basis == "comp"), weighted= False)
            #     cnf.leftProjectAllZero()
            #     cnf.add_measurement(mesurement)
            #     prob_un = qk.Simulate(tool_invocation, cnf)
            #     # print(res[basis])
            #     if prob_un == "TIMEOUT":
            #         print("T", end="")
            #     else:
            #         assert abs(prob["pauli"] - prob_un) < 1e-12, f'''
            #             For mesurement {mesurement} using Pauli w vs uw:
            #             Probs are different: {prob["pauli"]} vs {prob_un} 
            #             \n\t\t diff: {prob["pauli"] - prob_un}'''

        # assert abs(prob["pauli"] - prob["comp"]) < 1e-12, f'''
        #     For mesurement {mesurement} using Pauli vs Comp:
        #     Probs are different: {prob["pauli"]} vs {prob["comp"]} 
        #     \n\t\t diff: {prob["pauli"] - prob["comp"]}'''

if __name__ == '__main__':

    try:
        if len(sys.argv) < 2:
            main("/Users/meij/GPMC/bin/gpmc -mode=1", "test.qasm")
        else:
            tool_invocation = sys.argv[1]
            circ1 = sys.argv[2]
            main(tool_invocation, circ1)
    except AssertionError:
        print(f"""\nAssertion Failed for call:\
                \n   tool_path=\"{tool_invocation}\"\
                \n   circ=\"{circ1}\"""")
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
                \n   tool_path=\"{tool_invocation}\"\
                \n   circ=\"{circ1}\"""")
        print()
        print(traceback.format_exc())
        print()
