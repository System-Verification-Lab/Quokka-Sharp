OPENQASM 2.0;
include "qelib1.inc";
qreg q[100];
h q[12];
h q[27];
h q[98];
cx q[12], q[98];
cx q[27], q[98];
rz(1.75*pi) q[98];
cx q[27], q[98];
cx q[12], q[98];
h q[98];
h q[27];
h q[12];
h q[1];
rx(0.5*pi) q[4];
rx(0.5*pi) q[72];
cx q[1], q[72];
cx q[4], q[72];
rz(1.75*pi) q[72];
cx q[4], q[72];
cx q[1], q[72];
rx(-0.5*pi) q[72];
rx(-0.5*pi) q[4];
h q[1];
h q[0];
h q[94];
cx q[0], q[94];
cx q[78], q[94];
rz(0.75*pi) q[94];
cx q[78], q[94];
cx q[0], q[94];
h q[94];
h q[0];
rx(0.5*pi) q[1];
rx(0.5*pi) q[33];
h q[71];
cx q[1], q[71];
cx q[33], q[71];
rz(0.75*pi) q[71];
cx q[33], q[71];
cx q[1], q[71];
h q[71];
rx(-0.5*pi) q[33];
rx(-0.5*pi) q[1];
rx(0.5*pi) q[44];
rx(0.5*pi) q[93];
cx q[31], q[93];
cx q[44], q[93];
rz(1.25*pi) q[93];
cx q[44], q[93];
cx q[31], q[93];
rx(-0.5*pi) q[93];
rx(-0.5*pi) q[44];
rx(0.5*pi) q[52];
h q[63];
cx q[52], q[63];
rz(1.75*pi) q[63];
cx q[52], q[63];
h q[63];
rx(-0.5*pi) q[52];
rx(0.5*pi) q[75];
cx q[72], q[75];
rz(1.75*pi) q[75];
cx q[72], q[75];
rx(-0.5*pi) q[75];
h q[10];
h q[95];
h q[98];
cx q[10], q[98];
cx q[95], q[98];
rz(0.25*pi) q[98];
cx q[95], q[98];
cx q[10], q[98];
h q[98];
h q[95];
h q[10];
rx(0.5*pi) q[13];
rx(0.5*pi) q[54];
rx(0.5*pi) q[88];
cx q[13], q[88];
cx q[53], q[88];
cx q[54], q[88];
rz(0.75*pi) q[88];
cx q[54], q[88];
cx q[53], q[88];
cx q[13], q[88];
rx(-0.5*pi) q[88];
rx(-0.5*pi) q[54];
rx(-0.5*pi) q[13];
h q[3];
h q[43];
cx q[3], q[90];
cx q[43], q[90];
rz(0.25*pi) q[90];
cx q[43], q[90];
cx q[3], q[90];
h q[43];
h q[3];
h q[28];
h q[72];
cx q[28], q[81];
cx q[35], q[81];
cx q[72], q[81];
rz(1.75*pi) q[81];
cx q[72], q[81];
cx q[35], q[81];
cx q[28], q[81];
h q[72];
h q[28];
cx q[3], q[63];
rz(1.25*pi) q[63];
cx q[3], q[63];
rx(0.5*pi) q[35];
rx(0.5*pi) q[69];
cx q[10], q[69];
cx q[20], q[69];
cx q[35], q[69];
rz(1.25*pi) q[69];
cx q[35], q[69];
cx q[20], q[69];
cx q[10], q[69];
rx(-0.5*pi) q[69];
rx(-0.5*pi) q[35];
h q[42];
rx(0.5*pi) q[47];
rx(0.5*pi) q[71];
h q[73];
cx q[42], q[73];
cx q[47], q[73];
cx q[71], q[73];
rz(1.25*pi) q[73];
cx q[71], q[73];
cx q[47], q[73];
cx q[42], q[73];
h q[73];
rx(-0.5*pi) q[71];
rx(-0.5*pi) q[47];
h q[42];
h q[53];
h q[77];
rx(0.5*pi) q[81];
cx q[53], q[81];
cx q[77], q[81];
rz(1.25*pi) q[81];
cx q[77], q[81];
cx q[53], q[81];
rx(-0.5*pi) q[81];
h q[77];
h q[53];
rx(0.5*pi) q[8];
rx(0.5*pi) q[77];
cx q[8], q[77];
rz(1.25*pi) q[77];
cx q[8], q[77];
rx(-0.5*pi) q[77];
rx(-0.5*pi) q[8];
rx(0.5*pi) q[57];
rx(0.5*pi) q[80];
cx q[57], q[88];
cx q[59], q[88];
cx q[80], q[88];
rz(0.75*pi) q[88];
cx q[80], q[88];
cx q[59], q[88];
cx q[57], q[88];
rx(-0.5*pi) q[80];
rx(-0.5*pi) q[57];
rx(0.5*pi) q[71];
h q[83];
cx q[71], q[83];
rz(1.25*pi) q[83];
cx q[71], q[83];
h q[83];
rx(-0.5*pi) q[71];
rx(0.5*pi) q[30];
rx(0.5*pi) q[69];
rx(0.5*pi) q[75];
h q[78];
cx q[30], q[78];
cx q[69], q[78];
cx q[75], q[78];
rz(1.25*pi) q[78];
cx q[75], q[78];
cx q[69], q[78];
cx q[30], q[78];
h q[78];
rx(-0.5*pi) q[75];
rx(-0.5*pi) q[69];
rx(-0.5*pi) q[30];
h q[42];
rx(0.5*pi) q[63];
cx q[42], q[63];
cx q[56], q[63];
rz(1.75*pi) q[63];
cx q[56], q[63];
cx q[42], q[63];
rx(-0.5*pi) q[63];
h q[42];
h q[14];
cx q[14], q[36];
rz(1.75*pi) q[36];
cx q[14], q[36];
h q[14];
rx(0.5*pi) q[52];
cx q[47], q[52];
rz(1.75*pi) q[52];
cx q[47], q[52];
rx(-0.5*pi) q[52];
h q[29];
cx q[29], q[73];
rz(0.75*pi) q[73];
cx q[29], q[73];
h q[29];
rx(0.5*pi) q[74];
rx(0.5*pi) q[84];
rx(0.5*pi) q[86];
cx q[74], q[86];
cx q[84], q[86];
rz(0.75*pi) q[86];
cx q[84], q[86];
cx q[74], q[86];
rx(-0.5*pi) q[86];
rx(-0.5*pi) q[84];
rx(-0.5*pi) q[74];
rx(0.5*pi) q[12];
cx q[12], q[84];
rz(1.25*pi) q[84];
cx q[12], q[84];
rx(-0.5*pi) q[12];
rx(0.5*pi) q[8];
h q[75];
cx q[8], q[75];
cx q[69], q[75];
rz(1.75*pi) q[75];
cx q[69], q[75];
cx q[8], q[75];
h q[75];
rx(-0.5*pi) q[8];
rx(0.5*pi) q[9];
cx q[9], q[80];
cx q[15], q[80];
cx q[30], q[80];
rz(0.75*pi) q[80];
cx q[30], q[80];
cx q[15], q[80];
cx q[9], q[80];
rx(-0.5*pi) q[9];
rx(0.5*pi) q[24];
rx(0.5*pi) q[34];
rx(0.5*pi) q[55];
rx(0.5*pi) q[87];
cx q[24], q[87];
cx q[34], q[87];
cx q[55], q[87];
rz(0.25*pi) q[87];
cx q[55], q[87];
cx q[34], q[87];
cx q[24], q[87];
rx(-0.5*pi) q[87];
rx(-0.5*pi) q[55];
rx(-0.5*pi) q[34];
rx(-0.5*pi) q[24];
rx(0.5*pi) q[36];
h q[66];
cx q[36], q[66];
rz(1.25*pi) q[66];
cx q[36], q[66];
h q[66];
rx(-0.5*pi) q[36];
h q[26];
rx(0.5*pi) q[62];
cx q[26], q[62];
rz(1.25*pi) q[62];
cx q[26], q[62];
rx(-0.5*pi) q[62];
h q[26];