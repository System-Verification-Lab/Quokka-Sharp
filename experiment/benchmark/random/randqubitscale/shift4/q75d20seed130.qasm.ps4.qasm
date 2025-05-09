OPENQASM 2.0;
include "qelib1.inc";
qreg q[75];
cx q[73], q[74];
cx q[74], q[73];
cx q[73], q[74];
cx q[71], q[73];
cx q[73], q[71];
cx q[71], q[73];
cx q[70], q[73];
cx q[73], q[70];
cx q[70], q[73];
cx q[69], q[72];
cx q[72], q[69];
cx q[69], q[72];
cx q[68], q[69];
cx q[69], q[68];
cx q[68], q[69];
cx q[67], q[71];
cx q[71], q[67];
cx q[67], q[71];
cx q[66], q[67];
cx q[67], q[66];
cx q[66], q[67];
cx q[65], q[70];
cx q[70], q[65];
cx q[65], q[70];
cx q[64], q[70];
cx q[70], q[64];
cx q[64], q[70];
cx q[63], q[65];
cx q[65], q[63];
cx q[63], q[65];
cx q[61], q[66];
cx q[66], q[61];
cx q[61], q[66];
cx q[59], q[68];
cx q[68], q[59];
cx q[59], q[68];
cx q[58], q[68];
cx q[68], q[58];
cx q[58], q[68];
cx q[57], q[64];
cx q[64], q[57];
cx q[57], q[64];
cx q[55], q[61];
cx q[61], q[55];
cx q[55], q[61];
cx q[53], q[72];
cx q[72], q[53];
cx q[53], q[72];
cx q[52], q[59];
cx q[59], q[52];
cx q[52], q[59];
cx q[51], q[62];
cx q[62], q[51];
cx q[51], q[62];
cx q[49], q[54];
cx q[54], q[49];
cx q[49], q[54];
cx q[48], q[57];
cx q[57], q[48];
cx q[48], q[57];
cx q[47], q[50];
cx q[50], q[47];
cx q[47], q[50];
cx q[45], q[58];
cx q[58], q[45];
cx q[45], q[58];
cx q[44], q[52];
cx q[52], q[44];
cx q[44], q[52];
cx q[42], q[52];
cx q[52], q[42];
cx q[42], q[52];
cx q[40], q[52];
cx q[52], q[40];
cx q[40], q[52];
cx q[39], q[71];
cx q[71], q[39];
cx q[39], q[71];
cx q[38], q[42];
cx q[42], q[38];
cx q[38], q[42];
cx q[37], q[58];
cx q[58], q[37];
cx q[37], q[58];
cx q[35], q[43];
cx q[43], q[35];
cx q[35], q[43];
cx q[34], q[61];
cx q[61], q[34];
cx q[34], q[61];
cx q[33], q[44];
cx q[44], q[33];
cx q[33], q[44];
cx q[32], q[41];
cx q[41], q[32];
cx q[32], q[41];
cx q[31], q[64];
cx q[64], q[31];
cx q[31], q[64];
cx q[29], q[42];
cx q[42], q[29];
cx q[29], q[42];
cx q[28], q[63];
cx q[63], q[28];
cx q[28], q[63];
cx q[27], q[67];
cx q[67], q[27];
cx q[27], q[67];
cx q[25], q[63];
cx q[63], q[25];
cx q[25], q[63];
cx q[24], q[26];
cx q[26], q[24];
cx q[24], q[26];
cx q[22], q[70];
cx q[70], q[22];
cx q[22], q[70];
cx q[21], q[39];
cx q[39], q[21];
cx q[21], q[39];
cx q[20], q[44];
cx q[44], q[20];
cx q[20], q[44];
cx q[17], q[60];
cx q[60], q[17];
cx q[17], q[60];
cx q[15], q[30];
cx q[30], q[15];
cx q[15], q[30];
cx q[14], q[53];
cx q[53], q[14];
cx q[14], q[53];
cx q[13], q[54];
cx q[54], q[13];
cx q[13], q[54];
cx q[12], q[42];
cx q[42], q[12];
cx q[12], q[42];
cx q[11], q[48];
cx q[48], q[11];
cx q[11], q[48];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[6], q[11];
cx q[11], q[6];
cx q[6], q[11];
cx q[5], q[27];
cx q[27], q[5];
cx q[5], q[27];
cx q[3], q[58];
cx q[58], q[3];
cx q[3], q[58];
cx q[0], q[49];
cx q[49], q[0];
cx q[0], q[49];
h q[74];
h q[73];
h q[72];
h q[70];
h q[67];
h q[65];
h q[63];
h q[62];
h q[58];
h q[57];
h q[56];
h q[55];
h q[52];
h q[51];
h q[50];
h q[48];
h q[45];
h q[42];
h q[39];
h q[38];
h q[35];
h q[34];
h q[33];
h q[32];
h q[29];
h q[28];
h q[24];
h q[22];
h q[21];
h q[20];
h q[18];
h q[15];
h q[14];
h q[13];
h q[12];
h q[11];
h q[10];
h q[8];
h q[5];
h q[3];
h q[2];
h q[0];
rz(1.0*pi) q[56];
h q[56];
h q[5];
h q[2];
cz q[5], q[67];
cz q[2], q[45];
rz(0.75*pi) q[56];
h q[65];
h q[67];
h q[72];
h q[11];
h q[56];
h q[45];
cz q[58], q[67];
cz q[58], q[65];
cz q[56], q[58];
cz q[45], q[58];
cz q[39], q[72];
cz q[11], q[58];
cz q[11], q[22];
cz q[5], q[58];
rz(0.5*pi) q[58];
h q[28];
h q[39];
h q[51];
h q[22];
h q[26];
h q[14];
h q[58];
h q[15];
cz q[58], q[65];
cz q[56], q[65];
cz q[56], q[59];
cz q[51], q[59];
cz q[45], q[65];
cz q[39], q[59];
cz q[28], q[59];
cz q[26], q[59];
cz q[22], q[59];
cz q[15], q[59];
cz q[14], q[59];
cz q[11], q[65];
cz q[5], q[59];
rz(1.5*pi) q[59];
rz(0.5*pi) q[65];
h q[34];
h q[21];
h q[59];
h q[65];
cz q[52], q[67];
cz q[52], q[65];
cz q[52], q[59];
cz q[52], q[56];
cz q[39], q[52];
cz q[34], q[52];
cz q[28], q[52];
cz q[22], q[52];
cz q[21], q[52];
h q[69];
h q[74];
h q[52];
cz q[55], q[74];
cz q[28], q[69];
cz q[28], q[52];
cz q[28], q[34];
cz q[26], q[28];
cz q[15], q[28];
cz q[14], q[28];
rz(1.5*pi) q[28];
h q[28];
h q[55];
cz q[39], q[69];
cz q[39], q[55];
cz q[39], q[52];
cz q[34], q[39];
cz q[28], q[39];
cz q[26], q[39];
cz q[21], q[39];
cz q[15], q[39];
cz q[14], q[39];
rz(0.75*pi) q[39];
h q[39];
cx q[39], q[59];
h q[73];
h q[13];
cz q[35], q[73];
cz q[35], q[56];
cz q[35], q[39];
cz q[13], q[35];
h q[31];
h q[60];
h q[35];
cz q[5], q[65];
cz q[5], q[60];
cz q[5], q[35];
cz q[5], q[34];
cz q[5], q[31];
cz q[5], q[15];
cz q[5], q[14];
rz(0.5*pi) q[5];
h q[6];
h q[5];
cz q[67], q[69];
cz q[60], q[67];
cz q[56], q[67];
cz q[31], q[67];
cz q[28], q[67];
cz q[26], q[67];
cz q[22], q[67];
cz q[6], q[67];
cz q[5], q[67];
rz(1.75*pi) q[67];
h q[67];
cx q[67], q[58];
cz q[33], q[44];
rz(1.0*pi) q[33];
h q[44];
h q[18];
h q[33];
cz q[44], q[67];
cz q[44], q[65];
cz q[44], q[45];
cz q[39], q[44];
cz q[33], q[44];
cz q[22], q[44];
cz q[18], q[44];
cz q[2], q[44];
rz(1.25*pi) q[44];
h q[24];
h q[44];
cz q[53], q[60];
cz q[53], q[56];
cz q[52], q[53];
cz q[44], q[53];
cz q[39], q[53];
cz q[24], q[53];
cz q[14], q[53];
rz(0.25*pi) q[53];
h q[53];
cx q[53], q[59];
h q[70];
cz q[69], q[73];
cz q[69], q[70];
cz q[65], q[69];
cz q[59], q[69];
cz q[52], q[69];
cz q[34], q[69];
cz q[31], q[69];
cz q[24], q[69];
cz q[22], q[69];
cz q[21], q[69];
cz q[14], q[69];
cz q[2], q[69];
rz(0.5*pi) q[69];
h q[64];
h q[41];
h q[1];
h q[69];
cz q[31], q[73];
cz q[31], q[69];
cz q[31], q[64];
cz q[31], q[56];
cz q[31], q[53];
cz q[31], q[41];
cz q[31], q[39];
cz q[24], q[31];
cz q[14], q[31];
cz q[2], q[31];
cz q[1], q[31];
rz(0.5*pi) q[31];
h q[3];
h q[31];
cz q[56], q[64];
cz q[39], q[64];
cz q[31], q[64];
cz q[3], q[64];
rz(0.5*pi) q[64];
h q[64];
cx q[64], q[44];
cx q[64], q[53];
cx q[53], q[58];
h q[3];
cx q[3], q[59];
cx q[3], q[67];
cz q[32], q[34];
h q[32];
h q[50];
cz q[46], q[53];
cz q[46], q[50];
cz q[32], q[46];
cx q[46], q[32];
cz q[32], q[72];
cz q[32], q[55];
cz q[32], q[45];
cz q[32], q[31];
cx q[46], q[32];
rz(1.0*pi) q[46];
rz(1.75*pi) q[32];
h q[46];
h q[32];
cz q[70], q[73];
cz q[69], q[70];
cz q[64], q[70];
cz q[56], q[70];
cz q[53], q[70];
cz q[46], q[70];
cz q[39], q[70];
cz q[32], q[70];
cz q[24], q[70];
cz q[22], q[70];
cz q[14], q[70];
cz q[3], q[70];
cz q[2], q[70];
rz(1.5*pi) q[70];
h q[70];
cx q[70], q[5];
cx q[70], q[67];
cx q[67], q[59];
cz q[51], q[52];
cz q[34], q[51];
cz q[26], q[51];
cz q[15], q[51];
cz q[14], q[51];
rz(1.0*pi) q[51];
h q[51];
cx q[51], q[5];
cx q[51], q[28];
h q[71];
cx q[71], q[59];
rz(1.0*pi) q[66];
h q[66];
cz q[70], q[71];
cz q[67], q[71];
cz q[66], q[71];
cz q[65], q[71];
cz q[64], q[71];
cz q[56], q[71];
cz q[53], q[71];
cz q[51], q[71];
cz q[34], q[71];
cz q[28], q[71];
cz q[26], q[71];
cz q[22], q[71];
cz q[15], q[71];
cz q[14], q[71];
cz q[3], q[71];
rz(1.25*pi) q[71];
h q[71];
cx q[71], q[58];
cx q[71], q[51];
cx q[51], q[59];
h q[37];
cz q[37], q[68];
rz(1.0*pi) q[68];
h q[68];
cx q[68], q[5];
cx q[68], q[58];
cx q[68], q[69];
cz q[62], q[72];
cz q[6], q[62];
rz(1.5*pi) q[62];
h q[62];
cx q[62], q[51];
cz q[6], q[72];
cz q[6], q[62];
cz q[6], q[22];
cz q[6], q[18];
rz(1.5*pi) q[6];
h q[6];
cx q[6], q[46];
cx q[6], q[59];
cx q[6], q[70];
h q[20];
cx q[20], q[33];
cx q[33], q[35];
cx q[33], q[59];
cz q[64], q[72];
cz q[56], q[72];
cz q[55], q[72];
cz q[45], q[72];
cz q[39], q[72];
cz q[31], q[72];
rz(0.25*pi) q[72];
h q[72];
cx q[72], q[32];
cx q[32], q[46];
cx q[72], q[53];
h q[23];
cx q[23], q[46];
cx q[23], q[69];
cx q[23], q[58];
rz(0.5*pi) q[74];
h q[74];
cx q[74], q[44];
cx q[74], q[69];
cz q[18], q[72];
cz q[18], q[56];
cz q[18], q[53];
cz q[18], q[52];
cz q[18], q[45];
cz q[18], q[44];
cz q[18], q[39];
cz q[2], q[18];
h q[18];
cx q[18], q[5];
cx q[18], q[69];
cx q[18], q[26];
cz q[73], q[74];
cz q[72], q[73];
cz q[69], q[73];
cz q[68], q[73];
cz q[64], q[73];
cz q[56], q[73];
cz q[55], q[73];
cz q[53], q[73];
cz q[39], q[73];
cz q[34], q[73];
cz q[24], q[73];
cz q[23], q[73];
cz q[18], q[73];
cz q[14], q[73];
cz q[2], q[73];
rz(0.5*pi) q[73];
h q[73];
cx q[73], q[59];
cx q[73], q[55];
cz q[20], q[40];
rz(0.5*pi) q[40];
h q[40];
cx q[40], q[44];
cx q[44], q[58];
cz q[38], q[40];
h q[38];
cx q[38], q[32];
cx q[38], q[40];
h q[12];
cx q[12], q[28];
h q[29];
cx q[29], q[5];
rz(1.75*pi) q[42];
h q[42];
cx q[42], q[38];
h q[0];
cx q[0], q[35];
cz q[12], q[73];
cz q[12], q[72];
cz q[12], q[67];
cz q[12], q[65];
cz q[12], q[64];
cz q[12], q[62];
cz q[12], q[59];
cz q[12], q[56];
cz q[12], q[53];
cz q[12], q[52];
cz q[12], q[51];
cz q[12], q[39];
cz q[12], q[38];
cz q[12], q[34];
cz q[12], q[33];
cz q[12], q[29];
cz q[12], q[22];
cz q[12], q[21];
cz q[6], q[12];
cz q[3], q[12];
cz q[0], q[12];
rz(1.25*pi) q[12];
h q[61];
h q[12];
cz q[25], q[74];
cz q[25], q[72];
cz q[25], q[61];
cz q[25], q[56];
cz q[25], q[53];
cz q[25], q[52];
cz q[25], q[44];
cz q[25], q[42];
cz q[25], q[40];
cz q[25], q[39];
cz q[25], q[29];
cz q[12], q[25];
cz q[2], q[25];
rz(0.5*pi) q[25];
h q[25];
cx q[25], q[69];
rz(1.0*pi) q[13];
h q[13];
rz(0.25*pi) q[13];
h q[13];
cz q[13], q[25];
cz q[0], q[13];
rz(1.75*pi) q[13];
h q[13];
cx q[13], q[44];
cx q[13], q[64];
h q[47];
cx q[47], q[58];
h q[10];
cx q[10], q[58];
cz q[17], q[73];
cz q[17], q[55];
cz q[17], q[45];
cz q[17], q[23];
cz q[17], q[22];
cz q[11], q[17];
rz(1.0*pi) q[17];
h q[17];
cx q[17], q[58];
cx q[58], q[69];
cz q[47], q[72];
cz q[47], q[71];
cz q[47], q[70];
cz q[47], q[67];
cz q[47], q[65];
cz q[47], q[56];
cz q[47], q[53];
cz q[45], q[47];
cz q[23], q[47];
cz q[17], q[47];
cz q[13], q[47];
cz q[11], q[47];
cz q[10], q[47];
cz q[6], q[47];
cz q[3], q[47];
rz(1.0*pi) q[47];
h q[47];
cx q[47], q[44];
cx q[44], q[58];
cz q[52], q[54];
cz q[13], q[54];
rz(1.25*pi) q[54];
h q[54];
cz q[43], q[54];
cz q[43], q[52];
cz q[24], q[43];
cz q[13], q[43];
h q[43];
cx q[43], q[35];
cx q[43], q[74];
cz q[34], q[73];
cz q[34], q[71];
cz q[34], q[67];
cz q[34], q[56];
cz q[34], q[55];
cz q[34], q[52];
cz q[34], q[43];
cz q[34], q[39];
cz q[34], q[35];
cz q[28], q[34];
cz q[0], q[34];
rz(0.5*pi) q[34];
h q[34];
cx q[34], q[59];
cx q[59], q[70];
h q[61];
cx q[61], q[69];
cx q[61], q[34];
h q[19];
cx q[19], q[17];
cz q[45], q[50];
cz q[19], q[50];
cz q[10], q[50];
rz(0.25*pi) q[50];
h q[50];
cx q[50], q[32];
cx q[50], q[47];
h q[63];
cz q[37], q[63];
cz q[37], q[45];
cz q[23], q[37];
cz q[22], q[37];
cz q[19], q[37];
cz q[11], q[37];
rz(0.5*pi) q[37];
h q[37];
cx q[37], q[17];
cx q[17], q[34];
cz q[19], q[42];
cz q[19], q[38];
cz q[19], q[31];
cz q[18], q[19];
cz q[10], q[19];
rz(1.5*pi) q[19];
h q[19];
cz q[11], q[64];
cz q[11], q[42];
cz q[11], q[38];
cz q[11], q[31];
cz q[11], q[19];
cz q[11], q[18];
cz q[10], q[11];
rz(0.25*pi) q[11];
h q[11];
cx q[11], q[47];
cx q[11], q[64];
cz q[73], q[74];
cz q[70], q[73];
cz q[67], q[73];
cz q[65], q[73];
cz q[64], q[73];
cz q[62], q[73];
cz q[59], q[73];
cz q[56], q[73];
cz q[51], q[73];
cz q[50], q[73];
cz q[46], q[73];
cz q[45], q[73];
cz q[42], q[73];
cz q[39], q[73];
cz q[38], q[73];
cz q[33], q[73];
cz q[32], q[73];
cz q[31], q[73];
cz q[28], q[73];
cz q[26], q[73];
cz q[23], q[73];
cz q[22], q[73];
cz q[21], q[73];
cz q[18], q[73];
cz q[17], q[73];
cz q[15], q[73];
cz q[14], q[73];
cz q[13], q[73];
cz q[11], q[73];
cz q[3], q[73];
rz(0.25*pi) q[73];
h q[73];
cx q[73], q[34];
cz q[28], q[74];
cz q[28], q[73];
cz q[28], q[67];
cz q[28], q[65];
cz q[28], q[64];
cz q[28], q[62];
cz q[28], q[61];
cz q[28], q[59];
cz q[28], q[54];
cz q[28], q[52];
cz q[28], q[51];
cz q[28], q[50];
cz q[28], q[47];
cz q[28], q[44];
cz q[28], q[43];
cz q[28], q[42];
cz q[28], q[40];
cz q[28], q[38];
cz q[28], q[34];
cz q[28], q[33];
cz q[25], q[28];
cz q[22], q[28];
cz q[21], q[28];
cz q[17], q[28];
cz q[13], q[28];
cz q[6], q[28];
cz q[3], q[28];
cz q[2], q[28];
rz(1.25*pi) q[28];
h q[28];
cx q[28], q[69];
cz q[22], q[74];
cz q[22], q[72];
cz q[22], q[61];
cz q[22], q[59];
cz q[22], q[56];
cz q[22], q[55];
cz q[22], q[46];
cz q[22], q[45];
cz q[22], q[42];
cz q[22], q[41];
cz q[22], q[39];
cz q[22], q[38];
cz q[22], q[34];
cz q[22], q[31];
cz q[22], q[28];
cz q[22], q[26];
cz q[22], q[25];
cz q[22], q[23];
cz q[19], q[22];
cz q[15], q[22];
cz q[14], q[22];
cz q[13], q[22];
cz q[11], q[22];
cz q[1], q[22];
rz(1.75*pi) q[22];
h q[22];
cz q[3], q[74];
cz q[3], q[70];
cz q[3], q[65];
cz q[3], q[61];
cz q[3], q[55];
cz q[3], q[53];
cz q[3], q[52];
cz q[3], q[46];
cz q[3], q[45];
cz q[3], q[41];
cz q[3], q[34];
cz q[3], q[28];
cz q[3], q[26];
cz q[3], q[25];
cz q[3], q[23];
cz q[3], q[22];
cz q[3], q[18];
cz q[3], q[15];
cz q[3], q[14];
cz q[3], q[10];
cz q[3], q[6];
cz q[1], q[3];
rz(0.75*pi) q[3];
h q[3];
cx q[3], q[5];
cx q[3], q[67];
h q[49];
cx q[49], q[5];
cx q[49], q[0];
cz q[26], q[73];
cz q[26], q[72];
cz q[26], q[67];
cz q[26], q[65];
cz q[26], q[64];
cz q[26], q[62];
cz q[26], q[61];
cz q[26], q[59];
cz q[26], q[56];
cz q[26], q[54];
cz q[26], q[53];
cz q[26], q[51];
cz q[26], q[39];
cz q[26], q[34];
cz q[26], q[33];
cz q[24], q[26];
cz q[17], q[26];
cz q[15], q[26];
cz q[14], q[26];
cz q[11], q[26];
cz q[6], q[26];
cz q[3], q[26];
rz(0.75*pi) q[26];
h q[26];
cx q[26], q[52];
cz q[63], q[68];
rz(1.5*pi) q[63];
h q[63];
cx q[63], q[25];
h q[30];
cx q[30], q[25];
h q[57];
cx q[57], q[69];
rz(1.0*pi) q[7];
h q[7];
cz q[49], q[63];
cz q[49], q[56];
cz q[49], q[55];
cz q[43], q[49];
cz q[39], q[49];
cz q[35], q[49];
cz q[33], q[49];
cz q[30], q[49];
cz q[25], q[49];
cz q[13], q[49];
cz q[0], q[49];
rz(0.25*pi) q[16];
rz(0.25*pi) q[7];
h q[16];
h q[7];
h q[49];
cz q[14], q[74];
cz q[14], q[73];
cz q[14], q[69];
cz q[14], q[68];
cz q[14], q[67];
cz q[14], q[63];
cz q[14], q[62];
cz q[14], q[61];
cz q[14], q[59];
cz q[14], q[58];
cz q[14], q[54];
cz q[14], q[52];
cz q[14], q[51];
cz q[14], q[49];
cz q[14], q[43];
cz q[14], q[34];
cz q[14], q[33];
cz q[14], q[30];
cz q[14], q[28];
cz q[14], q[26];
cz q[14], q[25];
cz q[14], q[24];
cz q[14], q[23];
cz q[14], q[17];
cz q[14], q[16];
cz q[14], q[15];
cz q[13], q[14];
cz q[7], q[14];
cz q[6], q[14];
cz q[3], q[14];
cz q[2], q[14];
rz(1.0*pi) q[14];
h q[14];
cx q[14], q[44];
rz(0.75*pi) q[66];
h q[66];
cx q[66], q[34];
cz q[40], q[74];
cz q[40], q[67];
cz q[40], q[65];
cz q[40], q[64];
cz q[40], q[50];
cz q[40], q[49];
cz q[40], q[47];
cz q[40], q[45];
cz q[40], q[43];
cz q[40], q[42];
cz q[40], q[41];
cz q[39], q[40];
cz q[29], q[40];
cz q[16], q[40];
cz q[14], q[40];
cz q[12], q[40];
cz q[7], q[40];
cz q[3], q[40];
cz q[2], q[40];
rz(0.5*pi) q[40];
h q[40];
cz q[63], q[74];
cz q[63], q[72];
cz q[63], q[70];
cz q[63], q[68];
cz q[63], q[66];
cz q[63], q[64];
cz q[59], q[63];
cz q[58], q[63];
cz q[56], q[63];
cz q[55], q[63];
cz q[53], q[63];
cz q[49], q[63];
cz q[44], q[63];
cz q[43], q[63];
cz q[40], q[63];
cz q[39], q[63];
cz q[38], q[63];
cz q[30], q[63];
cz q[29], q[63];
cz q[28], q[63];
cz q[25], q[63];
cz q[24], q[63];
cz q[23], q[63];
cz q[14], q[63];
cz q[12], q[63];
cz q[11], q[63];
cz q[6], q[63];
cz q[2], q[63];
cz q[0], q[63];
rz(0.75*pi) q[63];
h q[63];
cx q[63], q[69];
cz q[21], q[55];
cz q[21], q[39];
cz q[21], q[33];
rz(1.5*pi) q[21];
h q[21];
cx q[21], q[73];
cz q[55], q[69];
cz q[55], q[59];
cz q[55], q[56];
cz q[50], q[55];
cz q[46], q[55];
cz q[45], q[55];
cz q[43], q[55];
cz q[42], q[55];
cz q[38], q[55];
cz q[35], q[55];
cz q[32], q[55];
cz q[31], q[55];
cz q[30], q[55];
cz q[25], q[55];
cz q[23], q[55];
cz q[21], q[55];
cz q[0], q[55];
rz(0.75*pi) q[55];
h q[55];
cx q[55], q[63];
cz q[41], q[72];
cz q[41], q[70];
cz q[41], q[59];
cz q[41], q[46];
cz q[23], q[41];
rz(1.0*pi) q[41];
h q[41];
cx q[41], q[32];
cz q[41], q[64];
cz q[41], q[56];
cz q[41], q[47];
cz q[41], q[45];
cz q[39], q[41];
cz q[31], q[41];
cz q[13], q[41];
cz q[11], q[41];
cz q[1], q[41];
rz(0.25*pi) q[41];
h q[41];
cx q[41], q[32];
cz q[16], q[74];
cz q[16], q[72];
cz q[16], q[56];
cz q[16], q[53];
cz q[16], q[52];
cz q[16], q[50];
cz q[16], q[47];
cz q[16], q[44];
cz q[16], q[43];
cz q[16], q[42];
cz q[16], q[39];
cz q[16], q[38];
cz q[16], q[26];
cz q[16], q[24];
cz q[13], q[16];
cz q[11], q[16];
rz(0.75*pi) q[16];
h q[16];
cx q[16], q[14];
cz q[10], q[57];
rz(1.0*pi) q[57];
h q[57];
cx q[57], q[11];
h q[48];
cx q[48], q[11];
cz q[56], q[72];
cz q[56], q[68];
cz q[56], q[67];
cz q[56], q[64];
cz q[56], q[61];
cz q[56], q[58];
cz q[56], q[57];
cz q[52], q[56];
cz q[48], q[56];
cz q[42], q[56];
cz q[39], q[56];
cz q[30], q[56];
cz q[29], q[56];
cz q[24], q[56];
cz q[15], q[56];
cz q[14], q[56];
cz q[12], q[56];
cz q[10], q[56];
cz q[2], q[56];
rz(1.25*pi) q[56];
h q[56];
cz q[39], q[71];
cz q[39], q[70];
cz q[39], q[68];
cz q[39], q[67];
cz q[39], q[64];
cz q[39], q[62];
cz q[39], q[58];
cz q[39], q[56];
cz q[39], q[53];
cz q[39], q[51];
cz q[39], q[50];
cz q[39], q[47];
cz q[39], q[45];
cz q[39], q[44];
cz q[39], q[43];
cz q[38], q[39];
cz q[34], q[39];
cz q[30], q[39];
cz q[29], q[39];
cz q[26], q[39];
cz q[24], q[39];
cz q[21], q[39];
cz q[16], q[39];
cz q[15], q[39];
cz q[13], q[39];
cz q[12], q[39];
cz q[11], q[39];
rz(1.25*pi) q[39];
h q[39];
cx q[39], q[28];
cz q[60], q[68];
cz q[60], q[62];
cz q[58], q[60];
cz q[37], q[60];
h q[60];
cx q[60], q[17];
cz q[29], q[74];
cz q[29], q[72];
cz q[29], q[62];
cz q[29], q[60];
cz q[29], q[57];
cz q[29], q[53];
cz q[29], q[52];
cz q[29], q[50];
cz q[29], q[48];
cz q[29], q[47];
cz q[29], q[44];
cz q[29], q[43];
cz q[29], q[42];
cz q[29], q[38];
cz q[29], q[37];
cz q[29], q[30];
cz q[26], q[29];
cz q[25], q[29];
cz q[16], q[29];
cz q[14], q[29];
cz q[13], q[29];
cz q[11], q[29];
cz q[2], q[29];
rz(1.0*pi) q[29];
h q[29];
cz q[29], q[68];
cz q[29], q[58];
cz q[29], q[38];
cz q[12], q[29];
rz(0.25*pi) q[29];
h q[29];
cx q[29], q[28];
rz(1.0*pi) q[27];
h q[27];
rz(0.75*pi) q[27];
h q[27];
cx q[27], q[35];
cz q[45], q[74];
cz q[45], q[72];
cz q[45], q[70];
cz q[45], q[67];
cz q[45], q[65];
cz q[45], q[64];
cz q[45], q[59];
cz q[45], q[53];
cz q[45], q[47];
cz q[45], q[46];
cz q[44], q[45];
cz q[43], q[45];
cz q[42], q[45];
cz q[41], q[45];
cz q[38], q[45];
cz q[32], q[45];
cz q[23], q[45];
cz q[18], q[45];
cz q[16], q[45];
cz q[14], q[45];
cz q[10], q[45];
cz q[3], q[45];
cz q[2], q[45];
rz(0.25*pi) q[45];
h q[45];
cx q[45], q[19];
cz q[10], q[72];
cz q[10], q[71];
cz q[10], q[70];
cz q[10], q[68];
cz q[10], q[67];
cz q[10], q[65];
cz q[10], q[64];
cz q[10], q[60];
cz q[10], q[59];
cz q[10], q[58];
cz q[10], q[53];
cz q[10], q[50];
cz q[10], q[47];
cz q[10], q[37];
cz q[10], q[23];
cz q[10], q[17];
cz q[10], q[13];
cz q[6], q[10];
cz q[3], q[10];
rz(1.0*pi) q[10];
h q[10];
cx q[10], q[55];
cz q[67], q[70];
cz q[61], q[67];
cz q[49], q[67];
cz q[44], q[67];
cz q[43], q[67];
cz q[38], q[67];
cz q[34], q[67];
cz q[16], q[67];
cz q[15], q[67];
cz q[14], q[67];
cz q[13], q[67];
cz q[6], q[67];
cz q[2], q[69];
cz q[2], q[68];
cz q[2], q[67];
cz q[2], q[65];
cz q[2], q[63];
cz q[2], q[58];
cz q[2], q[55];
cz q[2], q[54];
cz q[2], q[52];
cz q[2], q[40];
cz q[2], q[30];
cz q[2], q[29];
cz q[2], q[28];
cz q[2], q[26];
cz q[2], q[25];
cz q[2], q[24];
cz q[2], q[23];
cz q[2], q[12];
cz q[2], q[10];
cz q[2], q[3];
cx q[2], q[67];
cz q[67], q[72];
cz q[67], q[57];
cz q[67], q[53];
cz q[67], q[50];
cz q[67], q[48];
cz q[67], q[47];
cz q[67], q[42];
cz q[67], q[39];
cz q[67], q[18];
cz q[67], q[11];
cx q[2], q[67];
rz(1.75*pi) q[2];
rz(1.25*pi) q[67];
h q[2];
h q[67];
cz q[68], q[74];
cz q[68], q[72];
cz q[68], q[69];
cz q[67], q[68];
cz q[66], q[68];
cz q[64], q[68];
cz q[62], q[68];
cz q[58], q[68];
cz q[57], q[68];
cz q[55], q[68];
cz q[53], q[68];
cz q[49], q[68];
cz q[48], q[68];
cz q[44], q[68];
cz q[43], q[68];
cz q[42], q[68];
cz q[39], q[68];
cz q[37], q[68];
cz q[30], q[68];
cz q[29], q[68];
cz q[28], q[68];
cz q[25], q[68];
cz q[24], q[68];
cz q[23], q[68];
cz q[17], q[68];
cz q[16], q[68];
cz q[14], q[68];
cz q[13], q[68];
cz q[12], q[68];
cz q[11], q[68];
cz q[10], q[68];
cz q[2], q[68];
rz(1.75*pi) q[68];
h q[68];
cz q[42], q[74];
cz q[42], q[68];
cz q[42], q[67];
cz q[42], q[66];
cz q[42], q[65];
cz q[42], q[63];
cz q[42], q[58];
cz q[42], q[57];
cz q[42], q[50];
cz q[42], q[49];
cz q[42], q[48];
cz q[42], q[44];
cz q[42], q[43];
cz q[41], q[42];
cz q[40], q[42];
cz q[38], q[42];
cz q[37], q[42];
cz q[31], q[42];
cz q[23], q[42];
cz q[18], q[42];
cz q[16], q[42];
cz q[14], q[42];
cz q[13], q[42];
cz q[12], q[42];
cz q[11], q[42];
cz q[3], q[42];
cz q[2], q[42];
rz(1.75*pi) q[42];
h q[42];
cz q[69], q[72];
cz q[65], q[72];
cz q[64], q[72];
cz q[63], q[72];
cz q[61], q[72];
cz q[58], q[72];
cz q[57], q[72];
cz q[55], q[72];
cz q[53], q[72];
cz q[52], q[72];
cz q[49], q[72];
cz q[48], q[72];
cz q[47], q[72];
cz q[46], q[72];
cz q[44], q[72];
cz q[43], q[72];
cz q[42], q[72];
cz q[41], q[72];
cz q[40], q[72];
cz q[38], q[72];
cz q[34], q[72];
cz q[31], q[72];
cz q[30], q[72];
cz q[29], q[72];
cz q[28], q[72];
cz q[26], q[72];
cz q[25], q[72];
cz q[24], q[72];
cz q[22], q[72];
cz q[16], q[72];
cz q[15], q[72];
cz q[14], q[72];
cz q[13], q[72];
cz q[12], q[72];
cz q[11], q[72];
cz q[10], q[72];
cz q[6], q[72];
cz q[3], q[72];
cz q[1], q[72];
rz(0.25*pi) q[72];
h q[72];
cz q[57], q[72];
cz q[57], q[69];
cz q[57], q[65];
cz q[57], q[64];
cz q[57], q[63];
cz q[57], q[61];
cz q[57], q[58];
cz q[55], q[57];
cz q[53], q[57];
cz q[52], q[57];
cz q[50], q[57];
cz q[49], q[57];
cz q[48], q[57];
cz q[47], q[57];
cz q[46], q[57];
cz q[44], q[57];
cz q[43], q[57];
cz q[42], q[57];
cz q[40], q[57];
cz q[34], q[57];
cz q[32], q[57];
cz q[31], q[57];
cz q[30], q[57];
cz q[29], q[57];
cz q[28], q[57];
cz q[26], q[57];
cz q[25], q[57];
cz q[24], q[57];
cz q[22], q[57];
cz q[16], q[57];
cz q[15], q[57];
cz q[14], q[57];
cz q[13], q[57];
cz q[12], q[57];
cz q[11], q[57];
cz q[6], q[57];
cz q[3], q[57];
rz(1.75*pi) q[57];
h q[57];
cz q[48], q[72];
cz q[48], q[69];
cz q[48], q[65];
cz q[48], q[64];
cz q[48], q[63];
cz q[48], q[61];
cz q[48], q[58];
cz q[48], q[57];
cz q[48], q[55];
cz q[48], q[53];
cz q[48], q[52];
cz q[48], q[50];
cz q[48], q[49];
cz q[47], q[48];
cz q[46], q[48];
cz q[44], q[48];
cz q[43], q[48];
cz q[42], q[48];
cz q[40], q[48];
cz q[34], q[48];
cz q[32], q[48];
cz q[31], q[48];
cz q[30], q[48];
cz q[29], q[48];
cz q[28], q[48];
cz q[26], q[48];
cz q[25], q[48];
cz q[24], q[48];
cz q[22], q[48];
cz q[16], q[48];
cz q[15], q[48];
cz q[14], q[48];
cz q[13], q[48];
cz q[12], q[48];
cz q[6], q[48];
cz q[3], q[48];
rz(1.75*pi) q[48];
h q[48];
cx q[48], q[11];
rz(0.5*pi) q[9];
h q[9];
cx q[9], q[10];
h q[5];
cz q[5], q[71];
cz q[5], q[70];
cz q[5], q[65];
cz q[5], q[59];
cz q[5], q[58];
cz q[5], q[54];
cz q[5], q[52];
cz q[5], q[51];
cz q[5], q[37];
cz q[5], q[35];
cz q[5], q[33];
cz q[5], q[26];
cz q[5], q[24];
cz q[5], q[18];
cz q[5], q[17];
cz q[5], q[15];
cz q[5], q[13];
cz q[5], q[6];
cz q[3], q[5];
cz q[0], q[5];
rz(0.25*pi) q[5];
h q[5];
cx q[5], q[27];
cz q[2], q[58];
cz q[2], q[45];
cz q[2], q[38];
cz q[2], q[31];
cz q[2], q[18];
rz(0.75*pi) q[2];
h q[2];
cx q[2], q[68];
h q[36];
cz q[64], q[74];
cz q[61], q[64];
cz q[58], q[62];
cz q[44], q[58];
cz q[38], q[65];
cz q[38], q[60];
cz q[38], q[52];
cz q[38], q[49];
cz q[38], q[47];
cz q[38], q[46];
cz q[38], q[42];
cz q[38], q[41];
cz q[38], q[40];
cz q[36], q[38];
cz q[31], q[38];
cz q[30], q[64];
cz q[30], q[38];
cz q[25], q[64];
cz q[25], q[38];
cz q[24], q[58];
cz q[24], q[54];
cz q[23], q[38];
cz q[15], q[64];
cz q[13], q[64];
cz q[13], q[58];
cz q[12], q[58];
cz q[7], q[64];
cz q[7], q[24];
cz q[6], q[64];
cz q[3], q[38];
cx q[38], q[24];
cz q[24], q[63];
cz q[24], q[26];
cz q[24], q[18];
cx q[38], q[24];
cx q[38], q[58];
cz q[58], q[68];
cz q[58], q[67];
cz q[58], q[66];
cz q[58], q[37];
cz q[58], q[17];
cz q[58], q[2];
cx q[38], q[58];
cx q[58], q[24];
cz q[24], q[74];
cz q[24], q[69];
cz q[24], q[64];
cz q[24], q[55];
cz q[24], q[53];
cz q[24], q[49];
cz q[24], q[48];
cz q[24], q[43];
cz q[24], q[39];
cz q[24], q[30];
cz q[24], q[29];
cz q[24], q[28];
cz q[24], q[25];
cz q[24], q[23];
cz q[24], q[16];
cz q[24], q[14];
cz q[24], q[11];
cz q[24], q[10];
cz q[24], q[9];
cx q[58], q[24];
rz(0.25*pi) q[58];
rz(0.75*pi) q[64];
rz(0.75*pi) q[38];
rz(1.0*pi) q[24];
h q[58];
h q[64];
h q[38];
h q[24];
cz q[61], q[73];
cz q[61], q[62];
cz q[59], q[61];
cz q[53], q[61];
cz q[51], q[61];
cz q[34], q[61];
cz q[18], q[61];
cz q[13], q[64];
cz q[13], q[57];
cz q[13], q[54];
cz q[13], q[40];
cz q[13], q[24];
cz q[12], q[47];
cz q[12], q[46];
cz q[12], q[44];
cz q[12], q[38];
cz q[12], q[36];
cz q[12], q[30];
cz q[12], q[26];
cz q[12], q[25];
cz q[10], q[13];
cz q[9], q[13];
cz q[0], q[13];
cx q[13], q[61];
cz q[61], q[65];
cz q[61], q[15];
cz q[61], q[6];
cz q[61], q[3];
cx q[13], q[61];
cx q[13], q[12];
cz q[12], q[52];
cz q[12], q[50];
cz q[12], q[43];
cz q[12], q[16];
cz q[12], q[14];
cx q[13], q[12];
cx q[12], q[61];
cz q[61], q[74];
cz q[61], q[60];
cz q[61], q[48];
cz q[61], q[17];
cz q[61], q[13];
cz q[61], q[11];
cx q[12], q[61];
rz(1.25*pi) q[58];
rz(0.75*pi) q[61];
rz(1.75*pi) q[12];
rz(1.75*pi) q[13];
h q[58];
h q[61];
h q[12];
h q[13];
cz q[61], q[74];
cz q[61], q[73];
cz q[61], q[70];
cz q[60], q[61];
cz q[52], q[74];
cz q[52], q[70];
cz q[49], q[52];
cz q[44], q[52];
cz q[40], q[52];
cz q[37], q[62];
cz q[37], q[51];
cz q[37], q[45];
cz q[34], q[61];
cz q[31], q[37];
cz q[22], q[52];
cz q[17], q[61];
cz q[15], q[66];
cz q[15], q[34];
cz q[13], q[52];
cz q[12], q[62];
cz q[12], q[51];
cz q[10], q[37];
cz q[9], q[37];
cz q[8], q[66];
cz q[8], q[30];
cz q[7], q[52];
cz q[6], q[15];
cx q[37], q[15];
cz q[15], q[65];
cz q[15], q[59];
cz q[15], q[18];
cz q[15], q[3];
cx q[37], q[15];
cx q[52], q[15];
cz q[15], q[73];
cz q[15], q[62];
cz q[15], q[60];
cz q[15], q[53];
cz q[15], q[51];
cz q[15], q[50];
cz q[15], q[48];
cz q[15], q[33];
cz q[15], q[21];
cz q[15], q[17];
cz q[15], q[11];
cx q[52], q[15];
rz(0.25*pi) q[58];
rz(0.25*pi) q[15];
rz(1.25*pi) q[61];
rz(1.25*pi) q[52];
rz(1.25*pi) q[37];
rz(1.75*pi) q[12];
rz(1.75*pi) q[8];
h q[58];
h q[15];
h q[61];
h q[52];
h q[37];
h q[12];
h q[8];
cz q[66], q[69];
cz q[62], q[71];
cz q[62], q[70];
cz q[62], q[66];
cz q[59], q[61];
cz q[55], q[66];
cz q[53], q[59];
cz q[51], q[66];
cz q[50], q[62];
cz q[49], q[59];
cz q[46], q[59];
cz q[45], q[66];
cz q[39], q[59];
cz q[37], q[59];
cz q[34], q[62];
cz q[34], q[59];
cz q[33], q[62];
cz q[31], q[66];
cz q[30], q[49];
cz q[30], q[44];
cz q[29], q[59];
cz q[28], q[59];
cz q[26], q[62];
cz q[23], q[59];
cz q[22], q[59];
cz q[21], q[62];
cz q[18], q[59];
cz q[16], q[30];
cz q[15], q[30];
cz q[14], q[69];
cz q[14], q[65];
cz q[14], q[52];
cz q[14], q[50];
cz q[14], q[47];
cz q[14], q[30];
cz q[14], q[25];
cz q[14], q[18];
cz q[12], q[58];
cz q[3], q[14];
cz q[1], q[59];
cz q[0], q[30];
cx q[62], q[66];
cz q[66], q[73];
cz q[66], q[60];
cz q[66], q[17];
cx q[62], q[66];
cx q[66], q[30];
cz q[30], q[70];
cz q[30], q[59];
cz q[30], q[8];
cz q[30], q[6];
cx q[66], q[30];
cx q[59], q[66];
cz q[66], q[74];
cz q[66], q[65];
cz q[66], q[25];
cz q[66], q[10];
cz q[66], q[9];
cz q[66], q[3];
cx q[59], q[66];
cx q[30], q[14];
cz q[14], q[74];
cz q[14], q[63];
cz q[14], q[55];
cz q[14], q[53];
cz q[14], q[48];
cz q[14], q[43];
cz q[14], q[40];
cz q[14], q[39];
cz q[14], q[29];
cz q[14], q[28];
cz q[14], q[23];
cz q[14], q[11];
cz q[14], q[10];
cz q[14], q[9];
cx q[30], q[14];
rz(0.5*pi) q[4];
rz(1.75*pi) q[66];
rz(0.75*pi) q[62];
rz(1.75*pi) q[59];
rz(0.25*pi) q[58];
rz(1.0*pi) q[30];
rz(0.75*pi) q[14];
h q[20];
h q[4];
h q[66];
h q[62];
h q[59];
h q[58];
h q[30];
h q[14];
h q[56];
cz q[67], q[71];
cz q[60], q[71];
cz q[56], q[72];
cz q[51], q[70];
cz q[51], q[62];
cz q[51], q[60];
cz q[50], q[65];
cz q[47], q[65];
cz q[47], q[56];
cz q[45], q[74];
cz q[43], q[50];
cz q[42], q[56];
cz q[40], q[74];
cz q[36], q[53];
cz q[36], q[46];
cz q[36], q[38];
cz q[34], q[56];
cz q[33], q[51];
cz q[32], q[50];
cz q[31], q[56];
cz q[31], q[50];
cz q[31], q[36];
cz q[26], q[70];
cz q[26], q[54];
cz q[26], q[53];
cz q[26], q[52];
cz q[26], q[50];
cz q[26], q[44];
cz q[25], q[74];
cz q[25], q[58];
cz q[25], q[43];
cz q[25], q[39];
cz q[24], q[26];
cz q[23], q[70];
cz q[23], q[25];
cz q[22], q[56];
cz q[21], q[51];
cz q[20], q[60];
cz q[20], q[33];
cz q[18], q[74];
cz q[18], q[71];
cz q[18], q[33];
cz q[17], q[71];
cz q[16], q[50];
cz q[15], q[30];
cz q[14], q[36];
cz q[13], q[26];
cz q[12], q[25];
cz q[10], q[74];
cz q[9], q[74];
cz q[9], q[65];
cz q[9], q[39];
cz q[9], q[37];
cz q[9], q[20];
cz q[7], q[47];
cz q[6], q[70];
cz q[6], q[66];
cz q[6], q[18];
cz q[3], q[50];
cz q[1], q[70];
cz q[1], q[46];
cz q[1], q[23];
cz q[0], q[33];
cx q[74], q[51];
cz q[51], q[73];
cz q[51], q[34];
cz q[51], q[17];
cx q[74], q[51];
cx q[6], q[65];
cz q[65], q[48];
cz q[65], q[34];
cz q[65], q[11];
cx q[6], q[65];
cx q[56], q[70];
cz q[70], q[65];
cz q[70], q[46];
cz q[70], q[32];
cz q[70], q[25];
cz q[70], q[3];
cx q[56], q[70];
cx q[26], q[71];
cz q[71], q[74];
cz q[71], q[51];
cz q[71], q[33];
cz q[71], q[22];
cz q[71], q[21];
cx q[26], q[71];
cx q[74], q[9];
cz q[9], q[69];
cz q[9], q[63];
cz q[9], q[55];
cz q[9], q[29];
cz q[9], q[28];
cz q[9], q[23];
cx q[74], q[9];
cx q[70], q[6];
cz q[6], q[73];
cz q[6], q[60];
cz q[6], q[53];
cz q[6], q[39];
cz q[6], q[29];
cz q[6], q[28];
cz q[6], q[22];
cz q[6], q[17];
cx q[70], q[6];
cx q[26], q[50];
cz q[50], q[73];
cz q[50], q[60];
cz q[50], q[56];
cz q[50], q[49];
cz q[50], q[48];
cz q[50], q[40];
cz q[50], q[17];
cz q[50], q[11];
cz q[50], q[7];
cx q[26], q[50];
cx q[9], q[65];
cz q[65], q[61];
cz q[65], q[59];
cz q[65], q[53];
cz q[65], q[44];
cz q[65], q[43];
cz q[65], q[18];
cz q[65], q[16];
cz q[65], q[10];
cz q[65], q[3];
cx q[9], q[65];
cx q[56], q[25];
cz q[25], q[69];
cz q[25], q[63];
cz q[25], q[55];
cz q[25], q[53];
cz q[25], q[49];
cz q[25], q[48];
cz q[25], q[44];
cz q[25], q[40];
cz q[25], q[29];
cz q[25], q[28];
cz q[25], q[16];
cz q[25], q[11];
cz q[25], q[10];
cz q[25], q[9];
cz q[25], q[6];
cz q[25], q[0];
cx q[56], q[25];
rz(1.75*pi) q[60];
rz(0.75*pi) q[74];
rz(1.75*pi) q[71];
rz(0.25*pi) q[70];
rz(0.25*pi) q[65];
rz(1.75*pi) q[56];
rz(0.25*pi) q[51];
rz(0.75*pi) q[50];
rz(0.5*pi) q[36];
rz(0.75*pi) q[33];
rz(0.75*pi) q[26];
rz(1.75*pi) q[25];
rz(1.75*pi) q[20];
rz(1.25*pi) q[15];
rz(1.25*pi) q[9];
rz(1.25*pi) q[7];
rz(0.75*pi) q[6];
rz(1.25*pi) q[4];
rz(1.75*pi) q[1];
h q[60];
h q[74];
h q[71];
h q[70];
h q[65];
h q[56];
h q[51];
h q[50];
h q[36];
h q[33];
h q[26];
h q[25];
h q[20];
h q[15];
h q[9];
h q[7];
h q[6];
h q[4];
h q[1];
cz q[17], q[60];
h q[60];
h q[64];
cz q[70], q[74];
cz q[68], q[72];
cz q[67], q[73];
cz q[67], q[71];
cz q[66], q[72];
cz q[64], q[72];
cz q[63], q[69];
cz q[60], q[73];
cz q[57], q[64];
cz q[55], q[57];
cz q[53], q[72];
cz q[53], q[64];
cz q[53], q[63];
cz q[47], q[64];
cz q[47], q[50];
cz q[47], q[49];
cz q[46], q[64];
cz q[46], q[60];
cz q[45], q[70];
cz q[42], q[64];
cz q[41], q[47];
cz q[40], q[53];
cz q[40], q[47];
cz q[39], q[66];
cz q[39], q[40];
cz q[38], q[60];
cz q[36], q[60];
cz q[36], q[51];
cz q[35], q[43];
cz q[34], q[64];
cz q[34], q[45];
cz q[32], q[74];
cz q[32], q[70];
cz q[32], q[47];
cz q[31], q[60];
cz q[31], q[32];
cz q[29], q[55];
cz q[28], q[44];
cz q[24], q[54];
cz q[23], q[45];
cz q[23], q[39];
cz q[23], q[31];
cz q[22], q[67];
cz q[22], q[64];
cz q[22], q[53];
cz q[19], q[41];
cz q[19], q[23];
cz q[18], q[73];
cz q[18], q[68];
cz q[18], q[67];
cz q[18], q[62];
cz q[18], q[39];
cz q[18], q[21];
cz q[16], q[31];
cz q[15], q[30];
cz q[14], q[60];
cz q[14], q[52];
cz q[14], q[51];
cz q[13], q[54];
cz q[11], q[48];
cz q[10], q[39];
cz q[10], q[23];
cz q[9], q[64];
cz q[9], q[63];
cz q[9], q[10];
cz q[8], q[35];
cz q[6], q[51];
cz q[5], q[27];
cz q[4], q[21];
cz q[4], q[7];
cz q[3], q[47];
cz q[3], q[44];
cz q[3], q[34];
cz q[2], q[45];
cz q[2], q[31];
cz q[2], q[25];
cz q[2], q[18];
cz q[0], q[49];
cz q[0], q[43];
cz q[0], q[35];
cz q[0], q[27];
cz q[0], q[5];
cx q[31], q[32];
cz q[32], q[64];
cz q[32], q[45];
cz q[32], q[41];
cx q[31], q[32];
cx q[55], q[29];
cz q[29], q[64];
cz q[29], q[39];
cz q[29], q[23];
cz q[29], q[10];
cx q[55], q[29];
cx q[49], q[15];
cz q[15], q[73];
cz q[15], q[71];
cz q[15], q[67];
cz q[15], q[22];
cx q[49], q[15];
cx q[3], q[37];
cz q[37], q[65];
cz q[37], q[61];
cz q[37], q[59];
cz q[37], q[10];
cx q[3], q[37];
cx q[60], q[73];
cz q[73], q[74];
cz q[73], q[47];
cz q[73], q[45];
cz q[73], q[39];
cz q[73], q[34];
cx q[60], q[73];
cx q[63], q[69];
cz q[69], q[68];
cz q[69], q[64];
cz q[69], q[55];
cz q[69], q[39];
cz q[69], q[29];
cz q[69], q[23];
cz q[69], q[10];
cx q[63], q[69];
cx q[18], q[53];
cz q[53], q[69];
cz q[53], q[60];
cz q[53], q[55];
cz q[53], q[49];
cz q[53], q[34];
cz q[53], q[29];
cz q[53], q[10];
cz q[53], q[3];
cx q[18], q[53];
cx q[44], q[28];
cz q[28], q[69];
cz q[28], q[64];
cz q[28], q[63];
cz q[28], q[55];
cz q[28], q[53];
cz q[28], q[40];
cz q[28], q[39];
cz q[28], q[29];
cz q[28], q[23];
cz q[28], q[18];
cz q[28], q[10];
cx q[44], q[28];
cx q[43], q[16];
cz q[16], q[69];
cz q[16], q[63];
cz q[16], q[55];
cz q[16], q[53];
cz q[16], q[47];
cz q[16], q[40];
cz q[16], q[39];
cz q[16], q[29];
cz q[16], q[28];
cz q[16], q[23];
cz q[16], q[18];
cz q[16], q[10];
cz q[16], q[3];
cx q[43], q[16];
cx q[11], q[48];
cz q[48], q[72];
cz q[48], q[69];
cz q[48], q[64];
cz q[48], q[63];
cz q[48], q[57];
cz q[48], q[55];
cz q[48], q[53];
cz q[48], q[49];
cz q[48], q[47];
cz q[48], q[46];
cz q[48], q[44];
cz q[48], q[43];
cz q[48], q[42];
cz q[48], q[40];
cz q[48], q[34];
cz q[48], q[32];
cz q[48], q[31];
cz q[48], q[29];
cz q[48], q[28];
cz q[48], q[22];
cz q[48], q[16];
cz q[48], q[3];
cx q[11], q[48];
rz(1.75*pi) q[73];
rz(0.5*pi) q[72];
rz(1.0*pi) q[71];
rz(1.5*pi) q[70];
h q[70];
rz(1.0*pi) q[69];
rz(1.0*pi) q[68];
h q[68];
rz(1.0*pi) q[67];
rz(0.5*pi) q[66];
rz(1.0*pi) q[65];
h q[65];
rz(2.356294490192345) q[64];
rz(1.25*pi) q[63];
h q[63];
h q[62];
rz(1.0*pi) q[61];
h q[61];
rz(1.25*pi) q[60];
h q[60];
rz(1.0*pi) q[59];
h q[59];
rz(1.5*pi) q[57];
h q[57];
rz(0.25*pi) q[56];
h q[56];
rz(1.0*pi) q[54];
rz(1.0*pi) q[53];
h q[53];
rz(1.5*pi) q[52];
h q[50];
rz(1.5*pi) q[49];
h q[49];
rz(1.5*pi) q[48];
rz(1.5*pi) q[47];
rz(0.75*pi) q[46];
h q[45];
rz(0.25*pi) q[44];
rz(0.75*pi) q[43];
rz(1.5*pi) q[41];
rz(0.5*pi) q[40];
h q[40];
rz(1.5*pi) q[39];
h q[38];
rz(1.5*pi) q[37];
rz(1.0*pi) q[36];
h q[36];
rz(1.0*pi) q[35];
rz(1.5*pi) q[34];
h q[34];
rz(1.0*pi) q[33];
rz(1.5*pi) q[32];
h q[32];
rz(0.5*pi) q[31];
h q[31];
rz(0.25*pi) q[30];
rz(0.5*pi) q[29];
rz(1.5*pi) q[28];
h q[27];
rz(0.5*pi) q[26];
rz(0.75*pi) q[23];
rz(0.5*pi) q[22];
h q[22];
rz(1.0*pi) q[20];
rz(0.5*pi) q[19];
h q[19];
rz(1.75*pi) q[18];
h q[18];
rz(0.5*pi) q[17];
rz(1.0*pi) q[16];
rz(0.5*pi) q[14];
h q[14];
rz(1.0*pi) q[12];
h q[11];
rz(1.0*pi) q[10];
h q[9];
rz(1.5*pi) q[8];
h q[7];
h q[6];
rz(0.5*pi) q[5];
h q[5];
rz(0.25*pi) q[3];
rz(1.0*pi) q[2];
rz(0.5*pi) q[1];
h q[1];
rz(0.75*pi) q[0];
