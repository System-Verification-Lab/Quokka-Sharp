// neq2_hs.qasm  ←→  neq2_h.qasm  (NOT EQUIVALENT)
// H followed by S is NOT the same unitary as H alone
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
h q[0];
s q[0];
