// v06_toffoli_flip.qasm
// Set both controls to 1, then Toffoli: target flips.
// PASS: pre={0:0,1:0,2:0} post={0:1,1:1,2:1}
OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
x q[0];
x q[1];
ccx q[0], q[1], q[2];
