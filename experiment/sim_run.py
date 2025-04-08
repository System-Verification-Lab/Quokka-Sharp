import quokka_sharp as qk
import traceback
import sys

def main(tool_invocation, qasmfile):
    DEBUG = False
    # Parse the circuit
    circuit = qk.encoding.QASMparser(qasmfile, True)
    prob = {}
    for mesurement in ["allzero", "firstzero"]:
        if DEBUG: print()
        if DEBUG: print(f"mesurement: {mesurement}")
        for basis in ["comp", "pauli"]:
            if DEBUG: print()
            if DEBUG: print(f"basis: {basis}")
            for weighted in [True, False]:
                if DEBUG: print()
                if DEBUG: print(f"weighted: {weighted}")
                # Encode the circuit
                if circuit.has_rotations and not weighted:
                    prob[basis+str(weighted)] = "ROTATIONS"
                    print("R", end="")
                    continue
                cnf = qk.encoding.QASM2CNF(circuit, computational_basis = (basis == "comp"), weighted= weighted)
                cnf.leftProjectAllZero()
                cnf.add_measurement(mesurement)
                prob[basis+str(weighted)] = qk.Simulate(tool_invocation, cnf)
                # print(prob[basis])
                if prob[basis+str(weighted)] == "TIMEOUT":
                    print("T", end="")
                else:
                    print(".", end="")
            if prob[basis+str(True)] != "TIMEOUT" and prob[basis+str(False)] not in ["TIMEOUT", "ROTATIONS"]:
                if not abs(prob[basis+str(True)] - prob[basis+str(False)]) < 1e-12:
                    print(f'''
                        Diff for file {qasmfile}
                        For {mesurement} using {basis} with w vs uw: 
                        {prob[basis+str(True)]} vs {prob[basis+str(False)]} 
                        ''')

        if prob["pauli"+str(True)] != "TIMEOUT" and prob["comp"+str(True)]!= "TIMEOUT":
            if not abs(prob["pauli"+str(True)] - prob["comp"+str(True)]) < 1e-12:
                print(f'''
                    Diff for file {qasmfile}
                    For {mesurement} using Pauli vs Comp (both w): 
                    {prob["pauli"+str(True)]} vs {prob["comp"+str(True)]} 
                    ''')
        print(prob)

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
        raise KeyboardInterrupt
    except:
        print(f"""\nError for call:\
                \n   tool_path=\"{tool_invocation}\"\
                \n   circ=\"{circ1}\"""")
        print()
        print(traceback.format_exc())
        print()
