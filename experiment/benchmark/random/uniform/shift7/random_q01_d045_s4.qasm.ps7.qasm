OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
h q[0];
rz(1.0*pi) q[0];
h q[0];
rz(4.71238908038469) q[0];
