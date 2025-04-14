import quokka_sharp as qk
from time import time
import argparse
import ast

def wmc(qasmfile1, tool_invocation, pre, post, basis): 
    # Parse the circuit
    circuit1 = qk.encoding.QASMparser(qasmfile1, True)
    # Encode the circuit
    cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = (basis == "comp"), weighted=True)
    res = qk.Verify(tool_invocation, cnf, pre, post)
    return str(res)
    
def main(args):
    qasmfile        = args.filename
    tool_invocation = '../../../GPMC/bin/gpmc -mode=1'
    basis           = args.basis
    pre            = ast.literal_eval(args.precondition)
    post            = ast.literal_eval(args.postcondition)
    
    start_time = time()
    res = wmc(qasmfile, tool_invocation, pre, post, basis)
    end_time = time()
    
    filename = qasmfile.split("/")[-1]
    s = '{' + f'"basis": "{basis}", "file": "{filename}", "time": "{end_time - start_time}", "res": "{str(res)}"' + '}'
    print(s)
    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Verifying quantum circuits with WMC')
    parser.add_argument('filename')
    parser.add_argument('-pre', '--precondition')
    parser.add_argument('-post', '--postcondition')
    parser.add_argument('-b', '--basis', choices=['comp', 'pauli'])
    args = parser.parse_args()
    main(args)