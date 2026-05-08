// s.qasm
// S gate (sqrt(Z)): |0> -> |0>
// Expected sim(comp, allzero) = 1.0
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
s q[0];
