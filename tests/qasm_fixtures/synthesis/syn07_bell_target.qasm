// syn07_bell_target.qasm
// TARGET: Bell-state preparation circuit (2-qubit).
// gate_set={h, cx, s}: H+CX is the canonical solution.
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
h q[0];
cx q[0], q[1];
