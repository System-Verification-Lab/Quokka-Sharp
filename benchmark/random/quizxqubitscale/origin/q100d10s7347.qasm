OPENQASM 2.0;
include "qelib1.inc";
qreg q[100];
h q[40];
h q[69];
cx q[40], q[69];
rz(1.25*pi) q[69];
cx q[40], q[69];
h q[69];
h q[40];
h q[33];
rx(0.5*pi) q[53];
cx q[33], q[53];
rz(0.25*pi) q[53];
cx q[33], q[53];
rx(-0.5*pi) q[53];
h q[33];
h q[23];
cx q[23], q[47];
rz(0.75*pi) q[47];
cx q[23], q[47];
h q[23];
h q[45];
rx(0.5*pi) q[89];
cx q[45], q[89];
cx q[60], q[89];
cx q[78], q[89];
rz(0.75*pi) q[89];
cx q[78], q[89];
cx q[60], q[89];
cx q[45], q[89];
rx(-0.5*pi) q[89];
h q[45];
rx(0.5*pi) q[74];
rx(0.5*pi) q[82];
cx q[70], q[84];
cx q[74], q[84];
cx q[82], q[84];
rz(1.75*pi) q[84];
cx q[82], q[84];
cx q[74], q[84];
cx q[70], q[84];
rx(-0.5*pi) q[82];
rx(-0.5*pi) q[74];
cx q[62], q[76];
cx q[67], q[76];
rz(0.75*pi) q[76];
cx q[67], q[76];
cx q[62], q[76];
h q[5];
rx(0.5*pi) q[16];
h q[27];
cx q[5], q[33];
cx q[16], q[33];
cx q[27], q[33];
rz(0.25*pi) q[33];
cx q[27], q[33];
cx q[16], q[33];
cx q[5], q[33];
h q[27];
rx(-0.5*pi) q[16];
h q[5];
h q[16];
h q[23];
h q[26];
h q[69];
cx q[16], q[69];
cx q[23], q[69];
cx q[26], q[69];
rz(1.75*pi) q[69];
cx q[26], q[69];
cx q[23], q[69];
cx q[16], q[69];
h q[69];
h q[26];
h q[23];
h q[16];
rx(0.5*pi) q[67];
cx q[67], q[83];
rz(1.75*pi) q[83];
cx q[67], q[83];
rx(-0.5*pi) q[67];
cx q[9], q[53];
rz(1.75*pi) q[53];
cx q[9], q[53];