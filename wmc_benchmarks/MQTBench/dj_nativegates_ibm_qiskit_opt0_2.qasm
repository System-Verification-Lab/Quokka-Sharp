// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
x q[0];
x q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
cx q[0],q[1];
x q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
