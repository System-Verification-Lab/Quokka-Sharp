OPENQASM 2.0;
include "qelib1.inc";
qreg q[50];
rx(0.5*pi) q[3];
rx(0.5*pi) q[21];
cx q[3], q[22];
cx q[17], q[22];
cx q[21], q[22];
rz(1.75*pi) q[22];
cx q[21], q[22];
cx q[17], q[22];
cx q[3], q[22];
rx(-0.5*pi) q[21];
rx(-0.5*pi) q[3];
rx(0.5*pi) q[40];
cx q[7], q[40];
rz(0.25*pi) q[40];
cx q[7], q[40];
rx(-0.5*pi) q[40];
h q[2];
h q[16];
cx q[2], q[28];
cx q[16], q[28];
cx q[18], q[28];
rz(0.75*pi) q[28];
cx q[18], q[28];
cx q[16], q[28];
cx q[2], q[28];
h q[16];
h q[2];
h q[21];
rx(0.5*pi) q[32];
cx q[21], q[32];
rz(1.75*pi) q[32];
cx q[21], q[32];
rx(-0.5*pi) q[32];
h q[21];
h q[33];
h q[46];
cx q[33], q[46];
cx q[43], q[46];
rz(0.25*pi) q[46];
cx q[43], q[46];
cx q[33], q[46];
h q[46];
h q[33];
rx(0.5*pi) q[3];
h q[19];
h q[26];
cx q[3], q[28];
cx q[19], q[28];
cx q[26], q[28];
rz(0.75*pi) q[28];
cx q[26], q[28];
cx q[19], q[28];
cx q[3], q[28];
h q[26];
h q[19];
rx(-0.5*pi) q[3];
rx(0.5*pi) q[44];
cx q[2], q[44];
cx q[39], q[44];
rz(1.25*pi) q[44];
cx q[39], q[44];
cx q[2], q[44];
rx(-0.5*pi) q[44];
h q[4];
rx(0.5*pi) q[10];
rx(0.5*pi) q[48];
cx q[4], q[48];
cx q[10], q[48];
cx q[18], q[48];
rz(0.25*pi) q[48];
cx q[18], q[48];
cx q[10], q[48];
cx q[4], q[48];
rx(-0.5*pi) q[48];
rx(-0.5*pi) q[10];
h q[4];
h q[39];
h q[43];
cx q[35], q[43];
cx q[39], q[43];
rz(0.75*pi) q[43];
cx q[39], q[43];
cx q[35], q[43];
h q[43];
h q[39];
rx(0.5*pi) q[20];
rx(0.5*pi) q[33];
rx(0.5*pi) q[36];
cx q[20], q[36];
cx q[21], q[36];
cx q[33], q[36];
rz(0.25*pi) q[36];
cx q[33], q[36];
cx q[21], q[36];
cx q[20], q[36];
rx(-0.5*pi) q[36];
rx(-0.5*pi) q[33];
rx(-0.5*pi) q[20];
h q[3];
rx(0.5*pi) q[4];
h q[49];
cx q[3], q[49];
cx q[4], q[49];
cx q[18], q[49];
rz(1.75*pi) q[49];
cx q[18], q[49];
cx q[4], q[49];
cx q[3], q[49];
h q[49];
rx(-0.5*pi) q[4];
h q[3];
h q[5];
rx(0.5*pi) q[8];
cx q[5], q[8];
rz(0.75*pi) q[8];
cx q[5], q[8];
rx(-0.5*pi) q[8];
h q[5];
h q[48];
cx q[9], q[48];
rz(0.25*pi) q[48];
cx q[9], q[48];
h q[48];
h q[3];
h q[5];
h q[21];
rx(0.5*pi) q[27];
cx q[3], q[27];
cx q[5], q[27];
cx q[21], q[27];
rz(0.75*pi) q[27];
cx q[21], q[27];
cx q[5], q[27];
cx q[3], q[27];
rx(-0.5*pi) q[27];
h q[21];
h q[5];
h q[3];
rx(0.5*pi) q[3];
rx(0.5*pi) q[6];
cx q[3], q[29];
cx q[6], q[29];
rz(1.75*pi) q[29];
cx q[6], q[29];
cx q[3], q[29];
rx(-0.5*pi) q[6];
rx(-0.5*pi) q[3];
h q[13];
rx(0.5*pi) q[41];
cx q[2], q[41];
cx q[13], q[41];
rz(0.75*pi) q[41];
cx q[13], q[41];
cx q[2], q[41];
rx(-0.5*pi) q[41];
h q[13];
rx(0.5*pi) q[28];
rx(0.5*pi) q[42];
cx q[26], q[42];
cx q[28], q[42];
rz(1.25*pi) q[42];
cx q[28], q[42];
cx q[26], q[42];
rx(-0.5*pi) q[42];
rx(-0.5*pi) q[28];
h q[4];
h q[33];
cx q[4], q[33];
rz(1.75*pi) q[33];
cx q[4], q[33];
h q[33];
h q[4];
h q[9];
rx(0.5*pi) q[29];
cx q[9], q[29];
rz(1.25*pi) q[29];
cx q[9], q[29];
rx(-0.5*pi) q[29];
h q[9];
h q[32];
h q[35];
cx q[32], q[46];
cx q[35], q[46];
rz(0.75*pi) q[46];
cx q[35], q[46];
cx q[32], q[46];
h q[35];
h q[32];
rx(0.5*pi) q[8];
rx(0.5*pi) q[37];
h q[39];
cx q[8], q[39];
cx q[10], q[39];
cx q[37], q[39];
rz(0.75*pi) q[39];
cx q[37], q[39];
cx q[10], q[39];
cx q[8], q[39];
h q[39];
rx(-0.5*pi) q[37];
rx(-0.5*pi) q[8];
rx(0.5*pi) q[39];
cx q[9], q[43];
cx q[39], q[43];
rz(0.25*pi) q[43];
cx q[39], q[43];
cx q[9], q[43];
rx(-0.5*pi) q[39];
rx(0.5*pi) q[6];
rx(0.5*pi) q[7];
h q[17];
cx q[4], q[17];
cx q[6], q[17];
cx q[7], q[17];
rz(1.75*pi) q[17];
cx q[7], q[17];
cx q[6], q[17];
cx q[4], q[17];
h q[17];
rx(-0.5*pi) q[7];
rx(-0.5*pi) q[6];
h q[24];
rx(0.5*pi) q[40];
cx q[21], q[49];
cx q[24], q[49];
cx q[40], q[49];
rz(0.25*pi) q[49];
cx q[40], q[49];
cx q[24], q[49];
cx q[21], q[49];
rx(-0.5*pi) q[40];
h q[24];
rx(0.5*pi) q[3];
cx q[3], q[23];
rz(0.75*pi) q[23];
cx q[3], q[23];
rx(-0.5*pi) q[3];
rx(0.5*pi) q[14];
cx q[14], q[18];
rz(0.25*pi) q[18];
cx q[14], q[18];
rx(-0.5*pi) q[14];
rx(0.5*pi) q[30];
cx q[30], q[45];
rz(0.25*pi) q[45];
cx q[30], q[45];
rx(-0.5*pi) q[30];
rx(0.5*pi) q[30];
rx(0.5*pi) q[42];
h q[44];
cx q[0], q[44];
cx q[30], q[44];
cx q[42], q[44];
rz(1.75*pi) q[44];
cx q[42], q[44];
cx q[30], q[44];
cx q[0], q[44];
h q[44];
rx(-0.5*pi) q[42];
rx(-0.5*pi) q[30];
rx(0.5*pi) q[27];
rx(0.5*pi) q[28];
h q[46];
cx q[27], q[46];
cx q[28], q[46];
cx q[34], q[46];
rz(0.25*pi) q[46];
cx q[34], q[46];
cx q[28], q[46];
cx q[27], q[46];
h q[46];
rx(-0.5*pi) q[28];
rx(-0.5*pi) q[27];
rx(0.5*pi) q[6];
h q[20];
h q[25];
h q[43];
cx q[6], q[43];
cx q[20], q[43];
cx q[25], q[43];
rz(0.25*pi) q[43];
cx q[25], q[43];
cx q[20], q[43];
cx q[6], q[43];
h q[43];
h q[25];
h q[20];
rx(-0.5*pi) q[6];