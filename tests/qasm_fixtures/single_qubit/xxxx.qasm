// xxxx.qasm
// X X X X = Identity.
// Expected sim(comp, allzero) = 1.0
// EQUIV: identity_wire.qasm
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
x q[0];
x q[0];
x q[0];
x q[0];
