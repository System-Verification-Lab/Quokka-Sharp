// v01_x_flip.qasm
// X gate: flips qubit.
// PASS: pre={0:0} post={0:1}
// FAIL: pre={0:0} post={0:0}
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
x q[0];
