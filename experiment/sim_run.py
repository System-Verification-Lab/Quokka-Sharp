import quokka_sharp as qk
import traceback
import sys

def main(reg_tool_invocation, com_tool_invocation, qasmfile1):
    
    # Parse the circuit
    circuit1 = qk.encoding.QASMparser(qasmfile1, True)

    # Encode the circuit
    cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = False)
    cnf.leftProjectAllZero()
    cnf.add_measurement("allzero")
    # cnf.add_measurement("firstzero")
    res = qk.Simulate(reg_tool_invocation, cnf)
    # print(res)
    if res == "TIMEOUT":
        print("T", end="")
        return
    prob = abs(res)

    cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = True)
    cnf.leftProjectAllZero()
    cnf.add_measurement("allzero")
    # cnf.add_measurement("firstzero")
    # cnf.rightProjectAllZero()
    res_C = qk.Simulate(com_tool_invocation, cnf)
    # print(res_C)
    if res_C == "TIMEOUT":
        print("T", end="")
        return
    prob_C = abs(res_C)*abs(res_C)
    # prob_C = abs(res_C)

    assert abs(prob - prob_C) < 1e-8, f'''Probs are different: {prob} vs {prob_C} 
        \n\t\t Results are: {res} vs {res_C} 
        \n\t\t diff: {prob - prob_C}'''

if __name__ == '__main__':

    try:
        if len(sys.argv) < 2:
            main("/Users/meij/GPMC/bin/gpmc -mode=1", "test.qasm")
        else:
            reg_tool_invocation = sys.argv[1]
            com_tool_invocation = sys.argv[2]
            circ1 = sys.argv[3]
            main(reg_tool_invocation, com_tool_invocation, circ1)
    except AssertionError:
        print(f"""\nAssertion Failed for call:\
                \n   reg_tool_path = \"{reg_tool_invocation}\"\
                \n   com_tool_path = \"{com_tool_invocation}\"\
                \n   circ = \"{circ1}\"""")
        print()
        print(traceback.format_exc())
        print()
    except FileNotFoundError:
        # print(f"\tCalled with: \n\t\t {circ1} \n\t\t {circ2})")
        # print(f"\tFile not found: {e.filename}")
        print(f"nf", end="")
    except:
        print(f"""\nError for call:\
                \n   reg_tool_path = \"{reg_tool_invocation}\"\
                \n   com_tool_path = \"{com_tool_invocation}\"\
                \n   circ = \"{circ1}\"""")
        print()
        print(traceback.format_exc())
        print()
