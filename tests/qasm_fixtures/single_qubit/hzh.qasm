// hzh.qasm
// H Z H = X.
// Expected sim(comp, allzero) = 0.0
// EQUIV: x.qasm
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
h q[0];
z q[0];
h q[0];
