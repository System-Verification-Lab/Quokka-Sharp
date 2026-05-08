// v07_xx_identity.qasm
// X X = Identity.
// PASS: pre={0:0} post={0:0}
// PASS: pre={0:1} post={0:1}
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
x q[0];
x q[0];
