// v03_cx_control0.qasm
// CNOT(0->1).  Control=0, so target unchanged.
// PASS: pre={0:0,1:0} post={0:0,1:0}
// FAIL: pre={0:0,1:0} post={0:0,1:1}
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
cx q[0], q[1];
