import quokka_sharp as qk
from time import time
import argparse
import ast

def wmc(qasmfile1, tool_invocation, meas, basis): 
    # Parse the circuit
    circuit1 = qk.encoding.QASMparser(qasmfile1, True)
    # Encode the circuit
    cnf = qk.encoding.QASM2CNF(circuit1, computational_basis = (basis == "comp"), weighted=True)
    cnf.leftProjectAllZero()
    cnf.add_measurement(meas)
    prob = qk.Simulate(tool_invocation, cnf)
    return prob
    
def main(args):
    qasmfile        = args.filename
    tool_invocation = '../../../GPMC/bin/gpmc -mode=1'
    basis           = args.basis
    meas            = args.measurement
    if meas != "firstzero" or "allzero":
        meas  = ast.literal_eval(meas)
    
    start_time = time()
    prob = wmc(qasmfile, tool_invocation, meas, basis)
    end_time = time()

    filename = qasmfile.split("/")[-1]
    s = '{' + f'"file": "{filename}", "time": "{end_time - start_time}", "prob": "{prob}"' + '}'
    print(s)
    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Simulating quantum circuits with WMC')
    parser.add_argument('filename')
    parser.add_argument('-m', '--measurement', default='firstzero')
    parser.add_argument('-b', '--basis', choices=['comp', 'pauli'])
    args = parser.parse_args()
    main(args)