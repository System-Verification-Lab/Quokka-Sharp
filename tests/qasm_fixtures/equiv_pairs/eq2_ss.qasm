// eq2_ss.qasm  ←→  eq2_z.qasm  (EQUIVALENT)
// S S = Z
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
s q[0];
s q[0];
