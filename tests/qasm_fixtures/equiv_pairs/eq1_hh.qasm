// eq1_hh.qasm  ←→  eq1_identity.qasm  (EQUIVALENT)
// H H = I
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
h q[0];
h q[0];
