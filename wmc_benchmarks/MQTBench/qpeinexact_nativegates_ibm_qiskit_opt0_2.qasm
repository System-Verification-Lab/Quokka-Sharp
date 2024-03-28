// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
qreg psi[1];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
x psi[0];
rz(pi/4) psi[0];
cx psi[0],q[0];
rz(-pi/4) q[0];
cx psi[0],q[0];
rz(pi/4) q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
