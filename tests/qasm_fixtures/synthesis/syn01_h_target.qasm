// syn01_h_target.qasm
// TARGET: Hadamard gate.
// Synthesise using gate_set={h, cx, s}.
// Expected: trivially found as a single H gate (1 layer).
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
h q[0];
