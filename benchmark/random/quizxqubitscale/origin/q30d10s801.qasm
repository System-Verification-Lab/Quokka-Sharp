OPENQASM 2.0;
include "qelib1.inc";
qreg q[30];
rx(0.5*pi) q[8];
rx(0.5*pi) q[12];
rx(0.5*pi) q[24];
cx q[8], q[24];
cx q[12], q[24];
rz(0.75*pi) q[24];
cx q[12], q[24];
cx q[8], q[24];
rx(-0.5*pi) q[24];
rx(-0.5*pi) q[12];
rx(-0.5*pi) q[8];
rx(0.5*pi) q[22];
cx q[10], q[27];
cx q[22], q[27];
rz(1.75*pi) q[27];
cx q[22], q[27];
cx q[10], q[27];
rx(-0.5*pi) q[22];
cx q[8], q[29];
cx q[28], q[29];
rz(0.75*pi) q[29];
cx q[28], q[29];
cx q[8], q[29];
cx q[15], q[17];
rz(1.75*pi) q[17];
cx q[15], q[17];
h q[0];
rx(0.5*pi) q[23];
cx q[0], q[23];
cx q[16], q[23];
cx q[22], q[23];
rz(1.25*pi) q[23];
cx q[22], q[23];
cx q[16], q[23];
cx q[0], q[23];
rx(-0.5*pi) q[23];
h q[0];
h q[15];
cx q[7], q[15];
rz(0.75*pi) q[15];
cx q[7], q[15];
h q[15];
rx(0.5*pi) q[9];
rx(0.5*pi) q[21];
cx q[5], q[21];
cx q[9], q[21];
rz(0.25*pi) q[21];
cx q[9], q[21];
cx q[5], q[21];
rx(-0.5*pi) q[21];
rx(-0.5*pi) q[9];
rx(0.5*pi) q[13];
h q[14];
cx q[2], q[14];
cx q[13], q[14];
rz(1.25*pi) q[14];
cx q[13], q[14];
cx q[2], q[14];
h q[14];
rx(-0.5*pi) q[13];
cx q[8], q[22];
rz(0.25*pi) q[22];
cx q[8], q[22];
h q[9];
rx(0.5*pi) q[20];
rx(0.5*pi) q[27];
cx q[8], q[27];
cx q[9], q[27];
cx q[20], q[27];
rz(1.75*pi) q[27];
cx q[20], q[27];
cx q[9], q[27];
cx q[8], q[27];
rx(-0.5*pi) q[27];
rx(-0.5*pi) q[20];
h q[9];