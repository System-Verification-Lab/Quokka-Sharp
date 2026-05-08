// ghz_3q.qasm
// 3-qubit GHZ state: (|000>+|111>)/sqrt(2)
// Expected sim(comp, allzero)          = 0.5
// Expected sim(comp, {0:1,1:1,2:1})   = 0.5
// Expected sim(comp, {0:0,1:0,2:1})   = 0.0
// P(000) + P(111) == 1.0
OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
h q[0];
cx q[0], q[1];
cx q[0], q[2];
