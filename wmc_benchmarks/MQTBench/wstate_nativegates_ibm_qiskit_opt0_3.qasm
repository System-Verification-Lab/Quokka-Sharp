// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(3*pi/4) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(2.186276035465284) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
x q[2];
cx q[2],q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(4.096909271714303) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
cx q[1],q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(5*pi/4) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
cx q[1],q[2];
cx q[0],q[1];
