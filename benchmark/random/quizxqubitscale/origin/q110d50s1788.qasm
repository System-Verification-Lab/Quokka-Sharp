OPENQASM 2.0;
include "qelib1.inc";
qreg q[110];
rx(0.5*pi) q[16];
h q[88];
cx q[16], q[88];
rz(1.75*pi) q[88];
cx q[16], q[88];
h q[88];
rx(-0.5*pi) q[16];
rx(0.5*pi) q[80];
rx(0.5*pi) q[99];
cx q[80], q[99];
rz(1.25*pi) q[99];
cx q[80], q[99];
rx(-0.5*pi) q[99];
rx(-0.5*pi) q[80];
h q[20];
h q[87];
cx q[20], q[87];
cx q[49], q[87];
rz(0.25*pi) q[87];
cx q[49], q[87];
cx q[20], q[87];
h q[87];
h q[20];
h q[8];
rx(0.5*pi) q[29];
h q[73];
rx(0.5*pi) q[107];
cx q[8], q[107];
cx q[29], q[107];
cx q[73], q[107];
rz(1.25*pi) q[107];
cx q[73], q[107];
cx q[29], q[107];
cx q[8], q[107];
rx(-0.5*pi) q[107];
h q[73];
rx(-0.5*pi) q[29];
h q[8];
h q[12];
h q[45];
cx q[12], q[47];
cx q[19], q[47];
cx q[45], q[47];
rz(0.25*pi) q[47];
cx q[45], q[47];
cx q[19], q[47];
cx q[12], q[47];
h q[45];
h q[12];
h q[50];
h q[56];
rx(0.5*pi) q[81];
cx q[25], q[81];
cx q[50], q[81];
cx q[56], q[81];
rz(0.75*pi) q[81];
cx q[56], q[81];
cx q[50], q[81];
cx q[25], q[81];
rx(-0.5*pi) q[81];
h q[56];
h q[50];
rx(0.5*pi) q[19];
h q[95];
h q[104];
cx q[19], q[104];
cx q[25], q[104];
cx q[95], q[104];
rz(0.75*pi) q[104];
cx q[95], q[104];
cx q[25], q[104];
cx q[19], q[104];
h q[104];
h q[95];
rx(-0.5*pi) q[19];
h q[27];
h q[90];
cx q[27], q[90];
cx q[67], q[90];
rz(1.25*pi) q[90];
cx q[67], q[90];
cx q[27], q[90];
h q[90];
h q[27];
rx(0.5*pi) q[79];
cx q[38], q[79];
cx q[50], q[79];
cx q[54], q[79];
rz(0.25*pi) q[79];
cx q[54], q[79];
cx q[50], q[79];
cx q[38], q[79];
rx(-0.5*pi) q[79];
rx(0.5*pi) q[72];
cx q[45], q[72];
cx q[52], q[72];
rz(1.75*pi) q[72];
cx q[52], q[72];
cx q[45], q[72];
rx(-0.5*pi) q[72];
cx q[2], q[74];
cx q[33], q[74];
cx q[66], q[74];
rz(1.25*pi) q[74];
cx q[66], q[74];
cx q[33], q[74];
cx q[2], q[74];
h q[4];
rx(0.5*pi) q[82];
cx q[4], q[82];
cx q[50], q[82];
rz(0.25*pi) q[82];
cx q[50], q[82];
cx q[4], q[82];
rx(-0.5*pi) q[82];
h q[4];
rx(0.5*pi) q[21];
h q[48];
cx q[21], q[84];
cx q[48], q[84];
cx q[82], q[84];
rz(1.75*pi) q[84];
cx q[82], q[84];
cx q[48], q[84];
cx q[21], q[84];
h q[48];
rx(-0.5*pi) q[21];
rx(0.5*pi) q[71];
rx(0.5*pi) q[72];
rx(0.5*pi) q[93];
cx q[71], q[93];
cx q[72], q[93];
rz(1.75*pi) q[93];
cx q[72], q[93];
cx q[71], q[93];
rx(-0.5*pi) q[93];
rx(-0.5*pi) q[72];
rx(-0.5*pi) q[71];
h q[78];
rx(0.5*pi) q[83];
cx q[25], q[83];
cx q[40], q[83];
cx q[78], q[83];
rz(1.75*pi) q[83];
cx q[78], q[83];
cx q[40], q[83];
cx q[25], q[83];
rx(-0.5*pi) q[83];
h q[78];
h q[72];
h q[96];
cx q[72], q[106];
cx q[86], q[106];
cx q[96], q[106];
rz(0.75*pi) q[106];
cx q[96], q[106];
cx q[86], q[106];
cx q[72], q[106];
h q[96];
h q[72];
h q[33];
rx(0.5*pi) q[82];
cx q[33], q[105];
cx q[82], q[105];
rz(1.75*pi) q[105];
cx q[82], q[105];
cx q[33], q[105];
rx(-0.5*pi) q[82];
h q[33];
rx(0.5*pi) q[23];
h q[58];
cx q[22], q[58];
cx q[23], q[58];
rz(1.75*pi) q[58];
cx q[23], q[58];
cx q[22], q[58];
h q[58];
rx(-0.5*pi) q[23];
rx(0.5*pi) q[93];
cx q[30], q[93];
rz(0.75*pi) q[93];
cx q[30], q[93];
rx(-0.5*pi) q[93];
h q[7];
h q[82];
rx(0.5*pi) q[105];
cx q[7], q[105];
cx q[82], q[105];
rz(0.25*pi) q[105];
cx q[82], q[105];
cx q[7], q[105];
rx(-0.5*pi) q[105];
h q[82];
h q[7];
rx(0.5*pi) q[18];
rx(0.5*pi) q[47];
cx q[18], q[47];
rz(1.25*pi) q[47];
cx q[18], q[47];
rx(-0.5*pi) q[47];
rx(-0.5*pi) q[18];
h q[34];
h q[65];
cx q[26], q[69];
cx q[34], q[69];
cx q[65], q[69];
rz(0.75*pi) q[69];
cx q[65], q[69];
cx q[34], q[69];
cx q[26], q[69];
h q[65];
h q[34];
h q[41];
rx(0.5*pi) q[100];
cx q[41], q[100];
cx q[94], q[100];
rz(0.75*pi) q[100];
cx q[94], q[100];
cx q[41], q[100];
rx(-0.5*pi) q[100];
h q[41];
rx(0.5*pi) q[10];
h q[50];
rx(0.5*pi) q[53];
rx(0.5*pi) q[64];
cx q[10], q[64];
cx q[50], q[64];
cx q[53], q[64];
rz(0.75*pi) q[64];
cx q[53], q[64];
cx q[50], q[64];
cx q[10], q[64];
rx(-0.5*pi) q[64];
rx(-0.5*pi) q[53];
h q[50];
rx(-0.5*pi) q[10];
rx(0.5*pi) q[17];
rx(0.5*pi) q[28];
cx q[17], q[106];
cx q[28], q[106];
rz(1.25*pi) q[106];
cx q[28], q[106];
cx q[17], q[106];
rx(-0.5*pi) q[28];
rx(-0.5*pi) q[17];
h q[81];
cx q[26], q[108];
cx q[43], q[108];
cx q[81], q[108];
rz(1.75*pi) q[108];
cx q[81], q[108];
cx q[43], q[108];
cx q[26], q[108];
h q[81];
h q[17];
h q[21];
cx q[17], q[81];
cx q[21], q[81];
rz(0.75*pi) q[81];
cx q[21], q[81];
cx q[17], q[81];
h q[21];
h q[17];
h q[5];
rx(0.5*pi) q[25];
cx q[5], q[25];
rz(1.25*pi) q[25];
cx q[5], q[25];
rx(-0.5*pi) q[25];
h q[5];
rx(0.5*pi) q[10];
rx(0.5*pi) q[42];
h q[90];
cx q[10], q[90];
cx q[42], q[90];
cx q[43], q[90];
rz(0.25*pi) q[90];
cx q[43], q[90];
cx q[42], q[90];
cx q[10], q[90];
h q[90];
rx(-0.5*pi) q[42];
rx(-0.5*pi) q[10];
h q[4];
h q[43];
cx q[4], q[43];
cx q[8], q[43];
cx q[31], q[43];
rz(1.25*pi) q[43];
cx q[31], q[43];
cx q[8], q[43];
cx q[4], q[43];
h q[43];
h q[4];
h q[24];
h q[70];
cx q[24], q[70];
cx q[47], q[70];
cx q[60], q[70];
rz(0.25*pi) q[70];
cx q[60], q[70];
cx q[47], q[70];
cx q[24], q[70];
h q[70];
h q[24];
h q[31];
h q[50];
cx q[31], q[50];
rz(0.25*pi) q[50];
cx q[31], q[50];
h q[50];
h q[31];
rx(0.5*pi) q[28];
h q[46];
cx q[28], q[46];
rz(1.75*pi) q[46];
cx q[28], q[46];
h q[46];
rx(-0.5*pi) q[28];
h q[10];
h q[25];
rx(0.5*pi) q[106];
cx q[10], q[106];
cx q[25], q[106];
rz(1.25*pi) q[106];
cx q[25], q[106];
cx q[10], q[106];
rx(-0.5*pi) q[106];
h q[25];
h q[10];
h q[74];
cx q[74], q[85];
cx q[84], q[85];
rz(1.75*pi) q[85];
cx q[84], q[85];
cx q[74], q[85];
h q[74];
rx(0.5*pi) q[23];
h q[31];
rx(0.5*pi) q[32];
h q[72];
cx q[23], q[72];
cx q[31], q[72];
cx q[32], q[72];
rz(1.75*pi) q[72];
cx q[32], q[72];
cx q[31], q[72];
cx q[23], q[72];
h q[72];
rx(-0.5*pi) q[32];
h q[31];
rx(-0.5*pi) q[23];
h q[26];
cx q[13], q[26];
rz(1.75*pi) q[26];
cx q[13], q[26];
h q[26];
rx(0.5*pi) q[11];
rx(0.5*pi) q[14];
cx q[11], q[14];
rz(0.25*pi) q[14];
cx q[11], q[14];
rx(-0.5*pi) q[14];
rx(-0.5*pi) q[11];
h q[66];
rx(0.5*pi) q[71];
cx q[66], q[71];
rz(0.25*pi) q[71];
cx q[66], q[71];
rx(-0.5*pi) q[71];
h q[66];
rx(0.5*pi) q[14];
h q[49];
cx q[1], q[49];
cx q[4], q[49];
cx q[14], q[49];
rz(0.25*pi) q[49];
cx q[14], q[49];
cx q[4], q[49];
cx q[1], q[49];
h q[49];
rx(-0.5*pi) q[14];
rx(0.5*pi) q[107];
cx q[11], q[107];
rz(0.25*pi) q[107];
cx q[11], q[107];
rx(-0.5*pi) q[107];
rx(0.5*pi) q[20];
cx q[3], q[97];
cx q[20], q[97];
cx q[77], q[97];
rz(1.75*pi) q[97];
cx q[77], q[97];
cx q[20], q[97];
cx q[3], q[97];
rx(-0.5*pi) q[20];
rx(0.5*pi) q[103];
cx q[3], q[103];
rz(0.75*pi) q[103];
cx q[3], q[103];
rx(-0.5*pi) q[103];
h q[38];
rx(0.5*pi) q[45];
h q[103];
cx q[38], q[103];
cx q[45], q[103];
cx q[68], q[103];
rz(0.75*pi) q[103];
cx q[68], q[103];
cx q[45], q[103];
cx q[38], q[103];
h q[103];
rx(-0.5*pi) q[45];
h q[38];
rx(0.5*pi) q[76];
rx(0.5*pi) q[80];
cx q[37], q[80];
cx q[74], q[80];
cx q[76], q[80];
rz(1.25*pi) q[80];
cx q[76], q[80];
cx q[74], q[80];
cx q[37], q[80];
rx(-0.5*pi) q[80];
rx(-0.5*pi) q[76];
h q[39];
h q[91];
cx q[39], q[91];
rz(0.75*pi) q[91];
cx q[39], q[91];
h q[91];
h q[39];
h q[47];
h q[100];
cx q[47], q[100];
cx q[50], q[100];
rz(0.75*pi) q[100];
cx q[50], q[100];
cx q[47], q[100];
h q[100];
h q[47];
h q[46];
h q[63];
h q[71];
h q[83];
cx q[46], q[83];
cx q[63], q[83];
cx q[71], q[83];
rz(1.75*pi) q[83];
cx q[71], q[83];
cx q[63], q[83];
cx q[46], q[83];
h q[83];
h q[71];
h q[63];
h q[46];
h q[78];
rx(0.5*pi) q[102];
cx q[23], q[102];
cx q[78], q[102];
rz(1.75*pi) q[102];
cx q[78], q[102];
cx q[23], q[102];
rx(-0.5*pi) q[102];
h q[78];
h q[29];
rx(0.5*pi) q[79];
cx q[29], q[79];
rz(1.75*pi) q[79];
cx q[29], q[79];
rx(-0.5*pi) q[79];
h q[29];