// bell_psi_minus.qasm
// |Psi-> = (|01>-|10>)/sqrt(2)
// Expected sim(comp, {0:0,1:1}) = 0.5
// Expected sim(comp, {0:1,1:0}) = 0.5
// Expected sim(comp, allzero)   = 0.0
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
x q[1];
h q[0];
cx q[0], q[1];
z q[0];
