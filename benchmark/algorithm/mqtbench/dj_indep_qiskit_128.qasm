// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[128];
rz(0) q[0];
s q[0];
h q[0];
rz(-0.5*pi) q[0];
h q[0];
sdg q[0];
rz(0) q[0];
rz(0) q[1];
s q[1];
h q[1];
rz(-0.5*pi) q[1];
h q[1];
sdg q[1];
rz(0) q[1];
h q[2];
rz(0) q[3];
s q[3];
h q[3];
rz(-0.5*pi) q[3];
h q[3];
sdg q[3];
rz(0) q[3];
h q[4];
rz(0) q[5];
s q[5];
h q[5];
rz(-0.5*pi) q[5];
h q[5];
sdg q[5];
rz(0) q[5];
rz(0) q[6];
s q[6];
h q[6];
rz(-0.5*pi) q[6];
h q[6];
sdg q[6];
rz(0) q[6];
h q[7];
rz(0) q[8];
s q[8];
h q[8];
rz(-0.5*pi) q[8];
h q[8];
sdg q[8];
rz(0) q[8];
rz(0) q[9];
s q[9];
h q[9];
rz(-0.5*pi) q[9];
h q[9];
sdg q[9];
rz(0) q[9];
h q[10];
rz(0) q[11];
s q[11];
h q[11];
rz(-0.5*pi) q[11];
h q[11];
sdg q[11];
rz(0) q[11];
rz(0) q[12];
s q[12];
h q[12];
rz(-0.5*pi) q[12];
h q[12];
sdg q[12];
rz(0) q[12];
h q[13];
h q[14];
rz(0) q[15];
s q[15];
h q[15];
rz(-0.5*pi) q[15];
h q[15];
sdg q[15];
rz(0) q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
rz(0) q[21];
s q[21];
h q[21];
rz(-0.5*pi) q[21];
h q[21];
sdg q[21];
rz(0) q[21];
h q[22];
h q[23];
rz(0) q[24];
s q[24];
h q[24];
rz(-0.5*pi) q[24];
h q[24];
sdg q[24];
rz(0) q[24];
rz(0) q[25];
s q[25];
h q[25];
rz(-0.5*pi) q[25];
h q[25];
sdg q[25];
rz(0) q[25];
h q[26];
h q[27];
rz(0) q[28];
s q[28];
h q[28];
rz(-0.5*pi) q[28];
h q[28];
sdg q[28];
rz(0) q[28];
h q[29];
h q[30];
rz(0) q[31];
s q[31];
h q[31];
rz(-0.5*pi) q[31];
h q[31];
sdg q[31];
rz(0) q[31];
h q[32];
h q[33];
h q[34];
rz(0) q[35];
s q[35];
h q[35];
rz(-0.5*pi) q[35];
h q[35];
sdg q[35];
rz(0) q[35];
rz(0) q[36];
s q[36];
h q[36];
rz(-0.5*pi) q[36];
h q[36];
sdg q[36];
rz(0) q[36];
h q[37];
rz(0) q[38];
s q[38];
h q[38];
rz(-0.5*pi) q[38];
h q[38];
sdg q[38];
rz(0) q[38];
rz(0) q[39];
s q[39];
h q[39];
rz(-0.5*pi) q[39];
h q[39];
sdg q[39];
rz(0) q[39];
rz(0) q[40];
s q[40];
h q[40];
rz(-0.5*pi) q[40];
h q[40];
sdg q[40];
rz(0) q[40];
rz(0) q[41];
s q[41];
h q[41];
rz(-0.5*pi) q[41];
h q[41];
sdg q[41];
rz(0) q[41];
rz(0) q[42];
s q[42];
h q[42];
rz(-0.5*pi) q[42];
h q[42];
sdg q[42];
rz(0) q[42];
h q[43];
rz(0) q[44];
s q[44];
h q[44];
rz(-0.5*pi) q[44];
h q[44];
sdg q[44];
rz(0) q[44];
h q[45];
h q[46];
h q[47];
h q[48];
rz(0) q[49];
s q[49];
h q[49];
rz(-0.5*pi) q[49];
h q[49];
sdg q[49];
rz(0) q[49];
h q[50];
rz(0) q[51];
s q[51];
h q[51];
rz(-0.5*pi) q[51];
h q[51];
sdg q[51];
rz(0) q[51];
rz(0) q[52];
s q[52];
h q[52];
rz(-0.5*pi) q[52];
h q[52];
sdg q[52];
rz(0) q[52];
rz(0) q[53];
s q[53];
h q[53];
rz(-0.5*pi) q[53];
h q[53];
sdg q[53];
rz(0) q[53];
h q[54];
rz(0) q[55];
s q[55];
h q[55];
rz(-0.5*pi) q[55];
h q[55];
sdg q[55];
rz(0) q[55];
h q[56];
rz(0) q[57];
s q[57];
h q[57];
rz(-0.5*pi) q[57];
h q[57];
sdg q[57];
rz(0) q[57];
rz(0) q[58];
s q[58];
h q[58];
rz(-0.5*pi) q[58];
h q[58];
sdg q[58];
rz(0) q[58];
h q[59];
rz(0) q[60];
s q[60];
h q[60];
rz(-0.5*pi) q[60];
h q[60];
sdg q[60];
rz(0) q[60];
h q[61];
h q[62];
rz(0) q[63];
s q[63];
h q[63];
rz(-0.5*pi) q[63];
h q[63];
sdg q[63];
rz(0) q[63];
h q[64];
h q[65];
h q[66];
rz(0) q[67];
s q[67];
h q[67];
rz(-0.5*pi) q[67];
h q[67];
sdg q[67];
rz(0) q[67];
rz(0) q[68];
s q[68];
h q[68];
rz(-0.5*pi) q[68];
h q[68];
sdg q[68];
rz(0) q[68];
h q[69];
h q[70];
h q[71];
rz(0) q[72];
s q[72];
h q[72];
rz(-0.5*pi) q[72];
h q[72];
sdg q[72];
rz(0) q[72];
h q[73];
rz(0) q[74];
s q[74];
h q[74];
rz(-0.5*pi) q[74];
h q[74];
sdg q[74];
rz(0) q[74];
rz(0) q[75];
s q[75];
h q[75];
rz(-0.5*pi) q[75];
h q[75];
sdg q[75];
rz(0) q[75];
h q[76];
rz(0) q[77];
s q[77];
h q[77];
rz(-0.5*pi) q[77];
h q[77];
sdg q[77];
rz(0) q[77];
rz(0) q[78];
s q[78];
h q[78];
rz(-0.5*pi) q[78];
h q[78];
sdg q[78];
rz(0) q[78];
h q[79];
rz(0) q[80];
s q[80];
h q[80];
rz(-0.5*pi) q[80];
h q[80];
sdg q[80];
rz(0) q[80];
h q[81];
h q[82];
h q[83];
h q[84];
h q[85];
rz(0) q[86];
s q[86];
h q[86];
rz(-0.5*pi) q[86];
h q[86];
sdg q[86];
rz(0) q[86];
h q[87];
rz(0) q[88];
s q[88];
h q[88];
rz(-0.5*pi) q[88];
h q[88];
sdg q[88];
rz(0) q[88];
h q[89];
h q[90];
h q[91];
h q[92];
h q[93];
h q[94];
h q[95];
rz(0) q[96];
s q[96];
h q[96];
rz(-0.5*pi) q[96];
h q[96];
sdg q[96];
rz(0) q[96];
rz(0) q[97];
s q[97];
h q[97];
rz(-0.5*pi) q[97];
h q[97];
sdg q[97];
rz(0) q[97];
h q[98];
rz(0) q[99];
s q[99];
h q[99];
rz(-0.5*pi) q[99];
h q[99];
sdg q[99];
rz(0) q[99];
rz(0) q[100];
s q[100];
h q[100];
rz(-0.5*pi) q[100];
h q[100];
sdg q[100];
rz(0) q[100];
h q[101];
h q[102];
rz(0) q[103];
s q[103];
h q[103];
rz(-0.5*pi) q[103];
h q[103];
sdg q[103];
rz(0) q[103];
h q[104];
h q[105];
rz(0) q[106];
s q[106];
h q[106];
rz(-0.5*pi) q[106];
h q[106];
sdg q[106];
rz(0) q[106];
h q[107];
h q[108];
h q[109];
h q[110];
h q[111];
h q[112];
rz(0) q[113];
s q[113];
h q[113];
rz(-0.5*pi) q[113];
h q[113];
sdg q[113];
rz(0) q[113];
rz(0) q[114];
s q[114];
h q[114];
rz(-0.5*pi) q[114];
h q[114];
sdg q[114];
rz(0) q[114];
rz(0) q[115];
s q[115];
h q[115];
rz(-0.5*pi) q[115];
h q[115];
sdg q[115];
rz(0) q[115];
h q[116];
h q[117];
h q[118];
rz(0) q[119];
s q[119];
h q[119];
rz(-0.5*pi) q[119];
h q[119];
sdg q[119];
rz(0) q[119];
rz(0) q[120];
s q[120];
h q[120];
rz(-0.5*pi) q[120];
h q[120];
sdg q[120];
rz(0) q[120];
rz(0) q[121];
s q[121];
h q[121];
rz(-0.5*pi) q[121];
h q[121];
sdg q[121];
rz(0) q[121];
rz(0) q[122];
s q[122];
h q[122];
rz(-0.5*pi) q[122];
h q[122];
sdg q[122];
rz(0) q[122];
h q[123];
rz(0) q[124];
s q[124];
h q[124];
rz(-0.5*pi) q[124];
h q[124];
sdg q[124];
rz(0) q[124];
h q[125];
rz(0) q[126];
s q[126];
h q[126];
rz(-0.5*pi) q[126];
h q[126];
sdg q[126];
rz(0) q[126];
rz(-pi) q[127];
s q[127];
h q[127];
rz(-0.5*pi) q[127];
h q[127];
sdg q[127];
rz(-pi) q[127];
cx q[0],q[127];
rz(-pi) q[0];
s q[0];
h q[0];
rz(-0.5*pi) q[0];
h q[0];
sdg q[0];
rz(-pi) q[0];
cx q[1],q[127];
rz(-pi) q[1];
s q[1];
h q[1];
rz(-0.5*pi) q[1];
h q[1];
sdg q[1];
rz(-pi) q[1];
cx q[2],q[127];
h q[2];
cx q[3],q[127];
rz(-pi) q[3];
s q[3];
h q[3];
rz(-0.5*pi) q[3];
h q[3];
sdg q[3];
rz(-pi) q[3];
cx q[4],q[127];
h q[4];
cx q[5],q[127];
rz(-pi) q[5];
s q[5];
h q[5];
rz(-0.5*pi) q[5];
h q[5];
sdg q[5];
rz(-pi) q[5];
cx q[6],q[127];
rz(-pi) q[6];
s q[6];
h q[6];
rz(-0.5*pi) q[6];
h q[6];
sdg q[6];
rz(-pi) q[6];
cx q[7],q[127];
h q[7];
cx q[8],q[127];
rz(-pi) q[8];
s q[8];
h q[8];
rz(-0.5*pi) q[8];
h q[8];
sdg q[8];
rz(-pi) q[8];
cx q[9],q[127];
cx q[10],q[127];
h q[10];
cx q[11],q[127];
rz(-pi) q[11];
s q[11];
h q[11];
rz(-0.5*pi) q[11];
h q[11];
sdg q[11];
rz(-pi) q[11];
cx q[12],q[127];
rz(-pi) q[12];
s q[12];
h q[12];
rz(-0.5*pi) q[12];
h q[12];
sdg q[12];
rz(-pi) q[12];
cx q[13],q[127];
h q[13];
cx q[14],q[127];
h q[14];
cx q[15],q[127];
rz(-pi) q[15];
s q[15];
h q[15];
rz(-0.5*pi) q[15];
h q[15];
sdg q[15];
rz(-pi) q[15];
cx q[16],q[127];
h q[16];
cx q[17],q[127];
h q[17];
cx q[18],q[127];
h q[18];
cx q[19],q[127];
h q[19];
cx q[20],q[127];
h q[20];
cx q[21],q[127];
rz(-pi) q[21];
s q[21];
h q[21];
rz(-0.5*pi) q[21];
h q[21];
sdg q[21];
rz(-pi) q[21];
cx q[22],q[127];
h q[22];
cx q[23],q[127];
h q[23];
cx q[24],q[127];
rz(-pi) q[24];
s q[24];
h q[24];
rz(-0.5*pi) q[24];
h q[24];
sdg q[24];
rz(-pi) q[24];
cx q[25],q[127];
rz(-pi) q[25];
s q[25];
h q[25];
rz(-0.5*pi) q[25];
h q[25];
sdg q[25];
rz(-pi) q[25];
cx q[26],q[127];
h q[26];
cx q[27],q[127];
h q[27];
cx q[28],q[127];
rz(-pi) q[28];
s q[28];
h q[28];
rz(-0.5*pi) q[28];
h q[28];
sdg q[28];
rz(-pi) q[28];
cx q[29],q[127];
h q[29];
cx q[30],q[127];
h q[30];
cx q[31],q[127];
rz(-pi) q[31];
s q[31];
h q[31];
rz(-0.5*pi) q[31];
h q[31];
sdg q[31];
rz(-pi) q[31];
cx q[32],q[127];
h q[32];
cx q[33],q[127];
h q[33];
cx q[34],q[127];
h q[34];
cx q[35],q[127];
rz(-pi) q[35];
s q[35];
h q[35];
rz(-0.5*pi) q[35];
h q[35];
sdg q[35];
rz(-pi) q[35];
cx q[36],q[127];
rz(-pi) q[36];
s q[36];
h q[36];
rz(-0.5*pi) q[36];
h q[36];
sdg q[36];
rz(-pi) q[36];
cx q[37],q[127];
h q[37];
cx q[38],q[127];
rz(-pi) q[38];
s q[38];
h q[38];
rz(-0.5*pi) q[38];
h q[38];
sdg q[38];
rz(-pi) q[38];
cx q[39],q[127];
rz(-pi) q[39];
s q[39];
h q[39];
rz(-0.5*pi) q[39];
h q[39];
sdg q[39];
rz(-pi) q[39];
cx q[40],q[127];
rz(-pi) q[40];
s q[40];
h q[40];
rz(-0.5*pi) q[40];
h q[40];
sdg q[40];
rz(-pi) q[40];
cx q[41],q[127];
rz(-pi) q[41];
s q[41];
h q[41];
rz(-0.5*pi) q[41];
h q[41];
sdg q[41];
rz(-pi) q[41];
cx q[42],q[127];
rz(-pi) q[42];
s q[42];
h q[42];
rz(-0.5*pi) q[42];
h q[42];
sdg q[42];
rz(-pi) q[42];
cx q[43],q[127];
h q[43];
cx q[44],q[127];
rz(-pi) q[44];
s q[44];
h q[44];
rz(-0.5*pi) q[44];
h q[44];
sdg q[44];
rz(-pi) q[44];
cx q[45],q[127];
h q[45];
cx q[46],q[127];
h q[46];
cx q[47],q[127];
h q[47];
cx q[48],q[127];
h q[48];
cx q[49],q[127];
rz(-pi) q[49];
s q[49];
h q[49];
rz(-0.5*pi) q[49];
h q[49];
sdg q[49];
rz(-pi) q[49];
cx q[50],q[127];
h q[50];
cx q[51],q[127];
rz(-pi) q[51];
s q[51];
h q[51];
rz(-0.5*pi) q[51];
h q[51];
sdg q[51];
rz(-pi) q[51];
cx q[52],q[127];
rz(-pi) q[52];
s q[52];
h q[52];
rz(-0.5*pi) q[52];
h q[52];
sdg q[52];
rz(-pi) q[52];
cx q[53],q[127];
rz(-pi) q[53];
s q[53];
h q[53];
rz(-0.5*pi) q[53];
h q[53];
sdg q[53];
rz(-pi) q[53];
cx q[54],q[127];
h q[54];
cx q[55],q[127];
rz(-pi) q[55];
s q[55];
h q[55];
rz(-0.5*pi) q[55];
h q[55];
sdg q[55];
rz(-pi) q[55];
cx q[56],q[127];
h q[56];
cx q[57],q[127];
rz(-pi) q[57];
s q[57];
h q[57];
rz(-0.5*pi) q[57];
h q[57];
sdg q[57];
rz(-pi) q[57];
cx q[58],q[127];
rz(-pi) q[58];
s q[58];
h q[58];
rz(-0.5*pi) q[58];
h q[58];
sdg q[58];
rz(-pi) q[58];
cx q[59],q[127];
h q[59];
cx q[60],q[127];
rz(-pi) q[60];
s q[60];
h q[60];
rz(-0.5*pi) q[60];
h q[60];
sdg q[60];
rz(-pi) q[60];
cx q[61],q[127];
h q[61];
cx q[62],q[127];
h q[62];
cx q[63],q[127];
rz(-pi) q[63];
s q[63];
h q[63];
rz(-0.5*pi) q[63];
h q[63];
sdg q[63];
rz(-pi) q[63];
cx q[64],q[127];
h q[64];
cx q[65],q[127];
h q[65];
cx q[66],q[127];
h q[66];
cx q[67],q[127];
rz(-pi) q[67];
s q[67];
h q[67];
rz(-0.5*pi) q[67];
h q[67];
sdg q[67];
rz(-pi) q[67];
cx q[68],q[127];
rz(-pi) q[68];
s q[68];
h q[68];
rz(-0.5*pi) q[68];
h q[68];
sdg q[68];
rz(-pi) q[68];
cx q[69],q[127];
h q[69];
cx q[70],q[127];
h q[70];
cx q[71],q[127];
h q[71];
cx q[72],q[127];
rz(-pi) q[72];
s q[72];
h q[72];
rz(-0.5*pi) q[72];
h q[72];
sdg q[72];
rz(-pi) q[72];
cx q[73],q[127];
h q[73];
cx q[74],q[127];
rz(-pi) q[74];
s q[74];
h q[74];
rz(-0.5*pi) q[74];
h q[74];
sdg q[74];
rz(-pi) q[74];
cx q[75],q[127];
rz(-pi) q[75];
s q[75];
h q[75];
rz(-0.5*pi) q[75];
h q[75];
sdg q[75];
rz(-pi) q[75];
cx q[76],q[127];
h q[76];
cx q[77],q[127];
rz(-pi) q[77];
s q[77];
h q[77];
rz(-0.5*pi) q[77];
h q[77];
sdg q[77];
rz(-pi) q[77];
cx q[78],q[127];
rz(-pi) q[78];
s q[78];
h q[78];
rz(-0.5*pi) q[78];
h q[78];
sdg q[78];
rz(-pi) q[78];
cx q[79],q[127];
h q[79];
cx q[80],q[127];
rz(-pi) q[80];
s q[80];
h q[80];
rz(-0.5*pi) q[80];
h q[80];
sdg q[80];
rz(-pi) q[80];
cx q[81],q[127];
h q[81];
cx q[82],q[127];
h q[82];
cx q[83],q[127];
h q[83];
cx q[84],q[127];
h q[84];
cx q[85],q[127];
h q[85];
cx q[86],q[127];
rz(-pi) q[86];
s q[86];
h q[86];
rz(-0.5*pi) q[86];
h q[86];
sdg q[86];
rz(-pi) q[86];
cx q[87],q[127];
h q[87];
cx q[88],q[127];
rz(-pi) q[88];
s q[88];
h q[88];
rz(-0.5*pi) q[88];
h q[88];
sdg q[88];
rz(-pi) q[88];
cx q[89],q[127];
h q[89];
rz(-pi) q[9];
s q[9];
h q[9];
rz(-0.5*pi) q[9];
h q[9];
sdg q[9];
rz(-pi) q[9];
cx q[90],q[127];
h q[90];
cx q[91],q[127];
h q[91];
cx q[92],q[127];
h q[92];
cx q[93],q[127];
h q[93];
cx q[94],q[127];
h q[94];
cx q[95],q[127];
h q[95];
cx q[96],q[127];
rz(-pi) q[96];
s q[96];
h q[96];
rz(-0.5*pi) q[96];
h q[96];
sdg q[96];
rz(-pi) q[96];
cx q[97],q[127];
rz(-pi) q[97];
s q[97];
h q[97];
rz(-0.5*pi) q[97];
h q[97];
sdg q[97];
rz(-pi) q[97];
cx q[98],q[127];
h q[98];
cx q[99],q[127];
cx q[100],q[127];
rz(-pi) q[100];
s q[100];
h q[100];
rz(-0.5*pi) q[100];
h q[100];
sdg q[100];
rz(-pi) q[100];
cx q[101],q[127];
h q[101];
cx q[102],q[127];
h q[102];
cx q[103],q[127];
rz(-pi) q[103];
s q[103];
h q[103];
rz(-0.5*pi) q[103];
h q[103];
sdg q[103];
rz(-pi) q[103];
cx q[104],q[127];
h q[104];
cx q[105],q[127];
h q[105];
cx q[106],q[127];
rz(-pi) q[106];
s q[106];
h q[106];
rz(-0.5*pi) q[106];
h q[106];
sdg q[106];
rz(-pi) q[106];
cx q[107],q[127];
h q[107];
cx q[108],q[127];
h q[108];
cx q[109],q[127];
h q[109];
cx q[110],q[127];
h q[110];
cx q[111],q[127];
h q[111];
cx q[112],q[127];
h q[112];
cx q[113],q[127];
rz(-pi) q[113];
s q[113];
h q[113];
rz(-0.5*pi) q[113];
h q[113];
sdg q[113];
rz(-pi) q[113];
cx q[114],q[127];
rz(-pi) q[114];
s q[114];
h q[114];
rz(-0.5*pi) q[114];
h q[114];
sdg q[114];
rz(-pi) q[114];
cx q[115],q[127];
rz(-pi) q[115];
s q[115];
h q[115];
rz(-0.5*pi) q[115];
h q[115];
sdg q[115];
rz(-pi) q[115];
cx q[116],q[127];
h q[116];
cx q[117],q[127];
h q[117];
cx q[118],q[127];
h q[118];
cx q[119],q[127];
rz(-pi) q[119];
s q[119];
h q[119];
rz(-0.5*pi) q[119];
h q[119];
sdg q[119];
rz(-pi) q[119];
cx q[120],q[127];
rz(-pi) q[120];
s q[120];
h q[120];
rz(-0.5*pi) q[120];
h q[120];
sdg q[120];
rz(-pi) q[120];
cx q[121],q[127];
rz(-pi) q[121];
s q[121];
h q[121];
rz(-0.5*pi) q[121];
h q[121];
sdg q[121];
rz(-pi) q[121];
cx q[122],q[127];
rz(-pi) q[122];
s q[122];
h q[122];
rz(-0.5*pi) q[122];
h q[122];
sdg q[122];
rz(-pi) q[122];
cx q[123],q[127];
h q[123];
cx q[124],q[127];
rz(-pi) q[124];
s q[124];
h q[124];
rz(-0.5*pi) q[124];
h q[124];
sdg q[124];
rz(-pi) q[124];
cx q[125],q[127];
h q[125];
cx q[126],q[127];
rz(-pi) q[126];
s q[126];
h q[126];
rz(-0.5*pi) q[126];
h q[126];
sdg q[126];
rz(-pi) q[126];
rz(-pi) q[99];
s q[99];
h q[99];
rz(-0.5*pi) q[99];
h q[99];
sdg q[99];
rz(-pi) q[99];