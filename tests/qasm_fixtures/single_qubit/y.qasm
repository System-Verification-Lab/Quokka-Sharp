// y.qasm
// Pauli-Y: |0> -> i|1>
// Expected sim(comp, allzero) = 0.0
// Expected sim(comp, {0:1})   = 1.0
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
y q[0];
