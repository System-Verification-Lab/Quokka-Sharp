OPENQASM 2.0;
include "qelib1.inc";
qreg q[110];
rx(0.5*pi) q[32];
rx(0.5*pi) q[47];
rx(0.5*pi) q[97];
cx q[32], q[97];
cx q[47], q[97];
rz(1.25*pi) q[97];
cx q[47], q[97];
cx q[32], q[97];
rx(-0.5*pi) q[97];
rx(-0.5*pi) q[47];
rx(-0.5*pi) q[32];
h q[61];
cx q[52], q[61];
rz(1.75*pi) q[61];
cx q[52], q[61];
h q[61];
rx(0.5*pi) q[105];
cx q[48], q[105];
cx q[55], q[105];
cx q[84], q[105];
rz(0.25*pi) q[105];
cx q[84], q[105];
cx q[55], q[105];
cx q[48], q[105];
rx(-0.5*pi) q[105];
rx(0.5*pi) q[7];
rx(0.5*pi) q[18];
rx(0.5*pi) q[109];
cx q[7], q[109];
cx q[18], q[109];
rz(1.75*pi) q[109];
cx q[18], q[109];
cx q[7], q[109];
rx(-0.5*pi) q[109];
rx(-0.5*pi) q[18];
rx(-0.5*pi) q[7];
rx(0.5*pi) q[6];
h q[42];
h q[68];
rx(0.5*pi) q[89];
cx q[6], q[89];
cx q[42], q[89];
cx q[68], q[89];
rz(0.75*pi) q[89];
cx q[68], q[89];
cx q[42], q[89];
cx q[6], q[89];
rx(-0.5*pi) q[89];
h q[68];
h q[42];
rx(-0.5*pi) q[6];
h q[29];
h q[32];
cx q[29], q[33];
cx q[32], q[33];
rz(0.25*pi) q[33];
cx q[32], q[33];
cx q[29], q[33];
h q[32];
h q[29];
rx(0.5*pi) q[5];
rx(0.5*pi) q[10];
cx q[5], q[10];
rz(0.25*pi) q[10];
cx q[5], q[10];
rx(-0.5*pi) q[10];
rx(-0.5*pi) q[5];
h q[55];
h q[85];
cx q[55], q[85];
cx q[72], q[85];
rz(1.75*pi) q[85];
cx q[72], q[85];
cx q[55], q[85];
h q[85];
h q[55];
rx(0.5*pi) q[44];
cx q[44], q[71];
rz(0.75*pi) q[71];
cx q[44], q[71];
rx(-0.5*pi) q[44];
rx(0.5*pi) q[9];
rx(0.5*pi) q[84];
cx q[9], q[84];
cx q[82], q[84];
rz(1.75*pi) q[84];
cx q[82], q[84];
cx q[9], q[84];
rx(-0.5*pi) q[84];
rx(-0.5*pi) q[9];
h q[24];
h q[31];
rx(0.5*pi) q[67];
h q[93];
cx q[24], q[93];
cx q[31], q[93];
cx q[67], q[93];
rz(0.25*pi) q[93];
cx q[67], q[93];
cx q[31], q[93];
cx q[24], q[93];
h q[93];
rx(-0.5*pi) q[67];
h q[31];
h q[24];
rx(0.5*pi) q[4];
h q[98];
cx q[4], q[98];
cx q[84], q[98];
rz(0.25*pi) q[98];
cx q[84], q[98];
cx q[4], q[98];
h q[98];
rx(-0.5*pi) q[4];
rx(0.5*pi) q[91];
rx(0.5*pi) q[106];
cx q[45], q[106];
cx q[91], q[106];
rz(1.25*pi) q[106];
cx q[91], q[106];
cx q[45], q[106];
rx(-0.5*pi) q[106];
rx(-0.5*pi) q[91];
rx(0.5*pi) q[69];
h q[75];
rx(0.5*pi) q[77];
cx q[69], q[95];
cx q[75], q[95];
cx q[77], q[95];
rz(1.25*pi) q[95];
cx q[77], q[95];
cx q[75], q[95];
cx q[69], q[95];
rx(-0.5*pi) q[77];
h q[75];
rx(-0.5*pi) q[69];
rx(0.5*pi) q[39];
h q[78];
rx(0.5*pi) q[84];
cx q[39], q[84];
cx q[78], q[84];
rz(0.75*pi) q[84];
cx q[78], q[84];
cx q[39], q[84];
rx(-0.5*pi) q[84];
h q[78];
rx(-0.5*pi) q[39];
h q[16];
cx q[16], q[30];
rz(1.75*pi) q[30];
cx q[16], q[30];
h q[16];
rx(0.5*pi) q[50];
cx q[26], q[50];
rz(0.75*pi) q[50];
cx q[26], q[50];
rx(-0.5*pi) q[50];
rx(0.5*pi) q[25];
rx(0.5*pi) q[77];
cx q[25], q[77];
cx q[56], q[77];
rz(1.25*pi) q[77];
cx q[56], q[77];
cx q[25], q[77];
rx(-0.5*pi) q[77];
rx(-0.5*pi) q[25];
h q[63];
cx q[13], q[63];
rz(1.25*pi) q[63];
cx q[13], q[63];
h q[63];
h q[25];
rx(0.5*pi) q[53];
cx q[25], q[53];
cx q[35], q[53];
cx q[51], q[53];
rz(1.75*pi) q[53];
cx q[51], q[53];
cx q[35], q[53];
cx q[25], q[53];
rx(-0.5*pi) q[53];
h q[25];
h q[18];
rx(0.5*pi) q[21];
h q[26];
cx q[6], q[26];
cx q[18], q[26];
cx q[21], q[26];
rz(0.25*pi) q[26];
cx q[21], q[26];
cx q[18], q[26];
cx q[6], q[26];
h q[26];
rx(-0.5*pi) q[21];
h q[18];
h q[34];
cx q[2], q[77];
cx q[34], q[77];
cx q[49], q[77];
rz(1.25*pi) q[77];
cx q[49], q[77];
cx q[34], q[77];
cx q[2], q[77];
h q[34];
rx(0.5*pi) q[105];
cx q[10], q[105];
rz(1.25*pi) q[105];
cx q[10], q[105];
rx(-0.5*pi) q[105];
cx q[13], q[51];
cx q[34], q[51];
rz(0.75*pi) q[51];
cx q[34], q[51];
cx q[13], q[51];
rx(0.5*pi) q[4];
h q[75];
cx q[4], q[107];
cx q[48], q[107];
cx q[75], q[107];
rz(1.25*pi) q[107];
cx q[75], q[107];
cx q[48], q[107];
cx q[4], q[107];
h q[75];
rx(-0.5*pi) q[4];
h q[49];
rx(0.5*pi) q[80];
cx q[49], q[80];
cx q[65], q[80];
rz(0.75*pi) q[80];
cx q[65], q[80];
cx q[49], q[80];
rx(-0.5*pi) q[80];
h q[49];
rx(0.5*pi) q[4];
rx(0.5*pi) q[25];
cx q[4], q[25];
rz(1.75*pi) q[25];
cx q[4], q[25];
rx(-0.5*pi) q[25];
rx(-0.5*pi) q[4];
h q[1];
rx(0.5*pi) q[76];
h q[94];
cx q[1], q[94];
cx q[76], q[94];
rz(0.25*pi) q[94];
cx q[76], q[94];
cx q[1], q[94];
h q[94];
rx(-0.5*pi) q[76];
h q[1];
rx(0.5*pi) q[36];
rx(0.5*pi) q[107];
cx q[36], q[107];
rz(0.75*pi) q[107];
cx q[36], q[107];
rx(-0.5*pi) q[107];
rx(-0.5*pi) q[36];
h q[25];
cx q[25], q[33];
rz(1.25*pi) q[33];
cx q[25], q[33];
h q[25];