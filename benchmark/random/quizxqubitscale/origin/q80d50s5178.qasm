OPENQASM 2.0;
include "qelib1.inc";
qreg q[80];
h q[29];
rx(0.5*pi) q[39];
cx q[27], q[39];
cx q[29], q[39];
cx q[31], q[39];
rz(1.75*pi) q[39];
cx q[31], q[39];
cx q[29], q[39];
cx q[27], q[39];
rx(-0.5*pi) q[39];
h q[29];
rx(0.5*pi) q[9];
h q[73];
cx q[9], q[73];
cx q[33], q[73];
cx q[40], q[73];
rz(0.25*pi) q[73];
cx q[40], q[73];
cx q[33], q[73];
cx q[9], q[73];
h q[73];
rx(-0.5*pi) q[9];
h q[37];
rx(0.5*pi) q[67];
cx q[36], q[67];
cx q[37], q[67];
rz(0.25*pi) q[67];
cx q[37], q[67];
cx q[36], q[67];
rx(-0.5*pi) q[67];
h q[37];
h q[53];
rx(0.5*pi) q[59];
cx q[9], q[59];
cx q[53], q[59];
rz(1.75*pi) q[59];
cx q[53], q[59];
cx q[9], q[59];
rx(-0.5*pi) q[59];
h q[53];
h q[1];
rx(0.5*pi) q[16];
cx q[1], q[16];
cx q[11], q[16];
rz(0.75*pi) q[16];
cx q[11], q[16];
cx q[1], q[16];
rx(-0.5*pi) q[16];
h q[1];
h q[13];
rx(0.5*pi) q[41];
rx(0.5*pi) q[76];
cx q[13], q[76];
cx q[41], q[76];
rz(1.75*pi) q[76];
cx q[41], q[76];
cx q[13], q[76];
rx(-0.5*pi) q[76];
rx(-0.5*pi) q[41];
h q[13];
h q[37];
rx(0.5*pi) q[62];
h q[68];
cx q[25], q[68];
cx q[37], q[68];
cx q[62], q[68];
rz(1.25*pi) q[68];
cx q[62], q[68];
cx q[37], q[68];
cx q[25], q[68];
h q[68];
rx(-0.5*pi) q[62];
h q[37];
h q[11];
cx q[1], q[11];
rz(1.25*pi) q[11];
cx q[1], q[11];
h q[11];
h q[20];
rx(0.5*pi) q[32];
h q[60];
rx(0.5*pi) q[70];
cx q[20], q[70];
cx q[32], q[70];
cx q[60], q[70];
rz(1.75*pi) q[70];
cx q[60], q[70];
cx q[32], q[70];
cx q[20], q[70];
rx(-0.5*pi) q[70];
h q[60];
rx(-0.5*pi) q[32];
h q[20];
h q[11];
rx(0.5*pi) q[62];
cx q[11], q[62];
cx q[37], q[62];
rz(0.25*pi) q[62];
cx q[37], q[62];
cx q[11], q[62];
rx(-0.5*pi) q[62];
h q[11];
rx(0.5*pi) q[66];
cx q[28], q[66];
rz(0.25*pi) q[66];
cx q[28], q[66];
rx(-0.5*pi) q[66];
cx q[6], q[46];
rz(1.25*pi) q[46];
cx q[6], q[46];
rx(0.5*pi) q[8];
h q[15];
rx(0.5*pi) q[59];
cx q[8], q[59];
cx q[15], q[59];
rz(1.25*pi) q[59];
cx q[15], q[59];
cx q[8], q[59];
rx(-0.5*pi) q[59];
h q[15];
rx(-0.5*pi) q[8];
h q[6];
cx q[5], q[6];
rz(0.75*pi) q[6];
cx q[5], q[6];
h q[6];
h q[27];
cx q[27], q[62];
cx q[48], q[62];
rz(1.25*pi) q[62];
cx q[48], q[62];
cx q[27], q[62];
h q[27];
rx(0.5*pi) q[47];
cx q[34], q[47];
cx q[39], q[47];
rz(0.25*pi) q[47];
cx q[39], q[47];
cx q[34], q[47];
rx(-0.5*pi) q[47];
h q[35];
rx(0.5*pi) q[47];
cx q[35], q[47];
cx q[42], q[47];
rz(0.25*pi) q[47];
cx q[42], q[47];
cx q[35], q[47];
rx(-0.5*pi) q[47];
h q[35];
h q[36];
rx(0.5*pi) q[43];
cx q[36], q[78];
cx q[43], q[78];
cx q[76], q[78];
rz(1.25*pi) q[78];
cx q[76], q[78];
cx q[43], q[78];
cx q[36], q[78];
rx(-0.5*pi) q[43];
h q[36];
h q[16];
rx(0.5*pi) q[71];
cx q[16], q[71];
rz(0.75*pi) q[71];
cx q[16], q[71];
rx(-0.5*pi) q[71];
h q[16];
h q[13];
h q[39];
rx(0.5*pi) q[75];
cx q[12], q[75];
cx q[13], q[75];
cx q[39], q[75];
rz(1.25*pi) q[75];
cx q[39], q[75];
cx q[13], q[75];
cx q[12], q[75];
rx(-0.5*pi) q[75];
h q[39];
h q[13];
h q[29];
cx q[29], q[50];
rz(1.25*pi) q[50];
cx q[29], q[50];
h q[29];
h q[42];
cx q[11], q[70];
cx q[42], q[70];
rz(1.25*pi) q[70];
cx q[42], q[70];
cx q[11], q[70];
h q[42];
h q[20];
h q[22];
cx q[20], q[37];
cx q[22], q[37];
rz(1.75*pi) q[37];
cx q[22], q[37];
cx q[20], q[37];
h q[22];
h q[20];
rx(0.5*pi) q[54];
cx q[4], q[54];
rz(0.75*pi) q[54];
cx q[4], q[54];
rx(-0.5*pi) q[54];
rx(0.5*pi) q[27];
h q[39];
cx q[27], q[39];
rz(0.75*pi) q[39];
cx q[27], q[39];
h q[39];
rx(-0.5*pi) q[27];
h q[10];
rx(0.5*pi) q[15];
rx(0.5*pi) q[31];
cx q[10], q[31];
cx q[15], q[31];
rz(0.25*pi) q[31];
cx q[15], q[31];
cx q[10], q[31];
rx(-0.5*pi) q[31];
rx(-0.5*pi) q[15];
h q[10];
h q[17];
h q[29];
h q[63];
cx q[16], q[63];
cx q[17], q[63];
cx q[29], q[63];
rz(0.25*pi) q[63];
cx q[29], q[63];
cx q[17], q[63];
cx q[16], q[63];
h q[63];
h q[29];
h q[17];
rx(0.5*pi) q[41];
h q[63];
cx q[41], q[63];
rz(1.25*pi) q[63];
cx q[41], q[63];
h q[63];
rx(-0.5*pi) q[41];
cx q[19], q[22];
rz(0.75*pi) q[22];
cx q[19], q[22];
rx(0.5*pi) q[26];
cx q[17], q[76];
cx q[26], q[76];
rz(1.75*pi) q[76];
cx q[26], q[76];
cx q[17], q[76];
rx(-0.5*pi) q[26];
h q[52];
cx q[14], q[52];
rz(1.25*pi) q[52];
cx q[14], q[52];
h q[52];
h q[15];
rx(0.5*pi) q[47];
cx q[15], q[47];
rz(0.25*pi) q[47];
cx q[15], q[47];
rx(-0.5*pi) q[47];
h q[15];
rx(0.5*pi) q[10];
h q[39];
h q[78];
cx q[10], q[78];
cx q[39], q[78];
rz(0.25*pi) q[78];
cx q[39], q[78];
cx q[10], q[78];
h q[78];
h q[39];
rx(-0.5*pi) q[10];
rx(0.5*pi) q[8];
h q[12];
h q[62];
h q[63];
cx q[8], q[63];
cx q[12], q[63];
cx q[62], q[63];
rz(0.25*pi) q[63];
cx q[62], q[63];
cx q[12], q[63];
cx q[8], q[63];
h q[63];
h q[62];
h q[12];
rx(-0.5*pi) q[8];
h q[71];
cx q[71], q[74];
rz(0.25*pi) q[74];
cx q[71], q[74];
h q[71];
rx(0.5*pi) q[59];
rx(0.5*pi) q[63];
cx q[27], q[67];
cx q[59], q[67];
cx q[63], q[67];
rz(1.25*pi) q[67];
cx q[63], q[67];
cx q[59], q[67];
cx q[27], q[67];
rx(-0.5*pi) q[63];
rx(-0.5*pi) q[59];
h q[46];
rx(0.5*pi) q[53];
h q[56];
cx q[8], q[56];
cx q[46], q[56];
cx q[53], q[56];
rz(1.75*pi) q[56];
cx q[53], q[56];
cx q[46], q[56];
cx q[8], q[56];
h q[56];
rx(-0.5*pi) q[53];
h q[46];
rx(0.5*pi) q[4];
h q[37];
rx(0.5*pi) q[48];
cx q[4], q[48];
cx q[37], q[48];
rz(1.75*pi) q[48];
cx q[37], q[48];
cx q[4], q[48];
rx(-0.5*pi) q[48];
h q[37];
rx(-0.5*pi) q[4];
rx(0.5*pi) q[5];
h q[21];
cx q[5], q[21];
cx q[6], q[21];
rz(0.25*pi) q[21];
cx q[6], q[21];
cx q[5], q[21];
h q[21];
rx(-0.5*pi) q[5];
h q[65];
cx q[59], q[65];
rz(0.25*pi) q[65];
cx q[59], q[65];
h q[65];
h q[16];
rx(0.5*pi) q[23];
cx q[16], q[42];
cx q[23], q[42];
cx q[36], q[42];
rz(1.25*pi) q[42];
cx q[36], q[42];
cx q[23], q[42];
cx q[16], q[42];
rx(-0.5*pi) q[23];
h q[16];
rx(0.5*pi) q[9];
cx q[9], q[19];
rz(1.75*pi) q[19];
cx q[9], q[19];
rx(-0.5*pi) q[9];
h q[40];
cx q[9], q[57];
cx q[40], q[57];
rz(1.25*pi) q[57];
cx q[40], q[57];
cx q[9], q[57];
h q[40];
rx(0.5*pi) q[17];
rx(0.5*pi) q[46];
cx q[17], q[79];
cx q[46], q[79];
cx q[49], q[79];
rz(1.75*pi) q[79];
cx q[49], q[79];
cx q[46], q[79];
cx q[17], q[79];
rx(-0.5*pi) q[46];
rx(-0.5*pi) q[17];
rx(0.5*pi) q[65];
cx q[50], q[65];
rz(0.25*pi) q[65];
cx q[50], q[65];
rx(-0.5*pi) q[65];
rx(0.5*pi) q[54];
cx q[34], q[69];
cx q[54], q[69];
rz(1.75*pi) q[69];
cx q[54], q[69];
cx q[34], q[69];
rx(-0.5*pi) q[54];
rx(0.5*pi) q[1];
rx(0.5*pi) q[28];
rx(0.5*pi) q[76];
cx q[1], q[76];
cx q[6], q[76];
cx q[28], q[76];
rz(1.75*pi) q[76];
cx q[28], q[76];
cx q[6], q[76];
cx q[1], q[76];
rx(-0.5*pi) q[76];
rx(-0.5*pi) q[28];
rx(-0.5*pi) q[1];
rx(0.5*pi) q[17];
rx(0.5*pi) q[22];
h q[34];
cx q[17], q[42];
cx q[22], q[42];
cx q[34], q[42];
rz(0.75*pi) q[42];
cx q[34], q[42];
cx q[22], q[42];
cx q[17], q[42];
h q[34];
rx(-0.5*pi) q[22];
rx(-0.5*pi) q[17];
rx(0.5*pi) q[13];
h q[78];
cx q[13], q[78];
rz(0.75*pi) q[78];
cx q[13], q[78];
h q[78];
rx(-0.5*pi) q[13];
h q[3];
rx(0.5*pi) q[17];
cx q[3], q[17];
rz(1.75*pi) q[17];
cx q[3], q[17];
rx(-0.5*pi) q[17];
h q[3];