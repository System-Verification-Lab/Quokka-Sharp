OPENQASM 2.0;
include "qelib1.inc";

qreg q[90];
s q[0];
h q[1];
s q[2];
s q[3];
s q[4];
t q[5];
s q[6];
s q[7];
h q[8];
s q[9];
h q[10];
h q[11];
cx q[12],q[36];
h q[13];
s q[14];
s q[15];
h q[16];
h q[17];
cx q[59],q[18];
t q[19];
s q[20];
h q[21];
h q[22];
cx q[23],q[55];
h q[24];
h q[25];
h q[26];
cx q[27],q[34];
s q[28];
s q[29];
cx q[58],q[30];
s q[31];
cx q[32],q[89];
cx q[88],q[33];
s q[35];
h q[37];
s q[38];
s q[39];
cx q[40],q[76];
h q[41];
cx q[82],q[42];
h q[43];
s q[44];
h q[45];
s q[46];
s q[47];
t q[48];
cx q[79],q[49];
s q[50];
s q[51];
s q[52];
s q[53];
cx q[84],q[54];
h q[56];
s q[57];
s q[60];
cx q[61],q[69];
s q[62];
h q[63];
s q[64];
s q[65];
s q[66];
h q[67];
h q[68];
cx q[70],q[80];
h q[71];
s q[72];
s q[73];
cx q[74],q[81];
s q[75];
cx q[83],q[77];
h q[78];
h q[85];
cx q[87],q[86];
t q[0];
cx q[64],q[1];
h q[2];
h q[3];
s q[4];
s q[5];
s q[6];
h q[7];
h q[8];
s q[9];
s q[10];
s q[11];
s q[12];
s q[13];
cx q[14],q[44];
cx q[15],q[88];
cx q[16],q[18];
t q[17];
h q[19];
t q[20];
h q[21];
s q[22];
s q[23];
s q[24];
cx q[25],q[33];
t q[26];
s q[27];
h q[28];
h q[29];
s q[30];
s q[31];
s q[32];
h q[34];
s q[35];
h q[36];
s q[37];
t q[38];
t q[39];
h q[40];
h q[41];
s q[42];
h q[43];
t q[45];
h q[46];
s q[47];
h q[48];
s q[49];
cx q[50],q[70];
h q[51];
h q[52];
s q[53];
h q[54];
h q[55];
s q[56];
cx q[57],q[85];
cx q[83],q[58];
h q[59];
s q[60];
cx q[80],q[61];
h q[62];
cx q[63],q[89];
h q[65];
cx q[66],q[76];
cx q[77],q[67];
s q[68];
s q[69];
s q[71];
s q[72];
cx q[79],q[73];
s q[74];
s q[75];
h q[78];
s q[81];
cx q[82],q[86];
s q[84];
h q[87];
s q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
s q[7];
h q[8];
s q[9];
h q[10];
h q[11];
s q[12];
cx q[13],q[16];
t q[14];
s q[15];
h q[17];
cx q[18],q[86];
cx q[19],q[87];
s q[20];
h q[21];
s q[22];
s q[23];
h q[24];
h q[25];
s q[26];
t q[27];
h q[28];
t q[29];
cx q[36],q[30];
h q[31];
h q[32];
h q[33];
h q[34];
s q[35];
t q[37];
cx q[38],q[67];
cx q[39],q[77];
s q[40];
h q[41];
cx q[49],q[42];
h q[43];
h q[44];
h q[45];
s q[46];
s q[47];
s q[48];
h q[50];
s q[51];
s q[52];
h q[53];
h q[54];
h q[55];
h q[56];
cx q[57],q[85];
s q[58];
h q[59];
h q[60];
t q[61];
cx q[84],q[62];
cx q[63],q[70];
s q[64];
t q[65];
h q[66];
s q[68];
h q[69];
h q[71];
s q[72];
h q[73];
s q[74];
h q[75];
h q[76];
h q[78];
cx q[81],q[79];
s q[80];
s q[82];
cx q[88],q[83];
s q[89];
h q[0];
t q[1];
s q[2];
h q[3];
h q[4];
s q[5];
s q[6];
s q[7];
h q[8];
cx q[40],q[9];
cx q[26],q[10];
cx q[88],q[11];
cx q[50],q[12];
s q[13];
s q[14];
h q[15];
s q[16];
h q[17];
s q[18];
s q[19];
t q[20];
s q[21];
s q[22];
s q[23];
cx q[60],q[24];
cx q[30],q[25];
s q[27];
cx q[28],q[57];
s q[29];
s q[31];
s q[32];
s q[33];
s q[34];
t q[35];
s q[36];
s q[37];
cx q[38],q[58];
cx q[39],q[74];
h q[41];
cx q[84],q[42];
s q[43];
h q[44];
cx q[45],q[68];
cx q[46],q[72];
s q[47];
h q[48];
s q[49];
s q[51];
h q[52];
s q[53];
h q[54];
h q[55];
s q[56];
cx q[71],q[59];
h q[61];
h q[62];
cx q[63],q[64];
s q[65];
h q[66];
h q[67];
h q[69];
h q[70];
s q[73];
h q[75];
s q[76];
s q[77];
cx q[79],q[78];
t q[80];
h q[81];
t q[82];
s q[83];
s q[85];
s q[86];
cx q[89],q[87];
cx q[71],q[0];
h q[1];
cx q[2],q[74];
cx q[11],q[3];
s q[4];
s q[5];
s q[6];
h q[7];
cx q[8],q[63];
h q[9];
h q[10];
cx q[12],q[82];
h q[13];
s q[14];
h q[15];
s q[16];
t q[17];
cx q[68],q[18];
s q[19];
h q[20];
h q[21];
s q[22];
cx q[57],q[23];
h q[24];
s q[25];
cx q[55],q[26];
s q[27];
h q[28];
t q[29];
cx q[30],q[42];
h q[31];
s q[32];
cx q[33],q[41];
s q[34];
h q[35];
cx q[78],q[36];
h q[37];
h q[38];
h q[39];
t q[40];
s q[43];
h q[44];
s q[45];
s q[46];
t q[47];
s q[48];
cx q[72],q[49];
cx q[51],q[50];
s q[52];
s q[53];
s q[54];
s q[56];
cx q[70],q[58];
cx q[59],q[89];
cx q[60],q[66];
s q[61];
s q[62];
s q[64];
t q[65];
cx q[67],q[88];
s q[69];
h q[73];
cx q[84],q[75];
s q[76];
s q[77];
h q[79];
s q[80];
s q[81];
s q[83];
t q[85];
h q[86];
h q[87];
h q[0];
s q[1];
cx q[8],q[2];
s q[3];
s q[4];
s q[5];
s q[6];
s q[7];
s q[9];
h q[10];
cx q[11],q[82];
h q[12];
cx q[13],q[27];
h q[14];
h q[15];
s q[16];
h q[17];
s q[18];
h q[19];
cx q[56],q[20];
cx q[33],q[21];
t q[22];
s q[23];
s q[24];
s q[25];
h q[26];
h q[28];
h q[29];
h q[30];
s q[31];
cx q[34],q[32];
s q[35];
t q[36];
s q[37];
h q[38];
s q[39];
t q[40];
s q[41];
h q[42];
s q[43];
s q[44];
h q[45];
s q[46];
h q[47];
s q[48];
h q[49];
h q[50];
cx q[51],q[55];
h q[52];
cx q[72],q[53];
h q[54];
h q[57];
h q[58];
h q[59];
h q[60];
t q[61];
h q[62];
h q[63];
t q[64];
cx q[74],q[65];
s q[66];
s q[67];
cx q[68],q[76];
h q[69];
s q[70];
h q[71];
s q[73];
s q[75];
h q[77];
h q[78];
h q[79];
s q[80];
s q[81];
h q[83];
s q[84];
t q[85];
h q[86];
s q[87];
s q[88];
s q[89];
h q[0];
cx q[1],q[29];
h q[2];
cx q[3],q[68];
cx q[75],q[4];
h q[5];
h q[6];
cx q[7],q[82];
cx q[8],q[77];
t q[9];
cx q[10],q[38];
s q[11];
s q[12];
s q[13];
t q[14];
s q[15];
cx q[16],q[31];
h q[17];
h q[18];
s q[19];
h q[20];
h q[21];
s q[22];
s q[23];
h q[24];
s q[25];
h q[26];
cx q[71],q[27];
t q[28];
cx q[45],q[30];
h q[32];
s q[33];
cx q[34],q[62];
s q[35];
h q[36];
cx q[78],q[37];
t q[39];
h q[40];
h q[41];
h q[42];
cx q[57],q[43];
s q[44];
cx q[60],q[46];
t q[47];
s q[48];
s q[49];
h q[50];
t q[51];
s q[52];
s q[53];
cx q[54],q[69];
s q[55];
h q[56];
s q[58];
cx q[74],q[59];
t q[61];
s q[63];
cx q[64],q[65];
h q[66];
cx q[67],q[76];
s q[70];
h q[72];
s q[73];
s q[79];
cx q[80],q[89];
h q[81];
h q[83];
s q[84];
cx q[85],q[87];
h q[86];
s q[88];
h q[0];
h q[1];
s q[2];
h q[3];
h q[4];
t q[5];
cx q[74],q[6];
h q[7];
s q[8];
s q[9];
s q[10];
h q[11];
h q[12];
h q[13];
s q[14];
cx q[71],q[15];
h q[16];
h q[17];
s q[18];
s q[19];
s q[20];
cx q[52],q[21];
cx q[67],q[22];
s q[23];
cx q[50],q[24];
h q[25];
h q[26];
t q[27];
h q[28];
s q[29];
h q[30];
cx q[31],q[32];
s q[33];
cx q[34],q[58];
h q[35];
t q[36];
h q[37];
s q[38];
s q[39];
h q[40];
h q[41];
h q[42];
s q[43];
cx q[44],q[45];
s q[46];
h q[47];
cx q[87],q[48];
s q[49];
cx q[51],q[70];
h q[53];
h q[54];
h q[55];
h q[56];
s q[57];
s q[59];
h q[60];
h q[61];
h q[62];
cx q[63],q[64];
s q[65];
cx q[69],q[66];
h q[68];
cx q[81],q[72];
h q[73];
cx q[75],q[79];
s q[76];
h q[77];
t q[78];
cx q[80],q[83];
cx q[82],q[84];
s q[85];
s q[86];
s q[88];
h q[89];
s q[0];
h q[1];
h q[2];
s q[3];
cx q[4],q[69];
s q[5];
cx q[6],q[14];
t q[7];
s q[8];
s q[9];
s q[10];
s q[11];
h q[12];
h q[13];
h q[15];
h q[16];
h q[17];
s q[18];
s q[19];
h q[20];
h q[21];
s q[22];
cx q[29],q[23];
s q[24];
cx q[43],q[25];
cx q[26],q[28];
h q[27];
s q[30];
h q[31];
cx q[32],q[88];
cx q[34],q[33];
h q[35];
t q[36];
h q[37];
s q[38];
h q[39];
t q[40];
cx q[76],q[41];
h q[42];
cx q[61],q[44];
s q[45];
cx q[81],q[46];
s q[47];
cx q[49],q[48];
cx q[50],q[70];
cx q[74],q[51];
cx q[52],q[73];
s q[53];
s q[54];
s q[55];
s q[56];
h q[57];
h q[58];
s q[59];
cx q[79],q[60];
h q[62];
cx q[80],q[63];
t q[64];
cx q[86],q[65];
h q[66];
s q[67];
cx q[68],q[87];
cx q[71],q[75];
s q[72];
h q[77];
s q[78];
s q[82];
cx q[84],q[83];
s q[85];
h q[89];
s q[0];
h q[1];
s q[2];
s q[3];
s q[4];
s q[5];
h q[6];
h q[7];
cx q[8],q[31];
h q[9];
h q[10];
cx q[51],q[11];
s q[12];
s q[13];
cx q[14],q[84];
cx q[46],q[15];
h q[16];
s q[17];
t q[18];
s q[19];
s q[20];
t q[21];
cx q[22],q[61];
s q[23];
h q[24];
h q[25];
cx q[26],q[33];
t q[27];
t q[28];
s q[29];
t q[30];
t q[32];
h q[34];
t q[35];
cx q[36],q[63];
h q[37];
h q[38];
h q[39];
h q[40];
h q[41];
h q[42];
cx q[43],q[74];
cx q[44],q[83];
s q[45];
h q[47];
s q[48];
s q[49];
h q[50];
s q[52];
h q[53];
t q[54];
h q[55];
s q[56];
s q[57];
cx q[58],q[69];
cx q[68],q[59];
h q[60];
s q[62];
cx q[64],q[72];
h q[65];
cx q[66],q[76];
h q[67];
s q[70];
cx q[71],q[73];
cx q[89],q[75];
h q[77];
h q[78];
h q[79];
s q[80];
h q[81];
s q[82];
cx q[85],q[87];
s q[86];
s q[88];
s q[0];
cx q[42],q[1];
cx q[79],q[2];
cx q[3],q[54];
cx q[29],q[4];
h q[5];
cx q[57],q[6];
h q[7];
h q[8];
cx q[9],q[50];
h q[10];
h q[11];
s q[12];
cx q[13],q[49];
s q[14];
h q[15];
cx q[21],q[16];
h q[17];
s q[18];
s q[19];
h q[20];
s q[22];
s q[23];
s q[24];
h q[25];
h q[26];
cx q[38],q[27];
s q[28];
h q[30];
h q[31];
h q[32];
h q[33];
h q[34];
cx q[35],q[58];
s q[36];
h q[37];
s q[39];
h q[40];
h q[41];
h q[43];
s q[44];
s q[45];
h q[46];
s q[47];
t q[48];
h q[51];
h q[52];
s q[53];
h q[55];
h q[56];
t q[59];
h q[60];
cx q[61],q[85];
h q[62];
s q[63];
h q[64];
cx q[89],q[65];
t q[66];
cx q[67],q[88];
cx q[68],q[80];
cx q[74],q[69];
s q[70];
s q[71];
cx q[72],q[73];
h q[75];
h q[76];
h q[77];
h q[78];
s q[81];
cx q[82],q[87];
h q[83];
h q[84];
t q[86];
h q[0];
s q[1];
h q[2];
cx q[3],q[77];
t q[4];
h q[5];
s q[6];
s q[7];
t q[8];
t q[9];
s q[10];
cx q[58],q[11];
s q[12];
cx q[87],q[13];
h q[14];
cx q[26],q[15];
h q[16];
cx q[75],q[17];
h q[18];
t q[19];
cx q[20],q[42];
s q[21];
cx q[22],q[80];
s q[23];
cx q[24],q[27];
s q[25];
s q[28];
s q[29];
t q[30];
t q[31];
cx q[52],q[32];
s q[33];
s q[34];
cx q[69],q[35];
s q[36];
cx q[37],q[78];
h q[38];
cx q[39],q[41];
s q[40];
s q[43];
s q[44];
s q[45];
h q[46];
cx q[64],q[47];
h q[48];
t q[49];
cx q[51],q[50];
h q[53];
h q[54];
h q[55];
cx q[60],q[56];
h q[57];
s q[59];
s q[61];
h q[62];
h q[63];
cx q[65],q[68];
t q[66];
cx q[67],q[84];
h q[70];
h q[71];
h q[72];
cx q[76],q[73];
cx q[89],q[74];
h q[79];
h q[81];
h q[82];
h q[83];
h q[85];
s q[86];
s q[88];
s q[0];
t q[1];
h q[2];
cx q[75],q[3];
h q[4];
cx q[5],q[23];
cx q[30],q[6];
t q[7];
h q[8];
s q[9];
s q[10];
h q[11];
s q[12];
h q[13];
s q[14];
s q[15];
h q[16];
cx q[17],q[43];
h q[18];
s q[19];
cx q[46],q[20];
s q[21];
h q[22];
cx q[24],q[25];
h q[26];
s q[27];
s q[28];
cx q[77],q[29];
s q[31];
h q[32];
s q[33];
s q[34];
s q[35];
s q[36];
h q[37];
cx q[38],q[88];
h q[39];
h q[40];
cx q[68],q[41];
s q[42];
s q[44];
h q[45];
h q[47];
h q[48];
cx q[83],q[49];
h q[50];
cx q[51],q[62];
s q[52];
s q[53];
s q[54];
cx q[55],q[67];
h q[56];
cx q[82],q[57];
s q[58];
h q[59];
h q[60];
s q[61];
cx q[63],q[89];
s q[64];
s q[65];
t q[66];
t q[69];
h q[70];
h q[71];
s q[72];
s q[73];
s q[74];
s q[76];
s q[78];
t q[79];
h q[80];
s q[81];
t q[84];
t q[85];
s q[86];
h q[87];
h q[0];
cx q[1],q[72];
t q[2];
s q[3];
cx q[4],q[21];
cx q[30],q[5];
s q[6];
h q[7];
h q[8];
h q[9];
s q[10];
cx q[11],q[52];
s q[12];
h q[13];
h q[14];
cx q[84],q[15];
s q[16];
h q[17];
cx q[18],q[41];
cx q[19],q[68];
s q[20];
cx q[89],q[22];
h q[23];
s q[24];
s q[25];
s q[26];
h q[27];
t q[28];
s q[29];
h q[31];
h q[32];
cx q[33],q[61];
h q[34];
s q[35];
cx q[36],q[42];
s q[37];
s q[38];
cx q[86],q[39];
s q[40];
cx q[63],q[43];
h q[44];
h q[45];
h q[46];
s q[47];
s q[48];
s q[49];
cx q[56],q[50];
t q[51];
s q[53];
s q[54];
h q[55];
t q[57];
cx q[58],q[79];
cx q[59],q[87];
cx q[70],q[60];
h q[62];
h q[64];
h q[65];
h q[66];
h q[67];
t q[69];
cx q[73],q[71];
s q[74];
h q[75];
h q[76];
h q[77];
s q[78];
s q[80];
h q[81];
cx q[88],q[82];
h q[83];
s q[85];
s q[0];
h q[1];
s q[2];
cx q[26],q[3];
h q[4];
cx q[5],q[80];
cx q[6],q[31];
s q[7];
s q[8];
s q[9];
cx q[10],q[20];
h q[11];
h q[12];
h q[13];
s q[14];
s q[15];
s q[16];
h q[17];
h q[18];
t q[19];
cx q[75],q[21];
s q[22];
h q[23];
h q[24];
h q[25];
h q[27];
t q[28];
h q[29];
h q[30];
h q[32];
t q[33];
h q[34];
h q[35];
s q[36];
t q[37];
s q[38];
h q[39];
t q[40];
h q[41];
cx q[51],q[42];
s q[43];
cx q[78],q[44];
h q[45];
cx q[46],q[60];
cx q[59],q[47];
t q[48];
t q[49];
s q[50];
h q[52];
h q[53];
s q[54];
s q[55];
s q[56];
s q[57];
cx q[84],q[58];
h q[61];
s q[62];
s q[63];
cx q[89],q[64];
t q[65];
h q[66];
cx q[85],q[67];
h q[68];
h q[69];
h q[70];
t q[71];
t q[72];
h q[73];
cx q[74],q[79];
s q[76];
s q[77];
s q[81];
s q[82];
h q[83];
h q[86];
s q[87];
s q[88];
s q[0];
h q[1];
s q[2];
cx q[7],q[3];
h q[4];
h q[5];
s q[6];
s q[8];
h q[9];
s q[10];
s q[11];
cx q[12],q[35];
t q[13];
h q[14];
t q[15];
s q[16];
s q[17];
t q[18];
h q[19];
cx q[58],q[20];
t q[21];
h q[22];
s q[23];
h q[24];
s q[25];
cx q[26],q[60];
s q[27];
s q[28];
s q[29];
s q[30];
h q[31];
s q[32];
cx q[33],q[84];
s q[34];
h q[36];
s q[37];
t q[38];
h q[39];
cx q[40],q[89];
s q[41];
cx q[83],q[42];
s q[43];
t q[44];
cx q[80],q[45];
h q[46];
s q[47];
h q[48];
h q[49];
cx q[50],q[56];
h q[51];
h q[52];
h q[53];
s q[54];
t q[55];
s q[57];
cx q[59],q[62];
s q[61];
h q[63];
h q[64];
h q[65];
t q[66];
t q[67];
cx q[68],q[69];
s q[70];
s q[71];
s q[72];
s q[73];
s q[74];
h q[75];
cx q[76],q[86];
s q[77];
s q[78];
t q[79];
t q[81];
t q[82];
s q[85];
s q[87];
h q[88];