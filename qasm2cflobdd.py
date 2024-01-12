import sys, io
import argparse
from qasm_parser import qasm_parser


def print_header(b, orig_name):
    b.write('''
import quasimodo
import time
import argparse
from math import pi

parser = argparse.ArgumentParser(description='Execute CFLOBDD python binding code for {0}.')
parser.add_argument('-s', '--seed', default=1)
parser.add_argument('-m', '--measurement', choices=['firstzero', 'allzero'])
args = parser.parse_args()

start = time.time()
'''.format(orig_name))

def print_footer(b, n, orig_name):
    b.write('''
b = dict()
if args.measurement == 'firstzero' or args.measurement == None:
    b[0] = 0
elif args.measurement == 'allzero':
    for i in range(0, {0}):
        b[i] = 0
else:
    parser.exit(args.measurement)
p = qc.prob(b)

end = time.time()

print ('{1},', {2},' time: ', (end - start), " prob: ", p)
'''.format(n, orig_name, n))

def main(file):
    circuit = qasm_parser(file, False)
    # print(circuit)
    gates = circuit.circ
    n = circuit.n
    m = circuit.depth()

    # GHZ
    b = io.StringIO()

    print_header(b, file)
    b.write("qc = quasimodo.QuantumCircuit(\"CFLOBDD\", {0}, args.seed)\n".format(n))

    for t in range(m):
        element = gates[t]
        gate = element[0]
        if gate == 'h':
            k = int(element[1]) - 1
            b.write("qc.h({0})\n".format(k))
        elif gate == 'x':
            k = int(element[1]) - 1
            b.write("qc.x({0})\n".format(k))
        elif gate == 'y':
            k = int(element[1]) - 1
            b.write("qc.y({0})\n".format(k))
        elif gate == 'z':
            k = int(element[1]) - 1
            b.write("qc.z({0})\n".format(k))
        elif gate == 'cx':
            j = int(element[1]) - 1
            k = int(element[2]) - 1
            b.write("qc.cx({0}, {1})\n".format(j, k))
        elif gate == 'ccx':
            j = int(element[1]) - 1
            k = int(element[2]) - 1
            l = int(element[3]) - 1
            b.write("qc.ccx({0}, {1}, {2})\n".format(j, k, l))
        elif gate == 's':
            k = int(element[1]) - 1
            b.write("qc.s({0})\n".format(k))
        elif gate == 'sdg':
            k = int(element[1]) - 1
            b.write("qc.z({0})\n".format(k))
            b.write("qc.s({0})\n".format(k))
        elif gate == 'tdg':
            k = int(element[1]) - 1
            b.write("qc.t({0})\n".format(k))
            b.write("qc.z({0})\n".format(k))
            b.write("qc.s({0})\n".format(k))
        elif gate == 't':
            k = int(element[1]) - 1
            b.write("qc.t({0})\n".format(k))
        elif 'rx' in gate:
            theta = element[0].split("(")[1].rstrip(")")
            k = int(element[1]) - 1
            b.write("qc.h({0})\n".format(k))
            b.write("qc.p({0}, {1})\n".format(k, theta))
            b.write("qc.h({0})\n".format(k))
        elif 'rz' in gate:
            theta = element[0].split("(")[1].rstrip(")")
            k = int(element[1]) - 1
            b.write("qc.p({0}, {1})\n".format(k, theta))
        elif gate == 'm':
            b = b
        else:
            sys.exit('Unknown gate: '+ element[0])

    print_footer(b, n, file)

    py_file = file + ".quasimodo.py"
    with open(py_file, 'w') as the_file:
        the_file.write(b.getvalue())

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate CFLOBDD python binding code.')
    parser.add_argument('filename')
    args = parser.parse_args()
    main(args.filename)