OPENQASM 2.0;
include "qelib1.inc";
qreg q[60];
h q[19];
h q[41];
cx q[19], q[41];
rz(0.25*pi) q[41];
cx q[19], q[41];
h q[41];
h q[19];
h q[6];
cx q[4], q[23];
cx q[6], q[23];
cx q[14], q[23];
rz(1.75*pi) q[23];
cx q[14], q[23];
cx q[6], q[23];
cx q[4], q[23];
h q[6];
h q[12];
rx(0.5*pi) q[15];
rx(0.5*pi) q[40];
cx q[12], q[40];
cx q[15], q[40];
rz(1.75*pi) q[40];
cx q[15], q[40];
cx q[12], q[40];
rx(-0.5*pi) q[40];
rx(-0.5*pi) q[15];
h q[12];
cx q[4], q[41];
cx q[12], q[41];
cx q[16], q[41];
rz(0.75*pi) q[41];
cx q[16], q[41];
cx q[12], q[41];
cx q[4], q[41];
h q[50];
rx(0.5*pi) q[58];
cx q[2], q[58];
cx q[50], q[58];
rz(1.25*pi) q[58];
cx q[50], q[58];
cx q[2], q[58];
rx(-0.5*pi) q[58];
h q[50];
rx(0.5*pi) q[45];
cx q[13], q[45];
cx q[40], q[45];
rz(0.75*pi) q[45];
cx q[40], q[45];
cx q[13], q[45];
rx(-0.5*pi) q[45];
h q[56];
cx q[8], q[59];
cx q[52], q[59];
cx q[56], q[59];
rz(1.25*pi) q[59];
cx q[56], q[59];
cx q[52], q[59];
cx q[8], q[59];
h q[56];
h q[2];
h q[9];
h q[50];
cx q[2], q[50];
cx q[6], q[50];
cx q[9], q[50];
rz(1.75*pi) q[50];
cx q[9], q[50];
cx q[6], q[50];
cx q[2], q[50];
h q[50];
h q[9];
h q[2];
h q[12];
rx(0.5*pi) q[16];
h q[59];
cx q[12], q[59];
cx q[16], q[59];
rz(1.75*pi) q[59];
cx q[16], q[59];
cx q[12], q[59];
h q[59];
rx(-0.5*pi) q[16];
h q[12];
rx(0.5*pi) q[40];
cx q[40], q[49];
rz(1.75*pi) q[49];
cx q[40], q[49];
rx(-0.5*pi) q[40];