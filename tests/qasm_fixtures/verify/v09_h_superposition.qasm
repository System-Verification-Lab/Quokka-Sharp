// v09_h_superposition.qasm
// H creates superposition: no definite computational post-state.
// INTERESTING: pre={0:0} post={0:0}  => MAY be False (50/50 superposition)
// Use this to test probabilistic verification behaviour.
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
h q[0];
