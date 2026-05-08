// cx_x_cx.qasm
// X_control then CX then X_control = CX with flipped control polarity
// (i.e., applies X to target when control=0)
// On |00>: q0 -> X -> |1>, CX flips q1 -> |11>, X flips q0 back -> |01>
// Expected sim(comp, {0:0,1:1}) = 1.0
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
x q[0];
cx q[0], q[1];
x q[0];
