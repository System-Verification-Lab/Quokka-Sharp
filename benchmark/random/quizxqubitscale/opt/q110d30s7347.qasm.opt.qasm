OPENQASM 2.0;
include "qelib1.inc";
qreg q[110];
h q[36];
h q[75];
cx q[36], q[75];
rz(0.25*pi) q[75];
cx q[36], q[75];
h q[75];
h q[36];
h q[11];
cx q[8], q[43];
cx q[11], q[43];
cx q[27], q[43];
rz(1.75*pi) q[43];
cx q[27], q[43];
cx q[11], q[43];
cx q[8], q[43];
h q[11];
rx(0.5*pi) q[23];
rx(0.5*pi) q[29];
h q[50];
cx q[23], q[50];
cx q[29], q[50];
rz(0.25*pi) q[50];
cx q[29], q[50];
cx q[23], q[50];
h q[50];
rx(-0.5*pi) q[29];
rx(-0.5*pi) q[23];
rx(0.5*pi) q[98];
cx q[63], q[98];
cx q[68], q[98];
cx q[87], q[98];
rz(1.75*pi) q[98];
cx q[87], q[98];
cx q[68], q[98];
cx q[63], q[98];
rx(-0.5*pi) q[98];
rx(0.5*pi) q[1];
rx(0.5*pi) q[82];
rx(0.5*pi) q[105];
cx q[1], q[105];
cx q[8], q[105];
cx q[82], q[105];
rz(0.25*pi) q[105];
cx q[82], q[105];
cx q[8], q[105];
cx q[1], q[105];
rx(-0.5*pi) q[105];
rx(-0.5*pi) q[82];
rx(-0.5*pi) q[1];
rx(0.5*pi) q[11];
h q[41];
rx(0.5*pi) q[100];
cx q[11], q[104];
cx q[41], q[104];
cx q[100], q[104];
rz(0.75*pi) q[104];
cx q[100], q[104];
cx q[41], q[104];
cx q[11], q[104];
rx(-0.5*pi) q[100];
h q[41];
rx(-0.5*pi) q[11];
h q[30];
h q[103];
rx(0.5*pi) q[109];
cx q[6], q[109];
cx q[30], q[109];
cx q[103], q[109];
rz(0.25*pi) q[109];
cx q[103], q[109];
cx q[30], q[109];
cx q[6], q[109];
rx(-0.5*pi) q[109];
h q[103];
h q[30];
h q[95];
rx(0.5*pi) q[100];
cx q[95], q[100];
rz(0.75*pi) q[100];
cx q[95], q[100];
rx(-0.5*pi) q[100];
h q[95];
h q[47];
h q[48];
rx(0.5*pi) q[55];
cx q[47], q[55];
cx q[48], q[55];
rz(0.25*pi) q[55];
cx q[48], q[55];
cx q[47], q[55];
rx(-0.5*pi) q[55];
h q[48];
h q[47];
rx(0.5*pi) q[15];
rx(0.5*pi) q[37];
h q[92];
cx q[15], q[92];
cx q[26], q[92];
cx q[37], q[92];
rz(1.75*pi) q[92];
cx q[37], q[92];
cx q[26], q[92];
cx q[15], q[92];
h q[92];
rx(-0.5*pi) q[37];
rx(-0.5*pi) q[15];
rx(0.5*pi) q[49];
h q[85];
cx q[49], q[85];
rz(1.25*pi) q[85];
cx q[49], q[85];
h q[85];
rx(-0.5*pi) q[49];
rx(0.5*pi) q[63];
rx(0.5*pi) q[107];
cx q[63], q[108];
cx q[85], q[108];
cx q[107], q[108];
rz(1.75*pi) q[108];
cx q[107], q[108];
cx q[85], q[108];
cx q[63], q[108];
rx(-0.5*pi) q[107];
rx(-0.5*pi) q[63];
cx q[4], q[100];
cx q[30], q[100];
rz(1.25*pi) q[100];
cx q[30], q[100];
cx q[4], q[100];
rx(0.5*pi) q[42];
rx(0.5*pi) q[98];
cx q[42], q[98];
rz(1.75*pi) q[98];
cx q[42], q[98];
rx(-0.5*pi) q[98];
rx(-0.5*pi) q[42];
rx(0.5*pi) q[29];
rx(0.5*pi) q[52];
rx(0.5*pi) q[106];
cx q[21], q[106];
cx q[29], q[106];
cx q[52], q[106];
rz(0.75*pi) q[106];
cx q[52], q[106];
cx q[29], q[106];
cx q[21], q[106];
rx(-0.5*pi) q[106];
rx(-0.5*pi) q[52];
rx(-0.5*pi) q[29];
h q[44];
cx q[40], q[44];
rz(1.25*pi) q[44];
cx q[40], q[44];
h q[44];
h q[50];
rx(0.5*pi) q[51];
rx(0.5*pi) q[66];
cx q[22], q[66];
cx q[50], q[66];
cx q[51], q[66];
rz(0.25*pi) q[66];
cx q[51], q[66];
cx q[50], q[66];
cx q[22], q[66];
rx(-0.5*pi) q[66];
rx(-0.5*pi) q[51];
h q[50];
rx(0.5*pi) q[17];
h q[89];
cx q[17], q[89];
rz(0.75*pi) q[89];
cx q[17], q[89];
h q[89];
rx(-0.5*pi) q[17];
rx(0.5*pi) q[53];
cx q[53], q[103];
rz(0.25*pi) q[103];
cx q[53], q[103];
rx(-0.5*pi) q[53];
rx(0.5*pi) q[30];
h q[39];
cx q[24], q[78];
cx q[30], q[78];
cx q[39], q[78];
rz(1.75*pi) q[78];
cx q[39], q[78];
cx q[30], q[78];
cx q[24], q[78];
h q[39];
rx(-0.5*pi) q[30];
rx(0.5*pi) q[55];
cx q[5], q[105];
cx q[55], q[105];
rz(0.75*pi) q[105];
cx q[55], q[105];
cx q[5], q[105];
rx(-0.5*pi) q[55];
rx(0.5*pi) q[70];
rx(0.5*pi) q[106];
cx q[57], q[106];
cx q[70], q[106];
rz(1.75*pi) q[106];
cx q[70], q[106];
cx q[57], q[106];
rx(-0.5*pi) q[106];
rx(-0.5*pi) q[70];
h q[92];
cx q[92], q[94];
rz(0.75*pi) q[94];
cx q[92], q[94];
h q[92];
rx(0.5*pi) q[12];
h q[30];
cx q[12], q[88];
cx q[17], q[88];
cx q[30], q[88];
rz(1.75*pi) q[88];
cx q[30], q[88];
cx q[17], q[88];
cx q[12], q[88];
h q[30];
rx(-0.5*pi) q[12];
rx(0.5*pi) q[4];
h q[39];
cx q[4], q[39];
rz(1.75*pi) q[39];
cx q[4], q[39];
h q[39];
rx(-0.5*pi) q[4];
rx(0.5*pi) q[55];
cx q[55], q[92];
rz(1.75*pi) q[92];
cx q[55], q[92];
rx(-0.5*pi) q[55];
cx q[0], q[80];
cx q[22], q[80];
rz(0.75*pi) q[80];
cx q[22], q[80];
cx q[0], q[80];
rx(0.5*pi) q[66];
h q[69];
cx q[18], q[69];
cx q[66], q[69];
rz(0.75*pi) q[69];
cx q[66], q[69];
cx q[18], q[69];
h q[69];
rx(-0.5*pi) q[66];
rx(0.5*pi) q[8];
rx(0.5*pi) q[38];
rx(0.5*pi) q[78];
cx q[8], q[86];
cx q[38], q[86];
cx q[78], q[86];
rz(0.25*pi) q[86];
cx q[78], q[86];
cx q[38], q[86];
cx q[8], q[86];
rx(-0.5*pi) q[78];
rx(-0.5*pi) q[38];
rx(-0.5*pi) q[8];
rx(0.5*pi) q[55];
rx(0.5*pi) q[63];
cx q[55], q[63];
rz(0.25*pi) q[63];
cx q[55], q[63];
rx(-0.5*pi) q[63];
rx(-0.5*pi) q[55];