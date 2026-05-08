// hxh.qasm
// H X H = Z  (basis-change identity).
// Expected sim(comp, allzero) = 1.0
// EQUIV: z.qasm
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
h q[0];
x q[0];
h q[0];
