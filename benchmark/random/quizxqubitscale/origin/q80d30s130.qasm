OPENQASM 2.0;
include "qelib1.inc";
qreg q[80];
rx(0.5*pi) q[58];
rx(0.5*pi) q[64];
cx q[58], q[64];
rz(0.75*pi) q[64];
cx q[58], q[64];
rx(-0.5*pi) q[64];
rx(-0.5*pi) q[58];
h q[16];
h q[36];
cx q[16], q[64];
cx q[36], q[64];
rz(1.75*pi) q[64];
cx q[36], q[64];
cx q[16], q[64];
h q[36];
h q[16];
h q[42];
h q[59];
cx q[23], q[59];
cx q[42], q[59];
rz(0.25*pi) q[59];
cx q[42], q[59];
cx q[23], q[59];
h q[59];
h q[42];
rx(0.5*pi) q[32];
h q[64];
cx q[31], q[64];
cx q[32], q[64];
rz(1.75*pi) q[64];
cx q[32], q[64];
cx q[31], q[64];
h q[64];
rx(-0.5*pi) q[32];
rx(0.5*pi) q[19];
h q[27];
rx(0.5*pi) q[64];
cx q[19], q[64];
cx q[27], q[64];
rz(0.75*pi) q[64];
cx q[27], q[64];
cx q[19], q[64];
rx(-0.5*pi) q[64];
h q[27];
rx(-0.5*pi) q[19];
rx(0.5*pi) q[28];
rx(0.5*pi) q[54];
rx(0.5*pi) q[69];
cx q[28], q[69];
cx q[54], q[69];
rz(1.25*pi) q[69];
cx q[54], q[69];
cx q[28], q[69];
rx(-0.5*pi) q[69];
rx(-0.5*pi) q[54];
rx(-0.5*pi) q[28];
rx(0.5*pi) q[16];
cx q[16], q[25];
rz(1.75*pi) q[25];
cx q[16], q[25];
rx(-0.5*pi) q[16];
rx(0.5*pi) q[69];
cx q[45], q[69];
cx q[56], q[69];
rz(1.25*pi) q[69];
cx q[56], q[69];
cx q[45], q[69];
rx(-0.5*pi) q[69];
rx(0.5*pi) q[11];
h q[59];
cx q[11], q[59];
cx q[14], q[59];
rz(0.25*pi) q[59];
cx q[14], q[59];
cx q[11], q[59];
h q[59];
rx(-0.5*pi) q[11];
rx(0.5*pi) q[59];
cx q[46], q[59];
rz(0.75*pi) q[59];
cx q[46], q[59];
rx(-0.5*pi) q[59];
h q[34];
rx(0.5*pi) q[39];
cx q[34], q[39];
rz(1.25*pi) q[39];
cx q[34], q[39];
rx(-0.5*pi) q[39];
h q[34];
h q[28];
rx(0.5*pi) q[79];
cx q[9], q[79];
cx q[28], q[79];
cx q[32], q[79];
rz(0.75*pi) q[79];
cx q[32], q[79];
cx q[28], q[79];
cx q[9], q[79];
rx(-0.5*pi) q[79];
h q[28];
rx(0.5*pi) q[63];
cx q[22], q[63];
cx q[44], q[63];
cx q[55], q[63];
rz(0.75*pi) q[63];
cx q[55], q[63];
cx q[44], q[63];
cx q[22], q[63];
rx(-0.5*pi) q[63];
rx(0.5*pi) q[0];
h q[8];
cx q[0], q[48];
cx q[8], q[48];
rz(1.25*pi) q[48];
cx q[8], q[48];
cx q[0], q[48];
h q[8];
rx(-0.5*pi) q[0];
rx(0.5*pi) q[59];
cx q[38], q[72];
cx q[39], q[72];
cx q[59], q[72];
rz(0.75*pi) q[72];
cx q[59], q[72];
cx q[39], q[72];
cx q[38], q[72];
rx(-0.5*pi) q[59];
cx q[14], q[59];
rz(0.25*pi) q[59];
cx q[14], q[59];
rx(0.5*pi) q[16];
cx q[16], q[63];
cx q[52], q[63];
rz(0.25*pi) q[63];
cx q[52], q[63];
cx q[16], q[63];
rx(-0.5*pi) q[16];
h q[63];
cx q[8], q[78];
cx q[63], q[78];
rz(0.75*pi) q[78];
cx q[63], q[78];
cx q[8], q[78];
h q[63];
h q[13];
h q[24];
rx(0.5*pi) q[29];
h q[78];
cx q[13], q[78];
cx q[24], q[78];
cx q[29], q[78];
rz(0.75*pi) q[78];
cx q[29], q[78];
cx q[24], q[78];
cx q[13], q[78];
h q[78];
rx(-0.5*pi) q[29];
h q[24];
h q[13];
rx(0.5*pi) q[20];
rx(0.5*pi) q[57];
h q[74];
cx q[20], q[74];
cx q[23], q[74];
cx q[57], q[74];
rz(0.75*pi) q[74];
cx q[57], q[74];
cx q[23], q[74];
cx q[20], q[74];
h q[74];
rx(-0.5*pi) q[57];
rx(-0.5*pi) q[20];
h q[14];
h q[65];
h q[78];
cx q[14], q[78];
cx q[65], q[78];
rz(1.75*pi) q[78];
cx q[65], q[78];
cx q[14], q[78];
h q[78];
h q[65];
h q[14];
rx(0.5*pi) q[37];
cx q[37], q[71];
rz(1.25*pi) q[71];
cx q[37], q[71];
rx(-0.5*pi) q[37];
h q[9];
h q[37];
cx q[9], q[37];
rz(1.75*pi) q[37];
cx q[9], q[37];
h q[37];
h q[9];
rx(0.5*pi) q[58];
rx(0.5*pi) q[63];
cx q[58], q[63];
rz(0.25*pi) q[63];
cx q[58], q[63];
rx(-0.5*pi) q[63];
rx(-0.5*pi) q[58];
h q[29];
rx(0.5*pi) q[59];
cx q[29], q[66];
cx q[45], q[66];
cx q[59], q[66];
rz(0.25*pi) q[66];
cx q[59], q[66];
cx q[45], q[66];
cx q[29], q[66];
rx(-0.5*pi) q[59];
h q[29];
cx q[24], q[47];
cx q[25], q[47];
rz(0.25*pi) q[47];
cx q[25], q[47];
cx q[24], q[47];
h q[37];
h q[41];
h q[46];
cx q[37], q[63];
cx q[41], q[63];
cx q[46], q[63];
rz(0.75*pi) q[63];
cx q[46], q[63];
cx q[41], q[63];
cx q[37], q[63];
h q[46];
h q[41];
h q[37];
rx(0.5*pi) q[12];
rx(0.5*pi) q[36];
cx q[12], q[36];
rz(0.25*pi) q[36];
cx q[12], q[36];
rx(-0.5*pi) q[36];
rx(-0.5*pi) q[12];
rx(0.5*pi) q[20];
h q[47];
cx q[2], q[47];
cx q[17], q[47];
cx q[20], q[47];
rz(1.75*pi) q[47];
cx q[20], q[47];
cx q[17], q[47];
cx q[2], q[47];
h q[47];
rx(-0.5*pi) q[20];
h q[32];
rx(0.5*pi) q[45];
h q[64];
cx q[32], q[64];
cx q[45], q[64];
rz(1.75*pi) q[64];
cx q[45], q[64];
cx q[32], q[64];
h q[64];
rx(-0.5*pi) q[45];
h q[32];