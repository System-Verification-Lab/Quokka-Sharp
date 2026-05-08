// eq4_cxcx.qasm  ←→  eq4_id2q.qasm  (EQUIVALENT)
// CX CX = I (CX is self-inverse)
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
cx q[0], q[1];
cx q[0], q[1];
