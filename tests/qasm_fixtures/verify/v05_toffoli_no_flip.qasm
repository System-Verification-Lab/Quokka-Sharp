// v05_toffoli_no_flip.qasm
// Toffoli with controls=0: no flip on target.
// PASS: pre={0:0,1:0,2:0} post={0:0,1:0,2:0}
OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
ccx q[0], q[1], q[2];
