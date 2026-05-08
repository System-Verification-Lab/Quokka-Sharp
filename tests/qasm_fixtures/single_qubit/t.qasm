// t.qasm
// T gate (sqrt(S)): |0> -> |0>
// Expected sim(comp, allzero) = 1.0
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
t q[0];
