OPENQASM 2.0;
include "qelib1.inc";
qreg q[70];
h q[41];
rx(0.5*pi) q[58];
cx q[41], q[58];
rz(0.25*pi) q[58];
cx q[41], q[58];
rx(-0.5*pi) q[58];
h q[41];
rx(0.5*pi) q[11];
rx(0.5*pi) q[48];
cx q[11], q[67];
cx q[48], q[67];
cx q[50], q[67];
rz(1.25*pi) q[67];
cx q[50], q[67];
cx q[48], q[67];
cx q[11], q[67];
rx(-0.5*pi) q[48];
rx(-0.5*pi) q[11];
h q[4];
h q[53];
cx q[4], q[53];
rz(0.25*pi) q[53];
cx q[4], q[53];
h q[53];
h q[4];
rx(0.5*pi) q[6];
rx(0.5*pi) q[15];
h q[53];
cx q[6], q[53];
cx q[15], q[53];
cx q[20], q[53];
rz(1.75*pi) q[53];
cx q[20], q[53];
cx q[15], q[53];
cx q[6], q[53];
h q[53];
rx(-0.5*pi) q[15];
rx(-0.5*pi) q[6];
rx(0.5*pi) q[22];
cx q[22], q[62];
rz(1.25*pi) q[62];
cx q[22], q[62];
rx(-0.5*pi) q[22];
rx(0.5*pi) q[15];
cx q[15], q[22];
rz(0.25*pi) q[22];
cx q[15], q[22];
rx(-0.5*pi) q[15];
rx(0.5*pi) q[27];
h q[47];
cx q[27], q[47];
cx q[33], q[47];
rz(0.75*pi) q[47];
cx q[33], q[47];
cx q[27], q[47];
h q[47];
rx(-0.5*pi) q[27];
h q[23];
h q[63];
cx q[23], q[63];
cx q[52], q[63];
cx q[55], q[63];
rz(1.75*pi) q[63];
cx q[55], q[63];
cx q[52], q[63];
cx q[23], q[63];
h q[63];
h q[23];
cx q[31], q[66];
cx q[44], q[66];
cx q[62], q[66];
rz(1.75*pi) q[66];
cx q[62], q[66];
cx q[44], q[66];
cx q[31], q[66];
h q[61];
cx q[20], q[61];
rz(1.75*pi) q[61];
cx q[20], q[61];
h q[61];
rx(0.5*pi) q[11];
rx(0.5*pi) q[33];
cx q[11], q[33];
rz(1.25*pi) q[33];
cx q[11], q[33];
rx(-0.5*pi) q[33];
rx(-0.5*pi) q[11];
h q[27];
rx(0.5*pi) q[46];
h q[49];
rx(0.5*pi) q[57];
cx q[27], q[57];
cx q[46], q[57];
cx q[49], q[57];
rz(0.75*pi) q[57];
cx q[49], q[57];
cx q[46], q[57];
cx q[27], q[57];
rx(-0.5*pi) q[57];
h q[49];
rx(-0.5*pi) q[46];
h q[27];
h q[23];
h q[27];
rx(0.5*pi) q[40];
cx q[23], q[40];
cx q[27], q[40];
rz(0.25*pi) q[40];
cx q[27], q[40];
cx q[23], q[40];
rx(-0.5*pi) q[40];
h q[27];
h q[23];
h q[44];
rx(0.5*pi) q[48];
h q[67];
cx q[44], q[67];
cx q[48], q[67];
rz(1.75*pi) q[67];
cx q[48], q[67];
cx q[44], q[67];
h q[67];
rx(-0.5*pi) q[48];
h q[44];
rx(0.5*pi) q[15];
h q[47];
cx q[2], q[47];
cx q[12], q[47];
cx q[15], q[47];
rz(0.75*pi) q[47];
cx q[15], q[47];
cx q[12], q[47];
cx q[2], q[47];
h q[47];
rx(-0.5*pi) q[15];
h q[14];
h q[17];
rx(0.5*pi) q[18];
cx q[14], q[18];
cx q[17], q[18];
rz(0.25*pi) q[18];
cx q[17], q[18];
cx q[14], q[18];
rx(-0.5*pi) q[18];
h q[17];
h q[14];
rx(0.5*pi) q[46];
rx(0.5*pi) q[60];
cx q[46], q[60];
cx q[58], q[60];
rz(0.75*pi) q[60];
cx q[58], q[60];
cx q[46], q[60];
rx(-0.5*pi) q[60];
rx(-0.5*pi) q[46];
rx(0.5*pi) q[37];
rx(0.5*pi) q[68];
cx q[30], q[68];
cx q[37], q[68];
rz(0.25*pi) q[68];
cx q[37], q[68];
cx q[30], q[68];
rx(-0.5*pi) q[68];
rx(-0.5*pi) q[37];
h q[0];
rx(0.5*pi) q[39];
cx q[0], q[39];
rz(1.25*pi) q[39];
cx q[0], q[39];
rx(-0.5*pi) q[39];
h q[0];
rx(0.5*pi) q[5];
h q[30];
cx q[5], q[66];
cx q[25], q[66];
cx q[30], q[66];
rz(1.75*pi) q[66];
cx q[30], q[66];
cx q[25], q[66];
cx q[5], q[66];
h q[30];
rx(-0.5*pi) q[5];
h q[29];
h q[31];
h q[33];
rx(0.5*pi) q[57];
cx q[29], q[57];
cx q[31], q[57];
cx q[33], q[57];
rz(0.75*pi) q[57];
cx q[33], q[57];
cx q[31], q[57];
cx q[29], q[57];
rx(-0.5*pi) q[57];
h q[33];
h q[31];
h q[29];
rx(0.5*pi) q[27];
rx(0.5*pi) q[40];
cx q[27], q[40];
rz(1.75*pi) q[40];
cx q[27], q[40];
rx(-0.5*pi) q[40];
rx(-0.5*pi) q[27];
rx(0.5*pi) q[11];
h q[44];
cx q[11], q[44];
rz(0.75*pi) q[44];
cx q[11], q[44];
h q[44];
rx(-0.5*pi) q[11];
rx(0.5*pi) q[8];
rx(0.5*pi) q[38];
rx(0.5*pi) q[54];
rx(0.5*pi) q[66];
cx q[8], q[66];
cx q[38], q[66];
cx q[54], q[66];
rz(1.75*pi) q[66];
cx q[54], q[66];
cx q[38], q[66];
cx q[8], q[66];
rx(-0.5*pi) q[66];
rx(-0.5*pi) q[54];
rx(-0.5*pi) q[38];
rx(-0.5*pi) q[8];
rx(0.5*pi) q[0];
h q[11];
h q[44];
cx q[0], q[44];
cx q[11], q[44];
cx q[43], q[44];
rz(0.75*pi) q[44];
cx q[43], q[44];
cx q[11], q[44];
cx q[0], q[44];
h q[44];
h q[11];
rx(-0.5*pi) q[0];
h q[15];
h q[34];
rx(0.5*pi) q[52];
cx q[15], q[52];
cx q[34], q[52];
cx q[35], q[52];
rz(1.75*pi) q[52];
cx q[35], q[52];
cx q[34], q[52];
cx q[15], q[52];
rx(-0.5*pi) q[52];
h q[34];
h q[15];
h q[3];
rx(0.5*pi) q[10];
rx(0.5*pi) q[17];
cx q[3], q[17];
cx q[10], q[17];
rz(0.25*pi) q[17];
cx q[10], q[17];
cx q[3], q[17];
rx(-0.5*pi) q[17];
rx(-0.5*pi) q[10];
h q[3];
h q[3];
h q[9];
h q[15];
cx q[3], q[15];
cx q[9], q[15];
rz(1.25*pi) q[15];
cx q[9], q[15];
cx q[3], q[15];
h q[15];
h q[9];
h q[3];
h q[67];
cx q[41], q[67];
rz(0.25*pi) q[67];
cx q[41], q[67];
h q[67];
h q[13];
rx(0.5*pi) q[46];
rx(0.5*pi) q[47];
cx q[13], q[69];
cx q[46], q[69];
cx q[47], q[69];
rz(1.25*pi) q[69];
cx q[47], q[69];
cx q[46], q[69];
cx q[13], q[69];
rx(-0.5*pi) q[47];
rx(-0.5*pi) q[46];
h q[13];
rx(0.5*pi) q[36];
rx(0.5*pi) q[58];
cx q[30], q[58];
cx q[33], q[58];
cx q[36], q[58];
rz(0.25*pi) q[58];
cx q[36], q[58];
cx q[33], q[58];
cx q[30], q[58];
rx(-0.5*pi) q[58];
rx(-0.5*pi) q[36];
h q[22];
h q[31];
h q[37];
cx q[4], q[37];
cx q[22], q[37];
cx q[31], q[37];
rz(0.25*pi) q[37];
cx q[31], q[37];
cx q[22], q[37];
cx q[4], q[37];
h q[37];
h q[31];
h q[22];
rx(0.5*pi) q[33];
cx q[7], q[33];
rz(0.75*pi) q[33];
cx q[7], q[33];
rx(-0.5*pi) q[33];
rx(0.5*pi) q[28];
rx(0.5*pi) q[43];
cx q[28], q[55];
cx q[43], q[55];
rz(0.75*pi) q[55];
cx q[43], q[55];
cx q[28], q[55];
rx(-0.5*pi) q[43];
rx(-0.5*pi) q[28];
rx(0.5*pi) q[0];
rx(0.5*pi) q[43];
h q[54];
cx q[0], q[54];
cx q[12], q[54];
cx q[43], q[54];
rz(1.25*pi) q[54];
cx q[43], q[54];
cx q[12], q[54];
cx q[0], q[54];
h q[54];
rx(-0.5*pi) q[43];
rx(-0.5*pi) q[0];
rx(0.5*pi) q[56];
h q[66];
cx q[1], q[66];
cx q[56], q[66];
cx q[59], q[66];
rz(0.75*pi) q[66];
cx q[59], q[66];
cx q[56], q[66];
cx q[1], q[66];
h q[66];
rx(-0.5*pi) q[56];
rx(0.5*pi) q[6];
cx q[6], q[61];
cx q[51], q[61];
rz(0.75*pi) q[61];
cx q[51], q[61];
cx q[6], q[61];
rx(-0.5*pi) q[6];
h q[7];
rx(0.5*pi) q[51];
cx q[0], q[51];
cx q[7], q[51];
rz(0.75*pi) q[51];
cx q[7], q[51];
cx q[0], q[51];
rx(-0.5*pi) q[51];
h q[7];
rx(0.5*pi) q[58];
cx q[32], q[58];
cx q[45], q[58];
cx q[48], q[58];
rz(1.25*pi) q[58];
cx q[48], q[58];
cx q[45], q[58];
cx q[32], q[58];
rx(-0.5*pi) q[58];
h q[3];
h q[49];
cx q[3], q[49];
rz(1.75*pi) q[49];
cx q[3], q[49];
h q[49];
h q[3];
rx(0.5*pi) q[24];
rx(0.5*pi) q[27];
cx q[11], q[27];
cx q[24], q[27];
rz(1.25*pi) q[27];
cx q[24], q[27];
cx q[11], q[27];
rx(-0.5*pi) q[27];
rx(-0.5*pi) q[24];
h q[9];
h q[26];
cx q[9], q[26];
rz(0.25*pi) q[26];
cx q[9], q[26];
h q[26];
h q[9];
cx q[36], q[65];
rz(1.25*pi) q[65];
cx q[36], q[65];
h q[34];
rx(0.5*pi) q[41];
rx(0.5*pi) q[53];
cx q[34], q[53];
cx q[41], q[53];
rz(1.25*pi) q[53];
cx q[41], q[53];
cx q[34], q[53];
rx(-0.5*pi) q[53];
rx(-0.5*pi) q[41];
h q[34];
rx(0.5*pi) q[8];
rx(0.5*pi) q[26];
rx(0.5*pi) q[28];
h q[39];
cx q[8], q[39];
cx q[26], q[39];
cx q[28], q[39];
rz(1.25*pi) q[39];
cx q[28], q[39];
cx q[26], q[39];
cx q[8], q[39];
h q[39];
rx(-0.5*pi) q[28];
rx(-0.5*pi) q[26];
rx(-0.5*pi) q[8];
h q[11];
h q[29];
cx q[11], q[29];
rz(0.25*pi) q[29];
cx q[11], q[29];
h q[29];
h q[11];
rx(0.5*pi) q[4];
rx(0.5*pi) q[31];
cx q[4], q[31];
rz(0.25*pi) q[31];
cx q[4], q[31];
rx(-0.5*pi) q[31];
rx(-0.5*pi) q[4];
h q[38];
cx q[38], q[40];
rz(0.25*pi) q[40];
cx q[38], q[40];
h q[38];
h q[30];
rx(0.5*pi) q[55];
cx q[20], q[55];
cx q[30], q[55];
cx q[33], q[55];
rz(0.75*pi) q[55];
cx q[33], q[55];
cx q[30], q[55];
cx q[20], q[55];
rx(-0.5*pi) q[55];
h q[30];
h q[13];
rx(0.5*pi) q[30];
cx q[13], q[30];
rz(1.25*pi) q[30];
cx q[13], q[30];
rx(-0.5*pi) q[30];
h q[13];
rx(0.5*pi) q[16];
h q[49];
rx(0.5*pi) q[66];
cx q[16], q[66];
cx q[49], q[66];
rz(1.25*pi) q[66];
cx q[49], q[66];
cx q[16], q[66];
rx(-0.5*pi) q[66];
h q[49];
rx(-0.5*pi) q[16];
h q[63];
h q[66];
cx q[63], q[66];
rz(1.25*pi) q[66];
cx q[63], q[66];
h q[66];
h q[63];
h q[54];
cx q[21], q[54];
cx q[43], q[54];
rz(0.75*pi) q[54];
cx q[43], q[54];
cx q[21], q[54];
h q[54];
cx q[38], q[68];
rz(1.25*pi) q[68];
cx q[38], q[68];
h q[36];
h q[56];
cx q[36], q[56];
rz(0.75*pi) q[56];
cx q[36], q[56];
h q[56];
h q[36];
h q[10];
cx q[10], q[38];
cx q[14], q[38];
rz(1.75*pi) q[38];
cx q[14], q[38];
cx q[10], q[38];
h q[10];
rx(0.5*pi) q[49];
cx q[25], q[49];
rz(0.75*pi) q[49];
cx q[25], q[49];
rx(-0.5*pi) q[49];
cx q[3], q[40];
rz(0.75*pi) q[40];
cx q[3], q[40];
rx(0.5*pi) q[10];
h q[24];
rx(0.5*pi) q[30];
cx q[10], q[30];
cx q[24], q[30];
rz(0.25*pi) q[30];
cx q[24], q[30];
cx q[10], q[30];
rx(-0.5*pi) q[30];
h q[24];
rx(-0.5*pi) q[10];
h q[33];
rx(0.5*pi) q[37];
cx q[13], q[37];
cx q[33], q[37];
rz(1.25*pi) q[37];
cx q[33], q[37];
cx q[13], q[37];
rx(-0.5*pi) q[37];
h q[33];