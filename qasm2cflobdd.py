import sys, io
from qasm_parser import qasm_parser


def print_header(b):
    b.write('''
import quasimodo
import time

start = time.time()
''')

def print_footer(b, n, orig_name):
    b.write('''
b = dict()
b[0] = 0
# for i in range(0, {0}):
#     b[i] = 0
p = qc.prob(b)

end = time.time()

print ('{1},', {2},' time: ', (end - start), " prob: ", p)
'''.format(n, orig_name, n))

def main(file, seed):
    circuit = qasm_parser(file)
    # print(circuit)
    gates = circuit.circ
    n = circuit.n
    m = circuit.m

    # GHZ
    b = io.StringIO()

    print_header(b)
    b.write("qc = quasimodo.QuantumCircuit(\"CFLOBDD\", {0}, {1})\n".format(n, seed))

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
        elif gate == 's':
            k = int(element[1]) - 1
            b.write("qc.s({0})\n".format(k))
        elif gate == 'sdg':
            k = int(element[1]) - 1
            b.write("qc.z({0})\n".format(k))
            b.write("qc.s({0})\n".format(k))
        elif gate == 't':
            k = int(element[1]) - 1
            b.write("qc.t({0})\n".format(k))
        # elif 'rx' in gate:
        #     t = element[0]
        #     k = int(element[1]) - 1
        #     b.write("qc.rx({0}, {1})\n".format(k, theta))
        # elif 'rz' in gate:
        #     t = element[0]
        #     k = int(element[1]) - 1
        #     b.write("qc.rz({0}, {1})\n".format(k, theta))
        elif gate == 'm':
            b = b
        else:
            sys.exit('Unknown gate: '+ element[0])

    print_footer(b, n, file)

    py_file = file + ".quasimodo.py"
    with open(py_file, 'w') as the_file:
        the_file.write(b.getvalue())



if __name__ == "__main__":
    if len(sys.argv) < 3:
        exit('provide two arguments')
    main(sys.argv[1], int(sys.argv[2]))