// syn06_identity_target.qasm
// TARGET: Identity (no gates).
// gate_set={h, cx, s}: trivially empty circuit.
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
id q[0];
