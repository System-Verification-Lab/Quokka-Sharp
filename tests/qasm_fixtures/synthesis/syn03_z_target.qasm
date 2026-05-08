// syn03_z_target.qasm
// TARGET: Pauli-Z gate.
// gate_set={h, cx, s}: Z = S S
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
z q[0];
