OPENQASM 2.0;
include "qelib1.inc";
qreg q[30];
h q[9];
h q[20];
cx q[9], q[20];
rz(0.25*pi) q[20];
cx q[9], q[20];
h q[20];
h q[9];
h q[3];
cx q[2], q[11];
cx q[3], q[11];
cx q[7], q[11];
rz(1.75*pi) q[11];
cx q[7], q[11];
cx q[3], q[11];
cx q[2], q[11];
h q[3];
rx(0.5*pi) q[6];
rx(0.5*pi) q[7];
h q[13];
cx q[6], q[13];
cx q[7], q[13];
rz(0.25*pi) q[13];
cx q[7], q[13];
cx q[6], q[13];
h q[13];
rx(-0.5*pi) q[7];
rx(-0.5*pi) q[6];
rx(0.5*pi) q[1];
cx q[1], q[24];
cx q[18], q[24];
cx q[23], q[24];
rz(0.25*pi) q[24];
cx q[23], q[24];
cx q[18], q[24];
cx q[1], q[24];
rx(-0.5*pi) q[1];
rx(0.5*pi) q[10];
cx q[5], q[12];
cx q[10], q[12];
rz(1.75*pi) q[12];
cx q[10], q[12];
cx q[5], q[12];
rx(-0.5*pi) q[10];
rx(0.5*pi) q[3];
rx(0.5*pi) q[25];
cx q[3], q[25];
cx q[23], q[25];
rz(0.25*pi) q[25];
cx q[23], q[25];
cx q[3], q[25];
rx(-0.5*pi) q[25];
rx(-0.5*pi) q[3];
h q[8];
cx q[8], q[27];
cx q[15], q[27];
cx q[20], q[27];
rz(0.75*pi) q[27];
cx q[20], q[27];
cx q[15], q[27];
cx q[8], q[27];
h q[8];
rx(0.5*pi) q[16];
h q[27];
cx q[1], q[27];
cx q[16], q[27];
rz(1.25*pi) q[27];
cx q[16], q[27];
cx q[1], q[27];
h q[27];
rx(-0.5*pi) q[16];
h q[5];
rx(0.5*pi) q[7];
h q[14];
h q[28];
cx q[5], q[28];
cx q[7], q[28];
cx q[14], q[28];
rz(1.75*pi) q[28];
cx q[14], q[28];
cx q[7], q[28];
cx q[5], q[28];
h q[28];
h q[14];
rx(-0.5*pi) q[7];
h q[5];
h q[22];
rx(0.5*pi) q[26];
cx q[0], q[26];
cx q[19], q[26];
cx q[22], q[26];
rz(1.75*pi) q[26];
cx q[22], q[26];
cx q[19], q[26];
cx q[0], q[26];
rx(-0.5*pi) q[26];
h q[22];