// x.qasm
// Pauli-X (bit-flip): |0> -> |1>
// Expected sim(comp, allzero) = 0.0
// Expected sim(comp, {0:1})   = 1.0
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
x q[0];
