// cx_q0q1.qasm
// CNOT: control=q[0], target=q[1].  On |00>: |00> -> |00>
// Expected sim(comp, allzero)      = 1.0   (control=0, no flip)
// verify: pre={0:0,1:0} post={0:0,1:0}  => True
// verify: pre={0:1,1:0} post={0:1,1:1}  => True
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
cx q[0], q[1];
