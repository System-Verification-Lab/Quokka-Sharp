// hh.qasm
// H H = Identity.
// Expected sim(comp, allzero) = 1.0
// EQUIV: identity_wire.qasm
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
h q[0];
h q[0];
