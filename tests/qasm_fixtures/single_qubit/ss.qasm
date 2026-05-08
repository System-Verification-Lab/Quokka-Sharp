// ss.qasm
// S S = Z  (same measurement statistics as z.qasm on |0>)
// Expected sim(comp, allzero) = 1.0
// EQUIV: z.qasm
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
s q[0];
s q[0];
