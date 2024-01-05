OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
qreg qq[2];

h q[0];
cx q[1], qq[0];
rx(1.23) q[1];