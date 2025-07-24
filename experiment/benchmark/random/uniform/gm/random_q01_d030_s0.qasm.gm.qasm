OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
rz(1.5*pi) q[0];
h q[0];
rz(1.75*pi) q[0];
h q[0];
h q[0];
