OPENQASM 2.0;
include "qelib1.inc";
qreg q[60];
rx(0.5*pi) q[4];
rx(0.5*pi) q[26];
cx q[4], q[27];
cx q[21], q[27];
cx q[26], q[27];
rz(1.75*pi) q[27];
cx q[26], q[27];
cx q[21], q[27];
cx q[4], q[27];
rx(-0.5*pi) q[26];
rx(-0.5*pi) q[4];
rx(0.5*pi) q[49];
cx q[9], q[49];
rz(0.25*pi) q[49];
cx q[9], q[49];
rx(-0.5*pi) q[49];
h q[21];
cx q[2], q[35];
cx q[19], q[35];
cx q[21], q[35];
rz(0.75*pi) q[35];
cx q[21], q[35];
cx q[19], q[35];
cx q[2], q[35];
h q[21];
h q[25];
rx(0.5*pi) q[39];
cx q[25], q[39];
rz(1.75*pi) q[39];
cx q[25], q[39];
rx(-0.5*pi) q[39];
h q[25];
h q[40];
h q[56];
cx q[40], q[56];
cx q[52], q[56];
rz(0.25*pi) q[56];
cx q[52], q[56];
cx q[40], q[56];
h q[56];
h q[40];
rx(0.5*pi) q[4];
h q[31];
rx(0.5*pi) q[34];
h q[47];
cx q[4], q[47];
cx q[31], q[47];
cx q[34], q[47];
rz(0.25*pi) q[47];
cx q[34], q[47];
cx q[31], q[47];
cx q[4], q[47];
h q[47];
rx(-0.5*pi) q[34];
h q[31];
rx(-0.5*pi) q[4];
rx(0.5*pi) q[52];
cx q[2], q[52];
cx q[46], q[52];
rz(1.25*pi) q[52];
cx q[46], q[52];
cx q[2], q[52];
rx(-0.5*pi) q[52];
h q[4];
rx(0.5*pi) q[7];
h q[14];
cx q[4], q[14];
cx q[7], q[14];
cx q[12], q[14];
rz(1.75*pi) q[14];
cx q[12], q[14];
cx q[7], q[14];
cx q[4], q[14];
h q[14];
rx(-0.5*pi) q[7];
h q[4];
h q[27];
rx(0.5*pi) q[50];
cx q[9], q[59];
cx q[27], q[59];
cx q[50], q[59];
rz(1.75*pi) q[59];
cx q[50], q[59];
cx q[27], q[59];
cx q[9], q[59];
rx(-0.5*pi) q[50];
h q[27];
rx(0.5*pi) q[24];
rx(0.5*pi) q[45];
cx q[24], q[55];
cx q[45], q[55];
rz(1.25*pi) q[55];
cx q[45], q[55];
cx q[24], q[55];
rx(-0.5*pi) q[45];
rx(-0.5*pi) q[24];
rx(0.5*pi) q[23];
h q[51];
cx q[4], q[51];
cx q[23], q[51];
rz(0.25*pi) q[51];
cx q[23], q[51];
cx q[4], q[51];
h q[51];
rx(-0.5*pi) q[23];
h q[18];
cx q[2], q[57];
cx q[5], q[57];
cx q[18], q[57];
rz(1.25*pi) q[57];
cx q[18], q[57];
cx q[5], q[57];
cx q[2], q[57];
h q[18];
cx q[5], q[43];
rz(1.75*pi) q[43];
cx q[5], q[43];
h q[3];
h q[19];
rx(0.5*pi) q[45];
cx q[3], q[45];
cx q[19], q[45];
rz(0.75*pi) q[45];
cx q[19], q[45];
cx q[3], q[45];
rx(-0.5*pi) q[45];
h q[19];
h q[3];
rx(0.5*pi) q[3];
rx(0.5*pi) q[7];
cx q[3], q[35];
cx q[7], q[35];
rz(1.75*pi) q[35];
cx q[7], q[35];
cx q[3], q[35];
rx(-0.5*pi) q[7];
rx(-0.5*pi) q[3];
h q[15];
rx(0.5*pi) q[50];
cx q[2], q[50];
cx q[15], q[50];
rz(0.75*pi) q[50];
cx q[15], q[50];
cx q[2], q[50];
rx(-0.5*pi) q[50];
h q[15];
rx(0.5*pi) q[31];
cx q[13], q[33];
cx q[31], q[33];
rz(1.25*pi) q[33];
cx q[31], q[33];
cx q[13], q[33];
rx(-0.5*pi) q[31];
h q[5];
rx(0.5*pi) q[35];
cx q[5], q[35];
rz(0.75*pi) q[35];
cx q[5], q[35];
rx(-0.5*pi) q[35];
h q[5];
h q[40];
cx q[7], q[40];
rz(1.75*pi) q[40];
cx q[7], q[40];
h q[40];
h q[9];
rx(0.5*pi) q[33];
cx q[9], q[33];
cx q[12], q[33];
rz(1.25*pi) q[33];
cx q[12], q[33];
cx q[9], q[33];
rx(-0.5*pi) q[33];
h q[9];