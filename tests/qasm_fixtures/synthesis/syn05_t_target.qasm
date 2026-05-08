// syn05_t_target.qasm
// TARGET: T gate.
// gate_set={h, cx, t}: trivially found as single T gate.
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
t q[0];
