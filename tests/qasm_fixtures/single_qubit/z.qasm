// z.qasm
// Pauli-Z (phase flip): |0> -> |0>  (phase has no effect on |0>)
// Expected sim(comp, allzero) = 1.0
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
z q[0];
