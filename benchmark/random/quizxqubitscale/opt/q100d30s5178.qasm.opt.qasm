OPENQASM 2.0;
include "qelib1.inc";
qreg q[100];
h q[38];
h q[50];
h q[67];
h q[72];
cx q[38], q[72];
cx q[50], q[72];
cx q[67], q[72];
rz(0.25*pi) q[72];
cx q[67], q[72];
cx q[50], q[72];
cx q[38], q[72];
h q[72];
h q[67];
h q[50];
h q[38];
rx(0.5*pi) q[19];
cx q[19], q[53];
cx q[50], q[53];
rz(1.75*pi) q[53];
cx q[50], q[53];
cx q[19], q[53];
rx(-0.5*pi) q[19];
rx(0.5*pi) q[11];
h q[56];
cx q[11], q[56];
cx q[41], q[56];
cx q[50], q[56];
rz(0.25*pi) q[56];
cx q[50], q[56];
cx q[41], q[56];
cx q[11], q[56];
h q[56];
rx(-0.5*pi) q[11];
h q[78];
cx q[46], q[92];
cx q[78], q[92];
rz(0.25*pi) q[92];
cx q[78], q[92];
cx q[46], q[92];
h q[78];
h q[65];
cx q[6], q[65];
cx q[39], q[65];
cx q[56], q[65];
rz(1.75*pi) q[65];
cx q[56], q[65];
cx q[39], q[65];
cx q[6], q[65];
h q[65];
cx q[2], q[58];
cx q[27], q[58];
rz(0.25*pi) q[58];
cx q[27], q[58];
cx q[2], q[58];
h q[17];
rx(0.5*pi) q[26];
cx q[17], q[26];
rz(0.25*pi) q[26];
cx q[17], q[26];
rx(-0.5*pi) q[26];
h q[17];
h q[26];
rx(0.5*pi) q[73];
cx q[26], q[73];
cx q[27], q[73];
cx q[69], q[73];
rz(1.75*pi) q[73];
cx q[69], q[73];
cx q[27], q[73];
cx q[26], q[73];
rx(-0.5*pi) q[73];
h q[26];
h q[67];
h q[92];
cx q[67], q[92];
rz(0.25*pi) q[92];
cx q[67], q[92];
h q[92];
h q[67];
h q[12];
rx(0.5*pi) q[47];
h q[93];
cx q[12], q[93];
cx q[47], q[93];
cx q[65], q[93];
rz(0.75*pi) q[93];
cx q[65], q[93];
cx q[47], q[93];
cx q[12], q[93];
h q[93];
rx(-0.5*pi) q[47];
h q[12];
rx(0.5*pi) q[82];
h q[96];
cx q[20], q[96];
cx q[82], q[96];
cx q[91], q[96];
rz(1.75*pi) q[96];
cx q[91], q[96];
cx q[82], q[96];
cx q[20], q[96];
h q[96];
rx(-0.5*pi) q[82];
h q[14];
cx q[14], q[47];
rz(0.75*pi) q[47];
cx q[14], q[47];
h q[14];
rx(0.5*pi) q[4];
cx q[4], q[9];
rz(0.75*pi) q[9];
cx q[4], q[9];
rx(-0.5*pi) q[4];
h q[29];
cx q[15], q[29];
rz(0.25*pi) q[29];
cx q[15], q[29];
h q[29];
h q[36];
h q[73];
cx q[10], q[73];
cx q[36], q[73];
rz(1.25*pi) q[73];
cx q[36], q[73];
cx q[10], q[73];
h q[73];
h q[36];
h q[16];
cx q[16], q[77];
cx q[25], q[77];
rz(0.75*pi) q[77];
cx q[25], q[77];
cx q[16], q[77];
h q[16];
rx(0.5*pi) q[58];
rx(0.5*pi) q[61];
cx q[34], q[61];
cx q[58], q[61];
rz(0.25*pi) q[61];
cx q[58], q[61];
cx q[34], q[61];
rx(-0.5*pi) q[61];
rx(-0.5*pi) q[58];
h q[2];
rx(0.5*pi) q[76];
cx q[2], q[76];
cx q[27], q[76];
rz(1.75*pi) q[76];
cx q[27], q[76];
cx q[2], q[76];
rx(-0.5*pi) q[76];
h q[2];
rx(0.5*pi) q[34];
cx q[26], q[87];
cx q[34], q[87];
rz(1.25*pi) q[87];
cx q[34], q[87];
cx q[26], q[87];
rx(-0.5*pi) q[34];
rx(0.5*pi) q[27];
rx(0.5*pi) q[45];
h q[70];
cx q[27], q[94];
cx q[45], q[94];
cx q[70], q[94];
rz(1.25*pi) q[94];
cx q[70], q[94];
cx q[45], q[94];
cx q[27], q[94];
h q[70];
rx(-0.5*pi) q[45];
rx(-0.5*pi) q[27];
rx(0.5*pi) q[27];
h q[59];
cx q[27], q[59];
cx q[52], q[59];
cx q[53], q[59];
rz(1.75*pi) q[59];
cx q[53], q[59];
cx q[52], q[59];
cx q[27], q[59];
h q[59];
rx(-0.5*pi) q[27];
rx(0.5*pi) q[33];
h q[41];
cx q[33], q[41];
rz(0.75*pi) q[41];
cx q[33], q[41];
h q[41];
rx(-0.5*pi) q[33];
h q[95];
cx q[63], q[95];
rz(1.75*pi) q[95];
cx q[63], q[95];
h q[95];
h q[17];
h q[61];
h q[65];
cx q[17], q[65];
cx q[61], q[65];
rz(0.25*pi) q[65];
cx q[61], q[65];
cx q[17], q[65];
h q[65];
h q[61];
h q[17];
rx(0.5*pi) q[37];
cx q[37], q[86];
cx q[80], q[86];
rz(1.25*pi) q[86];
cx q[80], q[86];
cx q[37], q[86];
rx(-0.5*pi) q[37];
h q[50];
h q[64];
h q[91];
cx q[50], q[91];
cx q[64], q[91];
rz(0.25*pi) q[91];
cx q[64], q[91];
cx q[50], q[91];
h q[91];
h q[64];
h q[50];
h q[26];
h q[58];
cx q[26], q[58];
cx q[51], q[58];
rz(1.75*pi) q[58];
cx q[51], q[58];
cx q[26], q[58];
h q[58];
h q[26];
h q[12];
h q[16];
rx(0.5*pi) q[23];
h q[33];
cx q[12], q[33];
cx q[16], q[33];
cx q[23], q[33];
rz(0.75*pi) q[33];
cx q[23], q[33];
cx q[16], q[33];
cx q[12], q[33];
h q[33];
rx(-0.5*pi) q[23];
h q[16];
h q[12];
rx(0.5*pi) q[2];
rx(0.5*pi) q[39];
rx(0.5*pi) q[98];
cx q[2], q[98];
cx q[39], q[98];
rz(1.25*pi) q[98];
cx q[39], q[98];
cx q[2], q[98];
rx(-0.5*pi) q[98];
rx(-0.5*pi) q[39];
rx(-0.5*pi) q[2];
cx q[47], q[85];
cx q[64], q[85];
rz(0.25*pi) q[85];
cx q[64], q[85];
cx q[47], q[85];