// tt.qasm
// T T = S  (same measurement statistics as s.qasm on |0>)
// Expected sim(comp, allzero) = 1.0
// EQUIV: s.qasm
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
t q[0];
t q[0];
