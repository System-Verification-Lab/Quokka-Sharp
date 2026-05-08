// neq4_s.qasm  ←→  neq4_z.qasm  (NOT EQUIVALENT)
// S is sqrt(Z), not Z itself
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
s q[0];
