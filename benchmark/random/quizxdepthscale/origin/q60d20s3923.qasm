OPENQASM 2.0;
include "qelib1.inc";
qreg q[60];
cx q[23], q[35];
rz(1.75*pi) q[35];
cx q[23], q[35];
rx(0.5*pi) q[10];
cx q[10], q[53];
rz(1.25*pi) q[53];
cx q[10], q[53];
rx(-0.5*pi) q[10];
cx q[10], q[51];
cx q[22], q[51];
rz(1.25*pi) q[51];
cx q[22], q[51];
cx q[10], q[51];
rx(0.5*pi) q[29];
cx q[29], q[46];
rz(0.25*pi) q[46];
cx q[29], q[46];
rx(-0.5*pi) q[29];
h q[13];
h q[46];
rx(0.5*pi) q[55];
cx q[13], q[56];
cx q[46], q[56];
cx q[55], q[56];
rz(1.75*pi) q[56];
cx q[55], q[56];
cx q[46], q[56];
cx q[13], q[56];
rx(-0.5*pi) q[55];
h q[46];
h q[13];
rx(0.5*pi) q[18];
rx(0.5*pi) q[40];
cx q[18], q[40];
rz(0.25*pi) q[40];
cx q[18], q[40];
rx(-0.5*pi) q[40];
rx(-0.5*pi) q[18];
h q[40];
cx q[19], q[40];
cx q[36], q[40];
cx q[39], q[40];
rz(0.25*pi) q[40];
cx q[39], q[40];
cx q[36], q[40];
cx q[19], q[40];
h q[40];
rx(0.5*pi) q[11];
rx(0.5*pi) q[28];
h q[39];
cx q[11], q[39];
cx q[28], q[39];
rz(1.75*pi) q[39];
cx q[28], q[39];
cx q[11], q[39];
h q[39];
rx(-0.5*pi) q[28];
rx(-0.5*pi) q[11];
rx(0.5*pi) q[24];
cx q[24], q[37];
rz(1.75*pi) q[37];
cx q[24], q[37];
rx(-0.5*pi) q[24];
h q[1];
h q[28];
cx q[1], q[47];
cx q[28], q[47];
cx q[44], q[47];
rz(1.75*pi) q[47];
cx q[44], q[47];
cx q[28], q[47];
cx q[1], q[47];
h q[28];
h q[1];
cx q[26], q[56];
cx q[30], q[56];
cx q[36], q[56];
rz(1.75*pi) q[56];
cx q[36], q[56];
cx q[30], q[56];
cx q[26], q[56];
h q[52];
cx q[17], q[52];
rz(1.75*pi) q[52];
cx q[17], q[52];
h q[52];
h q[9];
h q[43];
cx q[9], q[43];
rz(1.75*pi) q[43];
cx q[9], q[43];
h q[43];
h q[9];
h q[23];
h q[40];
rx(0.5*pi) q[45];
rx(0.5*pi) q[49];
cx q[23], q[49];
cx q[40], q[49];
cx q[45], q[49];
rz(1.75*pi) q[49];
cx q[45], q[49];
cx q[40], q[49];
cx q[23], q[49];
rx(-0.5*pi) q[49];
rx(-0.5*pi) q[45];
h q[40];
h q[23];
rx(0.5*pi) q[23];
cx q[16], q[23];
cx q[19], q[23];
cx q[22], q[23];
rz(0.75*pi) q[23];
cx q[22], q[23];
cx q[19], q[23];
cx q[16], q[23];
rx(-0.5*pi) q[23];
h q[5];
h q[50];
cx q[5], q[50];
rz(0.25*pi) q[50];
cx q[5], q[50];
h q[50];
h q[5];
rx(0.5*pi) q[20];
h q[41];
rx(0.5*pi) q[57];
cx q[20], q[57];
cx q[41], q[57];
rz(0.25*pi) q[57];
cx q[41], q[57];
cx q[20], q[57];
rx(-0.5*pi) q[57];
h q[41];
rx(-0.5*pi) q[20];
rx(0.5*pi) q[14];
rx(0.5*pi) q[38];
cx q[14], q[38];
rz(0.25*pi) q[38];
cx q[14], q[38];
rx(-0.5*pi) q[38];
rx(-0.5*pi) q[14];
h q[28];
rx(0.5*pi) q[35];
rx(0.5*pi) q[46];
h q[54];
cx q[28], q[54];
cx q[35], q[54];
cx q[46], q[54];
rz(0.75*pi) q[54];
cx q[46], q[54];
cx q[35], q[54];
cx q[28], q[54];
h q[54];
rx(-0.5*pi) q[46];
rx(-0.5*pi) q[35];
h q[28];
rx(0.5*pi) q[13];
rx(0.5*pi) q[20];
h q[34];
cx q[13], q[43];
cx q[20], q[43];
cx q[34], q[43];
rz(0.75*pi) q[43];
cx q[34], q[43];
cx q[20], q[43];
cx q[13], q[43];
h q[34];
rx(-0.5*pi) q[20];
rx(-0.5*pi) q[13];