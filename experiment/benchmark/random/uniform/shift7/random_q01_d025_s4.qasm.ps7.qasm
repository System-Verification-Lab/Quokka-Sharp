OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
rz(0.75*pi) q[0];
h q[0];
rz(3.9269909169872412) q[0];
