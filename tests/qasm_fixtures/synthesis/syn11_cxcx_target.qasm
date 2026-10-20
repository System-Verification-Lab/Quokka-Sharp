// syn11_cxcx_target.qasm
// TARGET: Two-qubit identity (CX CX = I).
// gate_set={h, cx, s, cz}: CX CX = I (empty circuit).
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];

cx q[0],q[1];
cx q[0],q[1];