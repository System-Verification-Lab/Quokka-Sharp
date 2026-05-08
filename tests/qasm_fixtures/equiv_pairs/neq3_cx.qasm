// neq3_cx.qasm  ←→  neq3_bell.qasm  (NOT EQUIVALENT)
// CX only (no H)
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
cx q[0], q[1];
