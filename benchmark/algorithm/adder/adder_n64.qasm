OPENQASM 2.0;
include "qelib1.inc";
qreg q[64];
creg c[64];
creg meas[64];
x q[1];
x q[2];
x q[3];
x q[4];
x q[5];
x q[6];
x q[7];
x q[8];
x q[9];
x q[10];
x q[11];
x q[12];
x q[13];
x q[14];
x q[15];
x q[16];
x q[17];
x q[18];
x q[19];
x q[20];
x q[21];
x q[22];
x q[23];
x q[24];
x q[25];
x q[26];
x q[27];
x q[28];
x q[56];
cx q[0],q[28];
cx q[0],q[56];
ccx q[56],q[28],q[0];
cx q[1],q[29];
cx q[1],q[0];
ccx q[0],q[29],q[1];
cx q[2],q[30];
cx q[2],q[1];
ccx q[1],q[30],q[2];
cx q[3],q[31];
cx q[3],q[2];
ccx q[2],q[31],q[3];
cx q[3],q[57];
ccx q[2],q[31],q[3];
cx q[3],q[2];
cx q[2],q[31];
ccx q[1],q[30],q[2];
cx q[2],q[1];
cx q[1],q[30];
ccx q[0],q[29],q[1];
cx q[1],q[0];
cx q[0],q[29];
ccx q[56],q[28],q[0];
cx q[0],q[56];
cx q[56],q[28];
cx q[4],q[32];
cx q[4],q[57];
ccx q[57],q[32],q[4];
cx q[5],q[33];
cx q[5],q[4];
ccx q[4],q[33],q[5];
cx q[6],q[34];
cx q[6],q[5];
ccx q[5],q[34],q[6];
cx q[7],q[35];
cx q[7],q[6];
ccx q[6],q[35],q[7];
cx q[7],q[58];
ccx q[6],q[35],q[7];
cx q[7],q[6];
cx q[6],q[35];
ccx q[5],q[34],q[6];
cx q[6],q[5];
cx q[5],q[34];
ccx q[4],q[33],q[5];
cx q[5],q[4];
cx q[4],q[33];
ccx q[57],q[32],q[4];
cx q[4],q[57];
cx q[57],q[32];
cx q[8],q[36];
cx q[8],q[58];
ccx q[58],q[36],q[8];
cx q[9],q[37];
cx q[9],q[8];
ccx q[8],q[37],q[9];
cx q[10],q[38];
cx q[10],q[9];
ccx q[9],q[38],q[10];
cx q[11],q[39];
cx q[11],q[10];
ccx q[10],q[39],q[11];
cx q[11],q[59];
ccx q[10],q[39],q[11];
cx q[11],q[10];
cx q[10],q[39];
ccx q[9],q[38],q[10];
cx q[10],q[9];
cx q[9],q[38];
ccx q[8],q[37],q[9];
cx q[9],q[8];
cx q[8],q[37];
ccx q[58],q[36],q[8];
cx q[8],q[58];
cx q[58],q[36];
cx q[12],q[40];
cx q[12],q[59];
ccx q[59],q[40],q[12];
cx q[13],q[41];
cx q[13],q[12];
ccx q[12],q[41],q[13];
cx q[14],q[42];
cx q[14],q[13];
ccx q[13],q[42],q[14];
cx q[15],q[43];
cx q[15],q[14];
ccx q[14],q[43],q[15];
cx q[15],q[60];
ccx q[14],q[43],q[15];
cx q[15],q[14];
cx q[14],q[43];
ccx q[13],q[42],q[14];
cx q[14],q[13];
cx q[13],q[42];
ccx q[12],q[41],q[13];
cx q[13],q[12];
cx q[12],q[41];
ccx q[59],q[40],q[12];
cx q[12],q[59];
cx q[59],q[40];
cx q[16],q[44];
cx q[16],q[60];
ccx q[60],q[44],q[16];
cx q[17],q[45];
cx q[17],q[16];
ccx q[16],q[45],q[17];
cx q[18],q[46];
cx q[18],q[17];
ccx q[17],q[46],q[18];
cx q[19],q[47];
cx q[19],q[18];
ccx q[18],q[47],q[19];
cx q[19],q[61];
ccx q[18],q[47],q[19];
cx q[19],q[18];
cx q[18],q[47];
ccx q[17],q[46],q[18];
cx q[18],q[17];
cx q[17],q[46];
ccx q[16],q[45],q[17];
cx q[17],q[16];
cx q[16],q[45];
ccx q[60],q[44],q[16];
cx q[16],q[60];
cx q[60],q[44];
cx q[20],q[48];
cx q[20],q[61];
ccx q[61],q[48],q[20];
cx q[21],q[49];
cx q[21],q[20];
ccx q[20],q[49],q[21];
cx q[22],q[50];
cx q[22],q[21];
ccx q[21],q[50],q[22];
cx q[23],q[51];
cx q[23],q[22];
ccx q[22],q[51],q[23];
cx q[23],q[62];
ccx q[22],q[51],q[23];
cx q[23],q[22];
cx q[22],q[51];
ccx q[21],q[50],q[22];
cx q[22],q[21];
cx q[21],q[50];
ccx q[20],q[49],q[21];
cx q[21],q[20];
cx q[20],q[49];
ccx q[61],q[48],q[20];
cx q[20],q[61];
cx q[61],q[48];
cx q[24],q[52];
cx q[24],q[62];
ccx q[62],q[52],q[24];
cx q[25],q[53];
cx q[25],q[24];
ccx q[24],q[53],q[25];
cx q[26],q[54];
cx q[26],q[25];
ccx q[25],q[54],q[26];
cx q[27],q[55];
cx q[27],q[26];
ccx q[26],q[55],q[27];
cx q[27],q[63];
ccx q[26],q[55],q[27];
cx q[27],q[26];
cx q[26],q[55];
ccx q[25],q[54],q[26];
cx q[26],q[25];
cx q[25],q[54];
ccx q[24],q[53],q[25];
cx q[25],q[24];
cx q[24],q[53];
ccx q[62],q[52],q[24];
cx q[24],q[62];
cx q[62],q[52];