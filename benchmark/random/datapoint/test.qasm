OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];

rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
h q[1];
rx(0.5*pi) q[2];