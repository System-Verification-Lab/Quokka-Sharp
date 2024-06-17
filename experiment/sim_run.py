import quokka_sharp as qk
import traceback
import sys

def main(reg_tool_invocation, com_tool_invocation, qasmfile1):
    
    # Parse the circuit
    circuit1 = qk.encoding.QASMparser(qasmfile1, True)

    # Encode the circuit
    cnf = qk.encoding.QASM2CNF(circuit1)
    cnf.leftProjectAllZero()
    cnf.add_measurement("allzero")
    cnf.write_to_file("circ.cnf")
    rez = qk.Simulate(reg_tool_invocation, "circ.cnf")
    # print(rez)
    if rez == "TIMEOUT":
        print("T", end="")
        return
    prob = abs(rez)

    cnf = qk.encoding.QASM2COMFCNF(circuit1)
    cnf.leftProjectAllZero()
    cnf.add_measurement("allzero")
    cnf.write_to_file("circ_C.cnf")
    rez_C = qk.Simulate(com_tool_invocation, "circ_C.cnf")
    # print(rez_C)
    if rez_C == "TIMEOUT":
        print("T", end="")
        return
    prob_C = abs(rez_C)*abs(rez_C)

    assert abs(prob - prob_C) < 1e-15, f'''Probs are different: {prob} vs {prob_C} 
        \n\t\t Results are: {rez} vs {rez_C} 
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
    except Exception as e:
        if isinstance(e, AssertionError):
            print(f"""\nAssertion Failed for call:\
                    \n\treg_tool_path = \"{reg_tool_invocation}\"\
                    \n\tcom_tool_path = \"{com_tool_invocation}\"\
                    \n\tcirc = \"{circ1}\"""")
            print(traceback.format_exc())
        elif isinstance(e, FileNotFoundError):
            # print(f"\tCalled with: \n\t\t {circ1} \n\t\t {circ2})")
            # print(f"\tFile not found: {e.filename}")
            print(f"nf", end="")
        else:
            print(f"""\nError for call:\
                    \n\treg_tool_path = \"{reg_tool_invocation}\"\
                    \n\tcom_tool_path = \"{com_tool_invocation}\"\
                    \n\tcirc = \"{circ1}\"""")
            print(traceback.format_exc())
