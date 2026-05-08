// syn02_x_target.qasm
// TARGET: Pauli-X gate.
// gate_set={h, cx, s}: X = H S S H (or equivalent)
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
x q[0];
