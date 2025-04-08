OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(-pi/2) q[1];