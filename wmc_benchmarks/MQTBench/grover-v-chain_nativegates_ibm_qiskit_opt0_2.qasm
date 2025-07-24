// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
qreg flag[1];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
x flag[0];
