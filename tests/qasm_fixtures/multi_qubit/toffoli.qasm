// toffoli.qasm
// Toffoli (CCX): flips q[2] when q[0]=1 AND q[1]=1.
// On |000>: no flip.  Expected sim(comp, allzero) = 1.0
// verify: pre={0:1,1:1,2:0} post={0:1,1:1,2:1}  => True
OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
ccx q[0], q[1], q[2];
