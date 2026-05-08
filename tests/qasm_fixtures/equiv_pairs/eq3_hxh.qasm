// eq3_hxh.qasm  ←→  eq3_z.qasm  (EQUIVALENT)
// H X H = Z
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
h q[0];
x q[0];
h q[0];
