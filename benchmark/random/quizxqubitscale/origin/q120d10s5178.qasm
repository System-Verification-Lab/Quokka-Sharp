OPENQASM 2.0;
include "qelib1.inc";
qreg q[120];
h q[60];
h q[80];
h q[86];
cx q[57], q[86];
cx q[60], q[86];
cx q[80], q[86];
rz(0.75*pi) q[86];
cx q[80], q[86];
cx q[60], q[86];
cx q[57], q[86];
h q[86];
h q[80];
h q[60];
h q[60];
cx q[49], q[60];
rz(0.25*pi) q[60];
cx q[49], q[60];
h q[60];
h q[18];
h q[78];
cx q[18], q[78];
cx q[50], q[78];
rz(1.25*pi) q[78];
cx q[50], q[78];
cx q[18], q[78];
h q[78];
h q[18];
rx(0.5*pi) q[104];
cx q[97], q[104];
rz(0.25*pi) q[104];
cx q[97], q[104];
rx(-0.5*pi) q[104];
h q[7];
rx(0.5*pi) q[12];
h q[23];
cx q[7], q[23];
cx q[12], q[23];
rz(0.25*pi) q[23];
cx q[12], q[23];
cx q[7], q[23];
h q[23];
rx(-0.5*pi) q[12];
h q[7];
h q[32];
cx q[32], q[69];
cx q[51], q[69];
rz(0.25*pi) q[69];
cx q[51], q[69];
cx q[32], q[69];
h q[32];
h q[14];
h q[21];
cx q[14], q[21];
rz(1.25*pi) q[21];
cx q[14], q[21];
h q[21];
h q[14];
rx(0.5*pi) q[10];
rx(0.5*pi) q[20];
cx q[10], q[102];
cx q[20], q[102];
rz(1.75*pi) q[102];
cx q[20], q[102];
cx q[10], q[102];
rx(-0.5*pi) q[20];
rx(-0.5*pi) q[10];
h q[56];
rx(0.5*pi) q[94];
h q[103];
cx q[38], q[103];
cx q[56], q[103];
cx q[94], q[103];
rz(1.25*pi) q[103];
cx q[94], q[103];
cx q[56], q[103];
cx q[38], q[103];
h q[103];
rx(-0.5*pi) q[94];
h q[56];
h q[16];
cx q[2], q[16];
rz(1.25*pi) q[16];
cx q[2], q[16];
h q[16];