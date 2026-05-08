// neq3_bell.qasm  ←→  neq3_cx.qasm  (NOT EQUIVALENT)
// Bell preparation: H then CX
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
h q[0];
cx q[0], q[1];
