// syn04_cx_target.qasm
// TARGET: CNOT gate (2-qubit).
// gate_set={h, cx, s}: CNOT is a primitive; expect 1-layer solution.
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
cx q[0], q[1];
