// h.qasm
// Hadamard on |0> -> (|0>+|1>)/sqrt(2)
// Expected sim(comp, allzero)   = 0.5
// Expected sim(comp, firstzero) = 0.5
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
h q[0];
