OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];

rz(pi/8) q[0];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q[0],q[1];
rz(pi/8) q[1];
cy q[1],q[0];
