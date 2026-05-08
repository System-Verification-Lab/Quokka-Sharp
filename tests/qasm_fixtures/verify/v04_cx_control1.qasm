// v04_cx_control1.qasm
// X then CNOT(0->1): sets control=1, so target flips.
// PASS: pre={0:0,1:0} post={0:1,1:1}
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
x q[0];
cx q[0], q[1];
