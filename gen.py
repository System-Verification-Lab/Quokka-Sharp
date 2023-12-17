import sys, io


# OPENQASM 2.0;
# include "qelib1.inc";
#
# qreg q[1000];
# s q[0];
# h q[1];
# h q[2];
# h q[3];
# t q[4];
# cx q[5],q[545];

def main(n):
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


if __name__ == "__main__":
    if len(sys.argv) < 2:
        exit(1)

    if len(sys.argv) < 3:
        n = int(sys.argv[1])
    else:
        m = int(sys.argv[2])
    main(n)