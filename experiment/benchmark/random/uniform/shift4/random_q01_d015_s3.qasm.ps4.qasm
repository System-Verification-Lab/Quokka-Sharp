OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
rz(0.25*pi) q[0];
h q[0];
rz(0.7854981633974483) q[0];
