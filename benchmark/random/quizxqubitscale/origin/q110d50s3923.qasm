OPENQASM 2.0;
include "qelib1.inc";
qreg q[110];
cx q[43], q[64];
rz(1.75*pi) q[64];
cx q[43], q[64];
rx(0.5*pi) q[19];
cx q[19], q[98];
rz(1.25*pi) q[98];
cx q[19], q[98];
rx(-0.5*pi) q[19];
cx q[18], q[94];
cx q[40], q[94];
rz(1.25*pi) q[94];
cx q[40], q[94];
cx q[18], q[94];
rx(0.5*pi) q[54];
cx q[54], q[85];
rz(0.25*pi) q[85];
cx q[54], q[85];
rx(-0.5*pi) q[54];
rx(0.5*pi) q[24];
cx q[24], q[104];
cx q[52], q[104];
cx q[86], q[104];
rz(1.75*pi) q[104];
cx q[86], q[104];
cx q[52], q[104];
cx q[24], q[104];
rx(-0.5*pi) q[24];
rx(0.5*pi) q[81];
cx q[81], q[97];
rz(0.75*pi) q[97];
cx q[81], q[97];
rx(-0.5*pi) q[81];
h q[1];
rx(0.5*pi) q[63];
rx(0.5*pi) q[107];
cx q[1], q[107];
cx q[63], q[107];
cx q[95], q[107];
rz(0.75*pi) q[107];
cx q[95], q[107];
cx q[63], q[107];
cx q[1], q[107];
rx(-0.5*pi) q[107];
rx(-0.5*pi) q[63];
h q[1];
h q[3];
h q[69];
cx q[3], q[101];
cx q[69], q[101];
cx q[74], q[101];
rz(1.75*pi) q[101];
cx q[74], q[101];
cx q[69], q[101];
cx q[3], q[101];
h q[69];
h q[3];
rx(0.5*pi) q[43];
rx(0.5*pi) q[93];
cx q[43], q[93];
cx q[68], q[93];
rz(1.75*pi) q[93];
cx q[68], q[93];
cx q[43], q[93];
rx(-0.5*pi) q[93];
rx(-0.5*pi) q[43];
rx(0.5*pi) q[14];
h q[101];
cx q[14], q[101];
rz(1.75*pi) q[101];
cx q[14], q[101];
h q[101];
rx(-0.5*pi) q[14];
cx q[49], q[103];
cx q[56], q[103];
cx q[67], q[103];
rz(1.75*pi) q[103];
cx q[67], q[103];
cx q[56], q[103];
cx q[49], q[103];
rx(0.5*pi) q[49];
rx(0.5*pi) q[96];
cx q[49], q[96];
rz(0.25*pi) q[96];
cx q[49], q[96];
rx(-0.5*pi) q[96];
rx(-0.5*pi) q[49];
h q[41];
rx(0.5*pi) q[53];
rx(0.5*pi) q[76];
rx(0.5*pi) q[85];
cx q[41], q[85];
cx q[53], q[85];
cx q[76], q[85];
rz(1.75*pi) q[85];
cx q[76], q[85];
cx q[53], q[85];
cx q[41], q[85];
rx(-0.5*pi) q[85];
rx(-0.5*pi) q[76];
rx(-0.5*pi) q[53];
h q[41];
rx(0.5*pi) q[75];
rx(0.5*pi) q[84];
cx q[75], q[93];
cx q[84], q[93];
rz(0.25*pi) q[93];
cx q[84], q[93];
cx q[75], q[93];
rx(-0.5*pi) q[84];
rx(-0.5*pi) q[75];
rx(0.5*pi) q[12];
rx(0.5*pi) q[13];
cx q[12], q[44];
cx q[13], q[44];
rz(0.25*pi) q[44];
cx q[13], q[44];
cx q[12], q[44];
rx(-0.5*pi) q[13];
rx(-0.5*pi) q[12];
h q[56];
h q[59];
cx q[37], q[59];
cx q[56], q[59];
rz(0.75*pi) q[59];
cx q[56], q[59];
cx q[37], q[59];
h q[59];
h q[56];
rx(0.5*pi) q[77];
cx q[44], q[77];
cx q[47], q[77];
cx q[70], q[77];
rz(1.75*pi) q[77];
cx q[70], q[77];
cx q[47], q[77];
cx q[44], q[77];
rx(-0.5*pi) q[77];
rx(0.5*pi) q[34];
cx q[34], q[105];
cx q[43], q[105];
cx q[64], q[105];
rz(1.25*pi) q[105];
cx q[64], q[105];
cx q[43], q[105];
cx q[34], q[105];
rx(-0.5*pi) q[34];
h q[16];
rx(0.5*pi) q[26];
cx q[16], q[51];
cx q[26], q[51];
cx q[35], q[51];
rz(1.75*pi) q[51];
cx q[35], q[51];
cx q[26], q[51];
cx q[16], q[51];
rx(-0.5*pi) q[26];
h q[16];
rx(0.5*pi) q[76];
rx(0.5*pi) q[108];
cx q[64], q[108];
cx q[76], q[108];
cx q[87], q[108];
rz(1.75*pi) q[108];
cx q[87], q[108];
cx q[76], q[108];
cx q[64], q[108];
rx(-0.5*pi) q[108];
rx(-0.5*pi) q[76];
h q[85];
h q[98];
cx q[77], q[98];
cx q[85], q[98];
rz(0.25*pi) q[98];
cx q[85], q[98];
cx q[77], q[98];
h q[98];
h q[85];
h q[4];
h q[61];
rx(0.5*pi) q[75];
h q[92];
cx q[4], q[92];
cx q[61], q[92];
cx q[75], q[92];
rz(1.25*pi) q[92];
cx q[75], q[92];
cx q[61], q[92];
cx q[4], q[92];
h q[92];
rx(-0.5*pi) q[75];
h q[61];
h q[4];
h q[6];
h q[8];
h q[75];
rx(0.5*pi) q[90];
cx q[6], q[90];
cx q[8], q[90];
cx q[75], q[90];
rz(1.75*pi) q[90];
cx q[75], q[90];
cx q[8], q[90];
cx q[6], q[90];
rx(-0.5*pi) q[90];
h q[75];
h q[8];
h q[6];
h q[19];
rx(0.5*pi) q[41];
h q[43];
h q[107];
cx q[19], q[107];
cx q[41], q[107];
cx q[43], q[107];
rz(1.25*pi) q[107];
cx q[43], q[107];
cx q[41], q[107];
cx q[19], q[107];
h q[107];
h q[43];
rx(-0.5*pi) q[41];
h q[19];
rx(0.5*pi) q[42];
rx(0.5*pi) q[58];
h q[63];
rx(0.5*pi) q[100];
cx q[42], q[100];
cx q[58], q[100];
cx q[63], q[100];
rz(1.75*pi) q[100];
cx q[63], q[100];
cx q[58], q[100];
cx q[42], q[100];
rx(-0.5*pi) q[100];
h q[63];
rx(-0.5*pi) q[58];
rx(-0.5*pi) q[42];
cx q[24], q[91];
rz(0.75*pi) q[91];
cx q[24], q[91];
h q[29];
h q[35];
rx(0.5*pi) q[60];
h q[83];
cx q[29], q[83];
cx q[35], q[83];
cx q[60], q[83];
rz(1.25*pi) q[83];
cx q[60], q[83];
cx q[35], q[83];
cx q[29], q[83];
h q[83];
rx(-0.5*pi) q[60];
h q[35];
h q[29];
rx(0.5*pi) q[75];
rx(0.5*pi) q[87];
rx(0.5*pi) q[104];
cx q[75], q[104];
cx q[87], q[104];
rz(1.25*pi) q[104];
cx q[87], q[104];
cx q[75], q[104];
rx(-0.5*pi) q[104];
rx(-0.5*pi) q[87];
rx(-0.5*pi) q[75];
h q[41];
h q[78];
cx q[41], q[78];
cx q[61], q[78];
rz(0.75*pi) q[78];
cx q[61], q[78];
cx q[41], q[78];
h q[78];
h q[41];
h q[42];
h q[54];
rx(0.5*pi) q[83];
cx q[42], q[83];
cx q[54], q[83];
cx q[56], q[83];
rz(1.75*pi) q[83];
cx q[56], q[83];
cx q[54], q[83];
cx q[42], q[83];
rx(-0.5*pi) q[83];
h q[54];
h q[42];
rx(0.5*pi) q[27];
rx(0.5*pi) q[29];
rx(0.5*pi) q[75];
cx q[27], q[75];
cx q[29], q[75];
rz(1.25*pi) q[75];
cx q[29], q[75];
cx q[27], q[75];
rx(-0.5*pi) q[75];
rx(-0.5*pi) q[29];
rx(-0.5*pi) q[27];
h q[76];
cx q[65], q[94];
cx q[76], q[94];
rz(1.25*pi) q[94];
cx q[76], q[94];
cx q[65], q[94];
h q[76];
h q[4];
h q[14];
cx q[4], q[14];
rz(1.75*pi) q[14];
cx q[4], q[14];
h q[14];
h q[4];
h q[0];
rx(0.5*pi) q[99];
cx q[0], q[99];
cx q[7], q[99];
cx q[13], q[99];
rz(1.25*pi) q[99];
cx q[13], q[99];
cx q[7], q[99];
cx q[0], q[99];
rx(-0.5*pi) q[99];
h q[0];
h q[26];
rx(0.5*pi) q[65];
cx q[1], q[72];
cx q[26], q[72];
cx q[65], q[72];
rz(1.75*pi) q[72];
cx q[65], q[72];
cx q[26], q[72];
cx q[1], q[72];
rx(-0.5*pi) q[65];
h q[26];
rx(0.5*pi) q[100];
cx q[59], q[100];
rz(1.75*pi) q[100];
cx q[59], q[100];
rx(-0.5*pi) q[100];
h q[0];
h q[7];
cx q[0], q[24];
cx q[7], q[24];
rz(1.25*pi) q[24];
cx q[7], q[24];
cx q[0], q[24];
h q[7];
h q[0];
rx(0.5*pi) q[32];
h q[108];
cx q[32], q[108];
cx q[35], q[108];
cx q[40], q[108];
rz(1.25*pi) q[108];
cx q[40], q[108];
cx q[35], q[108];
cx q[32], q[108];
h q[108];
rx(-0.5*pi) q[32];
rx(0.5*pi) q[19];
h q[27];
cx q[6], q[51];
cx q[19], q[51];
cx q[27], q[51];
rz(0.75*pi) q[51];
cx q[27], q[51];
cx q[19], q[51];
cx q[6], q[51];
h q[27];
rx(-0.5*pi) q[19];
h q[64];
h q[66];
cx q[64], q[105];
cx q[66], q[105];
rz(1.25*pi) q[105];
cx q[66], q[105];
cx q[64], q[105];
h q[66];
h q[64];
h q[12];
rx(0.5*pi) q[97];
cx q[12], q[105];
cx q[97], q[105];
rz(1.75*pi) q[105];
cx q[97], q[105];
cx q[12], q[105];
rx(-0.5*pi) q[97];
h q[12];
rx(0.5*pi) q[0];
cx q[0], q[80];
rz(1.25*pi) q[80];
cx q[0], q[80];
rx(-0.5*pi) q[0];
h q[1];
rx(0.5*pi) q[20];
h q[48];
rx(0.5*pi) q[50];
cx q[1], q[50];
cx q[20], q[50];
cx q[48], q[50];
rz(1.75*pi) q[50];
cx q[48], q[50];
cx q[20], q[50];
cx q[1], q[50];
rx(-0.5*pi) q[50];
h q[48];
rx(-0.5*pi) q[20];
h q[1];
rx(0.5*pi) q[30];
cx q[9], q[104];
cx q[30], q[104];
rz(1.25*pi) q[104];
cx q[30], q[104];
cx q[9], q[104];
rx(-0.5*pi) q[30];
rx(0.5*pi) q[5];
h q[40];
rx(0.5*pi) q[96];
cx q[5], q[96];
cx q[37], q[96];
cx q[40], q[96];
rz(1.75*pi) q[96];
cx q[40], q[96];
cx q[37], q[96];
cx q[5], q[96];
rx(-0.5*pi) q[96];
h q[40];
rx(-0.5*pi) q[5];
rx(0.5*pi) q[64];
cx q[64], q[65];
rz(1.75*pi) q[65];
cx q[64], q[65];
rx(-0.5*pi) q[64];
h q[38];
h q[100];
cx q[38], q[100];
rz(1.75*pi) q[100];
cx q[38], q[100];
h q[100];
h q[38];
rx(0.5*pi) q[16];
cx q[16], q[82];
rz(1.25*pi) q[82];
cx q[16], q[82];
rx(-0.5*pi) q[16];
cx q[77], q[107];
rz(0.75*pi) q[107];
cx q[77], q[107];
h q[17];
rx(0.5*pi) q[83];
cx q[17], q[83];
cx q[46], q[83];
rz(1.75*pi) q[83];
cx q[46], q[83];
cx q[17], q[83];
rx(-0.5*pi) q[83];
h q[17];