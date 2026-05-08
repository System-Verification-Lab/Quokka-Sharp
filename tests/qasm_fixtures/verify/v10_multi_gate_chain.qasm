// v10_multi_gate_chain.qasm
// X H H X = Identity  (H H cancels, X X cancels)
// PASS: pre={0:0} post={0:0}
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
x q[0];
h q[0];
h q[0];
x q[0];
