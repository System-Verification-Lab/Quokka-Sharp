OPENQASM 2.0;
include "qelib1.inc";
qreg q[50];
h q[16];
h q[34];
cx q[16], q[34];
rz(0.25*pi) q[34];
cx q[16], q[34];
h q[34];
h q[16];
h q[19];
rx(0.5*pi) q[23];
cx q[5], q[23];
cx q[12], q[23];
cx q[19], q[23];
rz(0.75*pi) q[23];
cx q[19], q[23];
cx q[12], q[23];
cx q[5], q[23];
rx(-0.5*pi) q[23];
h q[19];
h q[13];
rx(0.5*pi) q[34];
cx q[13], q[34];
rz(0.25*pi) q[34];
cx q[13], q[34];
rx(-0.5*pi) q[34];
h q[13];
rx(0.5*pi) q[40];
rx(0.5*pi) q[43];
cx q[2], q[43];
cx q[29], q[43];
cx q[40], q[43];
rz(1.75*pi) q[43];
cx q[40], q[43];
cx q[29], q[43];
cx q[2], q[43];
rx(-0.5*pi) q[43];
rx(-0.5*pi) q[40];
rx(0.5*pi) q[35];
cx q[0], q[35];
rz(0.25*pi) q[35];
cx q[0], q[35];
rx(-0.5*pi) q[35];
h q[20];
cx q[20], q[36];
cx q[29], q[36];
cx q[32], q[36];
rz(0.75*pi) q[36];
cx q[32], q[36];
cx q[29], q[36];
cx q[20], q[36];
h q[20];
h q[13];
h q[18];
rx(0.5*pi) q[46];
cx q[8], q[46];
cx q[13], q[46];
cx q[18], q[46];
rz(0.25*pi) q[46];
cx q[18], q[46];
cx q[13], q[46];
cx q[8], q[46];
rx(-0.5*pi) q[46];
h q[18];
h q[13];
h q[8];
cx q[8], q[43];
rz(0.75*pi) q[43];
cx q[8], q[43];
h q[8];
h q[21];
h q[25];
rx(0.5*pi) q[48];
cx q[21], q[48];
cx q[25], q[48];
rz(0.25*pi) q[48];
cx q[25], q[48];
cx q[21], q[48];
rx(-0.5*pi) q[48];
h q[25];
h q[21];
rx(0.5*pi) q[7];
rx(0.5*pi) q[16];
h q[37];
cx q[7], q[37];
cx q[11], q[37];
cx q[16], q[37];
rz(1.75*pi) q[37];
cx q[16], q[37];
cx q[11], q[37];
cx q[7], q[37];
h q[37];
rx(-0.5*pi) q[16];
rx(-0.5*pi) q[7];