OPENQASM 2.0;
include "qelib1.inc";
qreg q[70];
rx(0.5*pi) q[33];
cx q[25], q[50];
cx q[33], q[50];
cx q[36], q[50];
rz(1.75*pi) q[50];
cx q[36], q[50];
cx q[33], q[50];
cx q[25], q[50];
rx(-0.5*pi) q[33];
h q[8];
rx(0.5*pi) q[45];
rx(0.5*pi) q[55];
cx q[8], q[63];
cx q[45], q[63];
cx q[55], q[63];
rz(0.25*pi) q[63];
cx q[55], q[63];
cx q[45], q[63];
cx q[8], q[63];
rx(-0.5*pi) q[55];
rx(-0.5*pi) q[45];
h q[8];
rx(0.5*pi) q[4];
h q[8];
rx(0.5*pi) q[29];
cx q[4], q[29];
cx q[8], q[29];
rz(0.25*pi) q[29];
cx q[8], q[29];
cx q[4], q[29];
rx(-0.5*pi) q[29];
h q[8];
rx(-0.5*pi) q[4];
h q[8];
h q[12];
cx q[8], q[12];
rz(1.25*pi) q[12];
cx q[8], q[12];
h q[12];
h q[8];
rx(0.5*pi) q[6];
h q[11];
rx(0.5*pi) q[58];
cx q[6], q[58];
cx q[11], q[58];
rz(0.75*pi) q[58];
cx q[11], q[58];
cx q[6], q[58];
rx(-0.5*pi) q[58];
h q[11];
rx(-0.5*pi) q[6];
h q[47];
cx q[15], q[54];
cx q[30], q[54];
cx q[47], q[54];
rz(0.75*pi) q[54];
cx q[47], q[54];
cx q[30], q[54];
cx q[15], q[54];
h q[47];
h q[17];
rx(0.5*pi) q[28];
rx(0.5*pi) q[63];
cx q[17], q[63];
cx q[28], q[63];
rz(0.75*pi) q[63];
cx q[28], q[63];
cx q[17], q[63];
rx(-0.5*pi) q[63];
rx(-0.5*pi) q[28];
h q[17];
h q[67];
cx q[53], q[67];
cx q[63], q[67];
rz(0.75*pi) q[67];
cx q[63], q[67];
cx q[53], q[67];
h q[67];
rx(0.5*pi) q[3];
cx q[3], q[6];
rz(0.75*pi) q[6];
cx q[3], q[6];
rx(-0.5*pi) q[3];
h q[20];
cx q[11], q[20];
rz(0.25*pi) q[20];
cx q[11], q[20];
h q[20];