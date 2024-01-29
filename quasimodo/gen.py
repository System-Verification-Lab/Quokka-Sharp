import sys, io
import random



# OPENQASM 2.0;0
# include "qelib1.inc";
#
# qreg q[1000];
# s q[0];
# h q[1];
# h q[2];
# h q[3];
# t q[4];
# cx q[5],q[545];

def main(n, seed):

    # GHZ
    b = io.StringIO()
    b.write("OPENQASM 2.0;\n")
    b.write("\n")
    b.write("qreg q[{0}];\n".format(n))

    b.write("h q[0]\n")
    for q in range(n):
        b.write("cx q[0],q[{0}]\n".format(q))

    s = b.getvalue()
    b.close()
    with open("ghz-{0}.qasm".format(n), "w") as qasm_file:
        qasm_file.write(s)
        qasm_file.close()


    # DJ
    random.seed(seed)

    b = io.StringIO()
    b.write("OPENQASM 2.0;\n")
    b.write("\n")
    b.write("qreg q[{0}];\n".format(n+1))

    for i in range(0, n+1):
        b.write("h q[{0}]\n".format(q))

    if seed == 0:   #constance
        b.write("x q[{0}]\n".format(n))
    elif seed == 1: # balanced
        b.write("cx q[0],q[{1}}]\n".format(n))
    else:
        print("error: seed != 0,1 not implemented")
        exit(1)

    for i in range(0, n):
        b.write("h q[{0}]\n".format(q))

    s = b.getvalue()
    b.close()
    with open("dj-{0}-{1}.qasm".format(n, seed), "w") as qasm_file:
        qasm_file.write(s)
        qasm_file.close()

if __name__ == "__main__":
    if len(sys.argv) < 2:
        exit(1)

    n = int(sys.argv[1])
    if len(sys.argv) > 2:
        s = int(sys.argv[2])
    main(n, s)