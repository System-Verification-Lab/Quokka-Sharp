OPENQASM 2.0;
include "qelib1.inc";
qreg q[110];
rx(0.5*pi) q[8];
rx(0.5*pi) q[48];
cx q[8], q[51];
cx q[39], q[51];
cx q[48], q[51];
rz(1.75*pi) q[51];
cx q[48], q[51];
cx q[39], q[51];
cx q[8], q[51];
rx(-0.5*pi) q[48];
rx(-0.5*pi) q[8];
rx(0.5*pi) q[90];
cx q[16], q[90];
rz(0.25*pi) q[90];
cx q[16], q[90];
rx(-0.5*pi) q[90];
h q[40];
cx q[4], q[65];
cx q[35], q[65];
cx q[40], q[65];
rz(0.75*pi) q[65];
cx q[40], q[65];
cx q[35], q[65];
cx q[4], q[65];
h q[40];
rx(0.5*pi) q[31];
h q[73];
cx q[31], q[73];
rz(1.75*pi) q[73];
cx q[31], q[73];
h q[73];
rx(-0.5*pi) q[31];
h q[95];
rx(0.5*pi) q[104];
cx q[74], q[104];
cx q[95], q[104];
rz(0.25*pi) q[104];
cx q[95], q[104];
cx q[74], q[104];
rx(-0.5*pi) q[104];
h q[95];
h q[52];
rx(0.5*pi) q[98];
h q[105];
cx q[52], q[105];
cx q[98], q[105];
rz(0.25*pi) q[105];
cx q[98], q[105];
cx q[52], q[105];
h q[105];
rx(-0.5*pi) q[98];
h q[52];
rx(0.5*pi) q[96];
cx q[4], q[96];
cx q[86], q[96];
rz(1.25*pi) q[96];
cx q[86], q[96];
cx q[4], q[96];
rx(-0.5*pi) q[96];
rx(0.5*pi) q[13];
h q[26];
rx(0.5*pi) q[41];
cx q[13], q[41];
cx q[22], q[41];
cx q[26], q[41];
rz(1.75*pi) q[41];
cx q[26], q[41];
cx q[22], q[41];
cx q[13], q[41];
rx(-0.5*pi) q[41];
h q[26];
rx(-0.5*pi) q[13];
h q[17];
h q[31];
h q[109];
cx q[17], q[109];
cx q[31], q[109];
cx q[92], q[109];
rz(0.75*pi) q[109];
cx q[92], q[109];
cx q[31], q[109];
cx q[17], q[109];
h q[109];
h q[31];
h q[17];
h q[40];
rx(0.5*pi) q[62];
rx(0.5*pi) q[97];
cx q[40], q[97];
cx q[62], q[97];
rz(0.75*pi) q[97];
cx q[62], q[97];
cx q[40], q[97];
rx(-0.5*pi) q[97];
rx(-0.5*pi) q[62];
h q[40];
rx(0.5*pi) q[92];
rx(0.5*pi) q[105];
cx q[31], q[105];
cx q[92], q[105];
rz(0.25*pi) q[105];
cx q[92], q[105];
cx q[31], q[105];
rx(-0.5*pi) q[105];
rx(-0.5*pi) q[92];
h q[77];
rx(0.5*pi) q[109];
cx q[40], q[109];
cx q[60], q[109];
cx q[77], q[109];
rz(0.25*pi) q[109];
cx q[77], q[109];
cx q[60], q[109];
cx q[40], q[109];
rx(-0.5*pi) q[109];
h q[77];
cx q[34], q[35];
rz(1.75*pi) q[35];
cx q[34], q[35];
h q[105];
cx q[20], q[105];
rz(0.25*pi) q[105];
cx q[20], q[105];
h q[105];
rx(0.5*pi) q[10];
h q[30];
h q[69];
cx q[6], q[69];
cx q[10], q[69];
cx q[30], q[69];
rz(0.25*pi) q[69];
cx q[30], q[69];
cx q[10], q[69];
cx q[6], q[69];
h q[69];
h q[30];
rx(-0.5*pi) q[10];
h q[25];
h q[37];
rx(0.5*pi) q[54];
cx q[25], q[54];
cx q[37], q[54];
cx q[45], q[54];
rz(1.75*pi) q[54];
cx q[45], q[54];
cx q[37], q[54];
cx q[25], q[54];
rx(-0.5*pi) q[54];
h q[37];
h q[25];
rx(0.5*pi) q[5];
rx(0.5*pi) q[14];
h q[88];
cx q[5], q[88];
cx q[14], q[88];
cx q[42], q[88];
rz(1.75*pi) q[88];
cx q[42], q[88];
cx q[14], q[88];
cx q[5], q[88];
h q[88];
rx(-0.5*pi) q[14];
rx(-0.5*pi) q[5];
h q[47];
h q[91];
cx q[47], q[91];
cx q[57], q[91];
rz(1.75*pi) q[91];
cx q[57], q[91];
cx q[47], q[91];
h q[91];
h q[47];
h q[52];
rx(0.5*pi) q[109];
cx q[52], q[109];
rz(0.75*pi) q[109];
cx q[52], q[109];
rx(-0.5*pi) q[109];
h q[52];
rx(0.5*pi) q[39];
rx(0.5*pi) q[74];
cx q[39], q[74];
rz(1.75*pi) q[74];
cx q[39], q[74];
rx(-0.5*pi) q[74];
rx(-0.5*pi) q[39];
h q[17];
rx(0.5*pi) q[62];
cx q[17], q[62];
cx q[23], q[62];
rz(1.25*pi) q[62];
cx q[23], q[62];
cx q[17], q[62];
rx(-0.5*pi) q[62];
h q[17];
rx(0.5*pi) q[49];
h q[54];
h q[89];
cx q[47], q[89];
cx q[49], q[89];
cx q[54], q[89];
rz(0.25*pi) q[89];
cx q[54], q[89];
cx q[49], q[89];
cx q[47], q[89];
h q[89];
h q[54];
rx(-0.5*pi) q[49];
rx(0.5*pi) q[43];
rx(0.5*pi) q[62];
cx q[43], q[85];
cx q[55], q[85];
cx q[62], q[85];
rz(0.25*pi) q[85];
cx q[62], q[85];
cx q[55], q[85];
cx q[43], q[85];
rx(-0.5*pi) q[62];
rx(-0.5*pi) q[43];
h q[9];
rx(0.5*pi) q[42];
cx q[9], q[42];
cx q[14], q[42];
cx q[38], q[42];
rz(1.75*pi) q[42];
cx q[38], q[42];
cx q[14], q[42];
cx q[9], q[42];
rx(-0.5*pi) q[42];
h q[9];
rx(0.5*pi) q[84];
rx(0.5*pi) q[102];
h q[107];
cx q[84], q[107];
cx q[102], q[107];
rz(0.75*pi) q[107];
cx q[102], q[107];
cx q[84], q[107];
h q[107];
rx(-0.5*pi) q[102];
rx(-0.5*pi) q[84];
rx(0.5*pi) q[3];
rx(0.5*pi) q[57];
cx q[3], q[57];
cx q[35], q[57];
cx q[48], q[57];
rz(0.75*pi) q[57];
cx q[48], q[57];
cx q[35], q[57];
cx q[3], q[57];
rx(-0.5*pi) q[57];
rx(-0.5*pi) q[3];
cx q[2], q[36];
rz(1.75*pi) q[36];
cx q[2], q[36];
rx(0.5*pi) q[80];
cx q[3], q[94];
cx q[80], q[94];
rz(0.25*pi) q[94];
cx q[80], q[94];
cx q[3], q[94];
rx(-0.5*pi) q[80];
rx(0.5*pi) q[1];
rx(0.5*pi) q[23];
h q[67];
h q[102];
cx q[1], q[102];
cx q[23], q[102];
cx q[67], q[102];
rz(1.75*pi) q[102];
cx q[67], q[102];
cx q[23], q[102];
cx q[1], q[102];
h q[102];
h q[67];
rx(-0.5*pi) q[23];
rx(-0.5*pi) q[1];
rx(0.5*pi) q[35];
rx(0.5*pi) q[63];
rx(0.5*pi) q[77];
cx q[35], q[100];
cx q[63], q[100];
cx q[77], q[100];
rz(0.25*pi) q[100];
cx q[77], q[100];
cx q[63], q[100];
cx q[35], q[100];
rx(-0.5*pi) q[77];
rx(-0.5*pi) q[63];
rx(-0.5*pi) q[35];
h q[79];
rx(0.5*pi) q[96];
cx q[79], q[96];
rz(0.75*pi) q[96];
cx q[79], q[96];
rx(-0.5*pi) q[96];
h q[79];
h q[6];
h q[29];
rx(0.5*pi) q[109];
cx q[6], q[109];
cx q[29], q[109];
rz(0.75*pi) q[109];
cx q[29], q[109];
cx q[6], q[109];
rx(-0.5*pi) q[109];
h q[29];
h q[6];
rx(0.5*pi) q[105];
cx q[12], q[105];
cx q[17], q[105];
cx q[97], q[105];
rz(0.75*pi) q[105];
cx q[97], q[105];
cx q[17], q[105];
cx q[12], q[105];
rx(-0.5*pi) q[105];
h q[21];
cx q[21], q[89];
cx q[45], q[89];
rz(0.25*pi) q[89];
cx q[45], q[89];
cx q[21], q[89];
h q[21];
h q[20];
h q[101];
cx q[20], q[101];
cx q[75], q[101];
rz(1.25*pi) q[101];
cx q[75], q[101];
cx q[20], q[101];
h q[101];
h q[20];
rx(0.5*pi) q[11];
h q[18];
cx q[7], q[76];
cx q[11], q[76];
cx q[18], q[76];
rz(0.25*pi) q[76];
cx q[18], q[76];
cx q[11], q[76];
cx q[7], q[76];
h q[18];
rx(-0.5*pi) q[11];
rx(0.5*pi) q[87];
cx q[87], q[95];
rz(0.25*pi) q[95];
cx q[87], q[95];
rx(-0.5*pi) q[87];
rx(0.5*pi) q[74];
h q[79];
cx q[74], q[86];
cx q[79], q[86];
rz(1.75*pi) q[86];
cx q[79], q[86];
cx q[74], q[86];
h q[79];
rx(-0.5*pi) q[74];
rx(0.5*pi) q[10];
rx(0.5*pi) q[70];
rx(0.5*pi) q[107];
cx q[10], q[107];
cx q[70], q[107];
rz(1.25*pi) q[107];
cx q[70], q[107];
cx q[10], q[107];
rx(-0.5*pi) q[107];
rx(-0.5*pi) q[70];
rx(-0.5*pi) q[10];
rx(0.5*pi) q[56];
rx(0.5*pi) q[80];
cx q[3], q[80];
cx q[34], q[80];
cx q[56], q[80];
rz(0.25*pi) q[80];
cx q[56], q[80];
cx q[34], q[80];
cx q[3], q[80];
rx(-0.5*pi) q[80];
rx(-0.5*pi) q[56];
rx(0.5*pi) q[6];
rx(0.5*pi) q[96];
cx q[6], q[96];
cx q[25], q[96];
rz(1.75*pi) q[96];
cx q[25], q[96];
cx q[6], q[96];
rx(-0.5*pi) q[96];
rx(-0.5*pi) q[6];
h q[43];
h q[56];
h q[67];
h q[85];
cx q[43], q[85];
cx q[56], q[85];
cx q[67], q[85];
rz(1.75*pi) q[85];
cx q[67], q[85];
cx q[56], q[85];
cx q[43], q[85];
h q[85];
h q[67];
h q[56];
h q[43];
h q[38];
cx q[38], q[63];
rz(1.25*pi) q[63];
cx q[38], q[63];
h q[38];
h q[40];
cx q[40], q[68];
rz(0.25*pi) q[68];
cx q[40], q[68];
h q[40];
h q[101];
h q[106];
cx q[101], q[106];
rz(0.25*pi) q[106];
cx q[101], q[106];
h q[106];
h q[101];
rx(0.5*pi) q[66];
cx q[28], q[66];
rz(1.75*pi) q[66];
cx q[28], q[66];
rx(-0.5*pi) q[66];
h q[84];
h q[87];
rx(0.5*pi) q[92];
rx(0.5*pi) q[97];
cx q[84], q[97];
cx q[87], q[97];
cx q[92], q[97];
rz(0.25*pi) q[97];
cx q[92], q[97];
cx q[87], q[97];
cx q[84], q[97];
rx(-0.5*pi) q[97];
rx(-0.5*pi) q[92];
h q[87];
h q[84];
rx(0.5*pi) q[62];
cx q[12], q[62];
rz(1.75*pi) q[62];
cx q[12], q[62];
rx(-0.5*pi) q[62];
h q[14];
h q[55];
cx q[14], q[55];
rz(1.75*pi) q[55];
cx q[14], q[55];
h q[55];
h q[14];
h q[57];
cx q[24], q[57];
rz(0.25*pi) q[57];
cx q[24], q[57];
h q[57];