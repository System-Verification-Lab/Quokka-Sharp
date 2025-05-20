// Used Gate Set: ['rz', 'rx(pi/2)', 'x', 'cx', 'measure']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
s q[1];
rx(pi/2) q[1];
s q[1];
t q[1];
cx q[1],q[0];
tdg q[0];
cx q[1],q[0];
t q[0];
s q[0];
rx(pi/2) q[0];
s q[0];
cx q[0],q[1];
cx q[1],q[0];
cx q[0],q[1];