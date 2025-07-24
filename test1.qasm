OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[0];
h q[3];
cx q[0], q[3];
iswap q[1], q[2];
