OPENQASM 2.0;
include "qelib1.inc";
qreg q[90];
h q[34];
h q[43];
h q[45];
h q[60];
cx q[34], q[60];
cx q[43], q[60];
cx q[45], q[60];
rz(0.25*pi) q[60];
cx q[45], q[60];
cx q[43], q[60];
cx q[34], q[60];
h q[60];
h q[45];
h q[43];
h q[34];
rx(0.5*pi) q[17];
cx q[17], q[48];
cx q[45], q[48];
rz(1.75*pi) q[48];
cx q[45], q[48];
cx q[17], q[48];
rx(-0.5*pi) q[17];
rx(0.5*pi) q[10];
h q[50];
cx q[10], q[50];
cx q[37], q[50];
cx q[45], q[50];
rz(0.25*pi) q[50];
cx q[45], q[50];
cx q[37], q[50];
cx q[10], q[50];
h q[50];
rx(-0.5*pi) q[10];
h q[40];
h q[70];
cx q[40], q[82];
cx q[70], q[82];
rz(0.25*pi) q[82];
cx q[70], q[82];
cx q[40], q[82];
h q[70];
h q[40];
h q[10];
rx(0.5*pi) q[33];
h q[59];
cx q[10], q[59];
cx q[33], q[59];
cx q[36], q[59];
rz(1.25*pi) q[59];
cx q[36], q[59];
cx q[33], q[59];
cx q[10], q[59];
h q[59];
rx(-0.5*pi) q[33];
h q[10];
h q[26];
rx(0.5*pi) q[38];
cx q[26], q[38];
rz(0.25*pi) q[38];
cx q[26], q[38];
rx(-0.5*pi) q[38];
h q[26];
rx(0.5*pi) q[15];
h q[23];
rx(0.5*pi) q[65];
cx q[13], q[65];
cx q[15], q[65];
cx q[23], q[65];
rz(0.75*pi) q[65];
cx q[23], q[65];
cx q[15], q[65];
cx q[13], q[65];
rx(-0.5*pi) q[65];
h q[23];
rx(-0.5*pi) q[15];
rx(0.5*pi) q[39];
cx q[19], q[82];
cx q[39], q[82];
cx q[60], q[82];
rz(0.25*pi) q[82];
cx q[60], q[82];
cx q[39], q[82];
cx q[19], q[82];
rx(-0.5*pi) q[39];
h q[48];
h q[79];
cx q[41], q[79];
cx q[48], q[79];
rz(1.75*pi) q[79];
cx q[48], q[79];
cx q[41], q[79];
h q[79];
h q[48];
rx(0.5*pi) q[17];
h q[42];
cx q[17], q[42];
cx q[41], q[42];
rz(1.75*pi) q[42];
cx q[41], q[42];
cx q[17], q[42];
h q[42];
rx(-0.5*pi) q[17];
h q[12];
cx q[12], q[42];
rz(0.75*pi) q[42];
cx q[12], q[42];
h q[12];
rx(0.5*pi) q[3];
cx q[3], q[4];
rz(0.25*pi) q[4];
cx q[3], q[4];
rx(-0.5*pi) q[3];
h q[26];
cx q[14], q[26];
rz(0.25*pi) q[26];
cx q[14], q[26];
h q[26];
rx(0.5*pi) q[9];
h q[17];
rx(0.5*pi) q[37];
cx q[9], q[37];
cx q[17], q[37];
rz(1.25*pi) q[37];
cx q[17], q[37];
cx q[9], q[37];
rx(-0.5*pi) q[37];
h q[17];
rx(-0.5*pi) q[9];
h q[7];
cx q[4], q[7];
rz(0.75*pi) q[7];
cx q[4], q[7];
h q[7];
h q[31];
h q[75];
cx q[31], q[75];
cx q[55], q[75];
rz(1.25*pi) q[75];
cx q[55], q[75];
cx q[31], q[75];
h q[75];
h q[31];
rx(0.5*pi) q[39];
h q[65];
h q[81];
cx q[39], q[81];
cx q[65], q[81];
rz(1.25*pi) q[81];
cx q[65], q[81];
cx q[39], q[81];
h q[81];
h q[65];
rx(-0.5*pi) q[39];
rx(0.5*pi) q[58];
rx(0.5*pi) q[86];
cx q[58], q[87];
cx q[86], q[87];
rz(1.25*pi) q[87];
cx q[86], q[87];
cx q[58], q[87];
rx(-0.5*pi) q[86];
rx(-0.5*pi) q[58];
h q[59];
cx q[59], q[62];
rz(1.25*pi) q[62];
cx q[59], q[62];
h q[59];
h q[24];
rx(0.5*pi) q[32];
cx q[24], q[53];
cx q[32], q[53];
cx q[47], q[53];
rz(0.75*pi) q[53];
cx q[47], q[53];
cx q[32], q[53];
cx q[24], q[53];
rx(-0.5*pi) q[32];
h q[24];
rx(0.5*pi) q[32];
rx(0.5*pi) q[60];
cx q[30], q[60];
cx q[32], q[60];
cx q[33], q[60];
rz(1.75*pi) q[60];
cx q[33], q[60];
cx q[32], q[60];
cx q[30], q[60];
rx(-0.5*pi) q[60];
rx(-0.5*pi) q[32];
h q[15];
h q[55];
h q[58];
cx q[15], q[58];
cx q[55], q[58];
rz(0.25*pi) q[58];
cx q[55], q[58];
cx q[15], q[58];
h q[58];
h q[55];
h q[15];
rx(0.5*pi) q[33];
cx q[33], q[72];
cx q[48], q[72];
rz(1.25*pi) q[72];
cx q[48], q[72];
cx q[33], q[72];
rx(-0.5*pi) q[33];
h q[42];
h q[83];
cx q[20], q[83];
cx q[42], q[83];
rz(1.25*pi) q[83];
cx q[42], q[83];
cx q[20], q[83];
h q[83];
h q[42];
rx(0.5*pi) q[16];
rx(0.5*pi) q[68];
cx q[14], q[68];
cx q[16], q[68];
rz(0.25*pi) q[68];
cx q[16], q[68];
cx q[14], q[68];
rx(-0.5*pi) q[68];
rx(-0.5*pi) q[16];
h q[50];
cx q[50], q[85];
rz(1.25*pi) q[85];
cx q[50], q[85];
h q[50];
h q[33];
h q[89];
cx q[2], q[89];
cx q[33], q[89];
rz(0.75*pi) q[89];
cx q[33], q[89];
cx q[2], q[89];
h q[89];
h q[33];
h q[34];
rx(0.5*pi) q[53];
rx(0.5*pi) q[63];
rx(0.5*pi) q[64];
cx q[34], q[64];
cx q[53], q[64];
cx q[63], q[64];
rz(0.25*pi) q[64];
cx q[63], q[64];
cx q[53], q[64];
cx q[34], q[64];
rx(-0.5*pi) q[64];
rx(-0.5*pi) q[63];
rx(-0.5*pi) q[53];
h q[34];
rx(0.5*pi) q[20];
rx(0.5*pi) q[38];
h q[45];
cx q[20], q[45];
cx q[38], q[45];
rz(1.75*pi) q[45];
cx q[38], q[45];
cx q[20], q[45];
h q[45];
rx(-0.5*pi) q[38];
rx(-0.5*pi) q[20];
h q[55];
cx q[55], q[87];
rz(0.75*pi) q[87];
cx q[55], q[87];
h q[55];
h q[19];
rx(0.5*pi) q[83];
rx(0.5*pi) q[86];
cx q[19], q[86];
cx q[83], q[86];
rz(0.75*pi) q[86];
cx q[83], q[86];
cx q[19], q[86];
rx(-0.5*pi) q[86];
rx(-0.5*pi) q[83];
h q[19];
rx(0.5*pi) q[8];
cx q[8], q[69];
rz(1.75*pi) q[69];
cx q[8], q[69];
rx(-0.5*pi) q[8];
h q[59];
h q[70];
cx q[59], q[70];
rz(1.25*pi) q[70];
cx q[59], q[70];
h q[70];
h q[59];
cx q[76], q[77];
rz(1.25*pi) q[77];
cx q[76], q[77];
h q[71];
h q[87];
cx q[41], q[87];
cx q[71], q[87];
rz(1.25*pi) q[87];
cx q[71], q[87];
cx q[41], q[87];
h q[87];
h q[71];
rx(0.5*pi) q[64];
rx(0.5*pi) q[83];
cx q[55], q[83];
cx q[64], q[83];
rz(0.25*pi) q[83];
cx q[64], q[83];
cx q[55], q[83];
rx(-0.5*pi) q[83];
rx(-0.5*pi) q[64];
rx(0.5*pi) q[56];
rx(0.5*pi) q[70];
cx q[56], q[70];
rz(0.25*pi) q[70];
cx q[56], q[70];
rx(-0.5*pi) q[70];
rx(-0.5*pi) q[56];
h q[14];
h q[48];
cx q[14], q[84];
cx q[48], q[84];
rz(0.75*pi) q[84];
cx q[48], q[84];
cx q[14], q[84];
h q[48];
h q[14];
h q[18];
rx(0.5*pi) q[33];
rx(0.5*pi) q[34];
cx q[18], q[62];
cx q[33], q[62];
cx q[34], q[62];
rz(0.75*pi) q[62];
cx q[34], q[62];
cx q[33], q[62];
cx q[18], q[62];
rx(-0.5*pi) q[34];
rx(-0.5*pi) q[33];
h q[18];
cx q[59], q[63];
rz(1.75*pi) q[63];
cx q[59], q[63];
h q[44];
rx(0.5*pi) q[60];
h q[73];
cx q[1], q[73];
cx q[44], q[73];
cx q[60], q[73];
rz(0.25*pi) q[73];
cx q[60], q[73];
cx q[44], q[73];
cx q[1], q[73];
h q[73];
rx(-0.5*pi) q[60];
h q[44];
rx(0.5*pi) q[5];
h q[23];
rx(0.5*pi) q[73];
cx q[5], q[73];
cx q[23], q[73];
cx q[47], q[73];
rz(0.25*pi) q[73];
cx q[47], q[73];
cx q[23], q[73];
cx q[5], q[73];
rx(-0.5*pi) q[73];
h q[23];
rx(-0.5*pi) q[5];
rx(0.5*pi) q[34];
h q[73];
cx q[34], q[73];
rz(0.25*pi) q[73];
cx q[34], q[73];
h q[73];
rx(-0.5*pi) q[34];
h q[1];
rx(0.5*pi) q[18];
cx q[1], q[88];
cx q[18], q[88];
cx q[26], q[88];
rz(1.25*pi) q[88];
cx q[26], q[88];
cx q[18], q[88];
cx q[1], q[88];
rx(-0.5*pi) q[18];
h q[1];
rx(0.5*pi) q[17];
rx(0.5*pi) q[58];
cx q[17], q[58];
rz(1.75*pi) q[58];
cx q[17], q[58];
rx(-0.5*pi) q[58];
rx(-0.5*pi) q[17];
h q[44];
cx q[44], q[64];
cx q[47], q[64];
rz(1.25*pi) q[64];
cx q[47], q[64];
cx q[44], q[64];
h q[44];
rx(0.5*pi) q[19];
rx(0.5*pi) q[23];
cx q[19], q[55];
cx q[23], q[55];
cx q[52], q[55];
rz(1.75*pi) q[55];
cx q[52], q[55];
cx q[23], q[55];
cx q[19], q[55];
rx(-0.5*pi) q[23];
rx(-0.5*pi) q[19];
rx(0.5*pi) q[26];
rx(0.5*pi) q[55];
cx q[26], q[55];
rz(1.75*pi) q[55];
cx q[26], q[55];
rx(-0.5*pi) q[55];
rx(-0.5*pi) q[26];
rx(0.5*pi) q[38];
cx q[33], q[38];
rz(1.75*pi) q[38];
cx q[33], q[38];
rx(-0.5*pi) q[38];
rx(0.5*pi) q[68];
cx q[68], q[75];
rz(0.75*pi) q[75];
cx q[68], q[75];
rx(-0.5*pi) q[68];