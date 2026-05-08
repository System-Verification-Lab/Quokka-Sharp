// bell.qasm
// Bell state |Phi+> = (|00>+|11>)/sqrt(2) from |00>
// Expected sim(comp, allzero)    = 0.5   (P(00))
// Expected sim(comp, {0:1,1:1}) = 0.5   (P(11))
// Expected sim(comp, {0:0,1:1}) = 0.0   (P(01))
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
h q[0];
cx q[0], q[1];
