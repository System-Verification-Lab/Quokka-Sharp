// v08_cx_swap_target.qasm
// Prepare |10>, apply CX(0->1): should give |11>.
// PASS: pre={0:0,1:0} post={0:1,1:1}
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
x q[0];
cx q[0], q[1];
