OPENQASM 2.0;
include "qelib1.inc";
qreg q[70];
h q[33];
rx(0.5*pi) q[41];
cx q[33], q[64];
cx q[41], q[64];
rz(1.75*pi) q[64];
cx q[41], q[64];
cx q[33], q[64];
rx(-0.5*pi) q[41];
h q[33];
rx(0.5*pi) q[26];
h q[58];
cx q[26], q[58];
cx q[49], q[58];
rz(1.75*pi) q[58];
cx q[49], q[58];
cx q[26], q[58];
h q[58];
rx(-0.5*pi) q[26];
h q[21];
rx(0.5*pi) q[23];
cx q[21], q[45];
cx q[23], q[45];
rz(0.25*pi) q[45];
cx q[23], q[45];
cx q[21], q[45];
rx(-0.5*pi) q[23];
h q[21];
h q[26];
cx q[26], q[51];
rz(0.75*pi) q[51];
cx q[26], q[51];
h q[26];
rx(0.5*pi) q[15];
h q[54];
cx q[15], q[54];
cx q[48], q[54];
rz(1.75*pi) q[54];
cx q[48], q[54];
cx q[15], q[54];
h q[54];
rx(-0.5*pi) q[15];
rx(0.5*pi) q[15];
rx(0.5*pi) q[46];
h q[48];
rx(0.5*pi) q[69];
cx q[15], q[69];
cx q[46], q[69];
cx q[48], q[69];
rz(1.25*pi) q[69];
cx q[48], q[69];
cx q[46], q[69];
cx q[15], q[69];
rx(-0.5*pi) q[69];
h q[48];
rx(-0.5*pi) q[46];
rx(-0.5*pi) q[15];
rx(0.5*pi) q[30];
rx(0.5*pi) q[58];
cx q[5], q[58];
cx q[30], q[58];
cx q[51], q[58];
rz(1.75*pi) q[58];
cx q[51], q[58];
cx q[30], q[58];
cx q[5], q[58];
rx(-0.5*pi) q[58];
rx(-0.5*pi) q[30];
rx(0.5*pi) q[7];
h q[25];
rx(0.5*pi) q[29];
cx q[7], q[29];
cx q[22], q[29];
cx q[25], q[29];
rz(0.75*pi) q[29];
cx q[25], q[29];
cx q[22], q[29];
cx q[7], q[29];
rx(-0.5*pi) q[29];
h q[25];
rx(-0.5*pi) q[7];
h q[27];
rx(0.5*pi) q[30];
h q[65];
cx q[27], q[65];
cx q[30], q[65];
rz(1.25*pi) q[65];
cx q[30], q[65];
cx q[27], q[65];
h q[65];
rx(-0.5*pi) q[30];
h q[27];
rx(0.5*pi) q[32];
cx q[32], q[64];
rz(0.75*pi) q[64];
cx q[32], q[64];
rx(-0.5*pi) q[32];
rx(0.5*pi) q[5];
h q[26];
rx(0.5*pi) q[47];
cx q[5], q[67];
cx q[26], q[67];
cx q[47], q[67];
rz(0.25*pi) q[67];
cx q[47], q[67];
cx q[26], q[67];
cx q[5], q[67];
rx(-0.5*pi) q[47];
h q[26];
rx(-0.5*pi) q[5];
rx(0.5*pi) q[38];
cx q[6], q[38];
rz(0.75*pi) q[38];
cx q[6], q[38];
rx(-0.5*pi) q[38];
h q[1];
rx(0.5*pi) q[47];
cx q[1], q[60];
cx q[47], q[60];
rz(0.25*pi) q[60];
cx q[47], q[60];
cx q[1], q[60];
rx(-0.5*pi) q[47];
h q[1];
h q[52];
rx(0.5*pi) q[61];
cx q[15], q[61];
cx q[35], q[61];
cx q[52], q[61];
rz(0.75*pi) q[61];
cx q[52], q[61];
cx q[35], q[61];
cx q[15], q[61];
rx(-0.5*pi) q[61];
h q[52];
rx(0.5*pi) q[22];
h q[34];
h q[55];
cx q[22], q[55];
cx q[34], q[55];
rz(1.75*pi) q[55];
cx q[34], q[55];
cx q[22], q[55];
h q[55];
h q[34];
rx(-0.5*pi) q[22];
h q[1];
cx q[1], q[35];
rz(0.75*pi) q[35];
cx q[1], q[35];
h q[1];
h q[40];
rx(0.5*pi) q[65];
cx q[2], q[65];
cx q[40], q[65];
rz(1.25*pi) q[65];
cx q[40], q[65];
cx q[2], q[65];
rx(-0.5*pi) q[65];
h q[40];
h q[1];
rx(0.5*pi) q[32];
rx(0.5*pi) q[54];
cx q[1], q[54];
cx q[32], q[54];
rz(1.25*pi) q[54];
cx q[32], q[54];
cx q[1], q[54];
rx(-0.5*pi) q[54];
rx(-0.5*pi) q[32];
h q[1];
h q[7];
rx(0.5*pi) q[16];
rx(0.5*pi) q[44];
cx q[7], q[44];
cx q[16], q[44];
cx q[35], q[44];
rz(1.75*pi) q[44];
cx q[35], q[44];
cx q[16], q[44];
cx q[7], q[44];
rx(-0.5*pi) q[44];
rx(-0.5*pi) q[16];
h q[7];
h q[38];
cx q[34], q[38];
rz(0.25*pi) q[38];
cx q[34], q[38];
h q[38];