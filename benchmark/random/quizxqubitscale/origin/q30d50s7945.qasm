OPENQASM 2.0;
include "qelib1.inc";
qreg q[30];
h q[4];
rx(0.5*pi) q[12];
cx q[2], q[12];
cx q[4], q[12];
rz(0.75*pi) q[12];
cx q[4], q[12];
cx q[2], q[12];
rx(-0.5*pi) q[12];
h q[4];
h q[15];
cx q[14], q[15];
rz(0.25*pi) q[15];
cx q[14], q[15];
h q[15];
rx(0.5*pi) q[1];
h q[10];
cx q[1], q[23];
cx q[10], q[23];
rz(1.75*pi) q[23];
cx q[10], q[23];
cx q[1], q[23];
h q[10];
rx(-0.5*pi) q[1];
rx(0.5*pi) q[16];
rx(0.5*pi) q[24];
cx q[9], q[24];
cx q[16], q[24];
rz(1.75*pi) q[24];
cx q[16], q[24];
cx q[9], q[24];
rx(-0.5*pi) q[24];
rx(-0.5*pi) q[16];
h q[15];
rx(0.5*pi) q[23];
cx q[2], q[23];
cx q[15], q[23];
rz(1.75*pi) q[23];
cx q[15], q[23];
cx q[2], q[23];
rx(-0.5*pi) q[23];
h q[15];
h q[4];
cx q[1], q[4];
rz(0.75*pi) q[4];
cx q[1], q[4];
h q[4];
h q[5];
cx q[5], q[26];
cx q[9], q[26];
rz(1.25*pi) q[26];
cx q[9], q[26];
cx q[5], q[26];
h q[5];
cx q[0], q[26];
rz(1.75*pi) q[26];
cx q[0], q[26];
h q[7];
rx(0.5*pi) q[22];
cx q[7], q[22];
rz(1.75*pi) q[22];
cx q[7], q[22];
rx(-0.5*pi) q[22];
h q[7];
rx(0.5*pi) q[0];
rx(0.5*pi) q[17];
cx q[0], q[17];
rz(1.25*pi) q[17];
cx q[0], q[17];
rx(-0.5*pi) q[17];
rx(-0.5*pi) q[0];
h q[7];
h q[27];
cx q[7], q[27];
rz(1.75*pi) q[27];
cx q[7], q[27];
h q[27];
h q[7];
h q[18];
h q[25];
cx q[13], q[25];
cx q[18], q[25];
rz(1.25*pi) q[25];
cx q[18], q[25];
cx q[13], q[25];
h q[25];
h q[18];
cx q[7], q[18];
rz(1.25*pi) q[18];
cx q[7], q[18];
h q[14];
rx(0.5*pi) q[23];
h q[25];
rx(0.5*pi) q[29];
cx q[14], q[29];
cx q[23], q[29];
cx q[25], q[29];
rz(1.25*pi) q[29];
cx q[25], q[29];
cx q[23], q[29];
cx q[14], q[29];
rx(-0.5*pi) q[29];
h q[25];
rx(-0.5*pi) q[23];
h q[14];
rx(0.5*pi) q[2];
h q[29];
cx q[2], q[29];
rz(0.75*pi) q[29];
cx q[2], q[29];
h q[29];
rx(-0.5*pi) q[2];
rx(0.5*pi) q[3];
h q[7];
cx q[3], q[7];
rz(0.25*pi) q[7];
cx q[3], q[7];
h q[7];
rx(-0.5*pi) q[3];
h q[15];
h q[22];
cx q[5], q[22];
cx q[8], q[22];
cx q[15], q[22];
rz(0.25*pi) q[22];
cx q[15], q[22];
cx q[8], q[22];
cx q[5], q[22];
h q[22];
h q[15];
h q[2];
rx(0.5*pi) q[17];
rx(0.5*pi) q[24];
cx q[2], q[24];
cx q[17], q[24];
rz(0.75*pi) q[24];
cx q[17], q[24];
cx q[2], q[24];
rx(-0.5*pi) q[24];
rx(-0.5*pi) q[17];
h q[2];
h q[2];
rx(0.5*pi) q[3];
h q[15];
rx(0.5*pi) q[29];
cx q[2], q[29];
cx q[3], q[29];
cx q[15], q[29];
rz(0.25*pi) q[29];
cx q[15], q[29];
cx q[3], q[29];
cx q[2], q[29];
rx(-0.5*pi) q[29];
h q[15];
rx(-0.5*pi) q[3];
h q[2];
h q[11];
cx q[11], q[24];
cx q[15], q[24];
rz(0.75*pi) q[24];
cx q[15], q[24];
cx q[11], q[24];
h q[11];
h q[22];
cx q[3], q[22];
cx q[8], q[22];
cx q[18], q[22];
rz(0.25*pi) q[22];
cx q[18], q[22];
cx q[8], q[22];
cx q[3], q[22];
h q[22];
rx(0.5*pi) q[5];
h q[29];
cx q[5], q[29];
rz(0.75*pi) q[29];
cx q[5], q[29];
h q[29];
rx(-0.5*pi) q[5];
h q[0];
h q[25];
cx q[0], q[29];
cx q[25], q[29];
rz(0.75*pi) q[29];
cx q[25], q[29];
cx q[0], q[29];
h q[25];
h q[0];
h q[23];
h q[28];
cx q[2], q[28];
cx q[23], q[28];
rz(0.75*pi) q[28];
cx q[23], q[28];
cx q[2], q[28];
h q[28];
h q[23];
rx(0.5*pi) q[1];
cx q[1], q[19];
rz(1.25*pi) q[19];
cx q[1], q[19];
rx(-0.5*pi) q[1];
h q[11];
h q[15];
cx q[11], q[20];
cx q[15], q[20];
cx q[19], q[20];
rz(1.75*pi) q[20];
cx q[19], q[20];
cx q[15], q[20];
cx q[11], q[20];
h q[15];
h q[11];
h q[3];
cx q[3], q[12];
rz(1.25*pi) q[12];
cx q[3], q[12];
h q[3];
rx(0.5*pi) q[25];
cx q[21], q[27];
cx q[25], q[27];
rz(1.75*pi) q[27];
cx q[25], q[27];
cx q[21], q[27];
rx(-0.5*pi) q[25];
h q[8];
h q[22];
cx q[8], q[26];
cx q[22], q[26];
rz(1.75*pi) q[26];
cx q[22], q[26];
cx q[8], q[26];
h q[22];
h q[8];
h q[13];
rx(0.5*pi) q[18];
rx(0.5*pi) q[25];
cx q[12], q[25];
cx q[13], q[25];
cx q[18], q[25];
rz(0.25*pi) q[25];
cx q[18], q[25];
cx q[13], q[25];
cx q[12], q[25];
rx(-0.5*pi) q[25];
rx(-0.5*pi) q[18];
h q[13];
rx(0.5*pi) q[1];
h q[19];
cx q[0], q[19];
cx q[1], q[19];
cx q[13], q[19];
rz(0.75*pi) q[19];
cx q[13], q[19];
cx q[1], q[19];
cx q[0], q[19];
h q[19];
rx(-0.5*pi) q[1];
h q[12];
h q[14];
h q[23];
rx(0.5*pi) q[26];
cx q[12], q[26];
cx q[14], q[26];
cx q[23], q[26];
rz(1.75*pi) q[26];
cx q[23], q[26];
cx q[14], q[26];
cx q[12], q[26];
rx(-0.5*pi) q[26];
h q[23];
h q[14];
h q[12];
h q[26];
h q[29];
cx q[12], q[29];
cx q[26], q[29];
rz(1.75*pi) q[29];
cx q[26], q[29];
cx q[12], q[29];
h q[29];
h q[26];
h q[9];
h q[12];
rx(0.5*pi) q[15];
cx q[9], q[15];
cx q[12], q[15];
rz(1.25*pi) q[15];
cx q[12], q[15];
cx q[9], q[15];
rx(-0.5*pi) q[15];
h q[12];
h q[9];
h q[3];
cx q[3], q[12];
rz(1.75*pi) q[12];
cx q[3], q[12];
h q[3];
rx(0.5*pi) q[12];
rx(0.5*pi) q[19];
cx q[12], q[19];
rz(1.75*pi) q[19];
cx q[12], q[19];
rx(-0.5*pi) q[19];
rx(-0.5*pi) q[12];
rx(0.5*pi) q[11];
rx(0.5*pi) q[23];
cx q[11], q[23];
cx q[21], q[23];
cx q[22], q[23];
rz(1.75*pi) q[23];
cx q[22], q[23];
cx q[21], q[23];
cx q[11], q[23];
rx(-0.5*pi) q[23];
rx(-0.5*pi) q[11];
rx(0.5*pi) q[9];
rx(0.5*pi) q[26];
cx q[9], q[26];
cx q[15], q[26];
rz(0.25*pi) q[26];
cx q[15], q[26];
cx q[9], q[26];
rx(-0.5*pi) q[26];
rx(-0.5*pi) q[9];
rx(0.5*pi) q[14];
rx(0.5*pi) q[20];
rx(0.5*pi) q[21];
rx(0.5*pi) q[23];
cx q[14], q[23];
cx q[20], q[23];
cx q[21], q[23];
rz(0.75*pi) q[23];
cx q[21], q[23];
cx q[20], q[23];
cx q[14], q[23];
rx(-0.5*pi) q[23];
rx(-0.5*pi) q[21];
rx(-0.5*pi) q[20];
rx(-0.5*pi) q[14];
rx(0.5*pi) q[0];
h q[2];
rx(0.5*pi) q[3];
h q[10];
cx q[0], q[10];
cx q[2], q[10];
cx q[3], q[10];
rz(0.75*pi) q[10];
cx q[3], q[10];
cx q[2], q[10];
cx q[0], q[10];
h q[10];
rx(-0.5*pi) q[3];
h q[2];
rx(-0.5*pi) q[0];
rx(0.5*pi) q[17];
cx q[17], q[25];
rz(1.25*pi) q[25];
cx q[17], q[25];
rx(-0.5*pi) q[17];
h q[8];
h q[15];
cx q[7], q[15];
cx q[8], q[15];
rz(1.75*pi) q[15];
cx q[8], q[15];
cx q[7], q[15];
h q[15];
h q[8];
h q[0];
h q[15];
rx(0.5*pi) q[16];
cx q[0], q[19];
cx q[15], q[19];
cx q[16], q[19];
rz(0.25*pi) q[19];
cx q[16], q[19];
cx q[15], q[19];
cx q[0], q[19];
rx(-0.5*pi) q[16];
h q[15];
h q[0];
rx(0.5*pi) q[3];
rx(0.5*pi) q[5];
rx(0.5*pi) q[10];
cx q[3], q[10];
cx q[5], q[10];
rz(1.25*pi) q[10];
cx q[5], q[10];
cx q[3], q[10];
rx(-0.5*pi) q[10];
rx(-0.5*pi) q[5];
rx(-0.5*pi) q[3];
h q[4];
rx(0.5*pi) q[14];
h q[22];
cx q[4], q[22];
cx q[12], q[22];
cx q[14], q[22];
rz(0.75*pi) q[22];
cx q[14], q[22];
cx q[12], q[22];
cx q[4], q[22];
h q[22];
rx(-0.5*pi) q[14];
h q[4];
rx(0.5*pi) q[11];
h q[17];
cx q[11], q[17];
rz(0.75*pi) q[17];
cx q[11], q[17];
h q[17];
rx(-0.5*pi) q[11];
rx(0.5*pi) q[9];
h q[24];
cx q[9], q[24];
rz(0.25*pi) q[24];
cx q[9], q[24];
h q[24];
rx(-0.5*pi) q[9];
h q[4];
rx(0.5*pi) q[14];
h q[19];
cx q[4], q[21];
cx q[14], q[21];
cx q[19], q[21];
rz(0.25*pi) q[21];
cx q[19], q[21];
cx q[14], q[21];
cx q[4], q[21];
h q[19];
rx(-0.5*pi) q[14];
h q[4];
rx(0.5*pi) q[29];
cx q[7], q[29];
cx q[8], q[29];
cx q[23], q[29];
rz(1.25*pi) q[29];
cx q[23], q[29];
cx q[8], q[29];
cx q[7], q[29];
rx(-0.5*pi) q[29];
rx(0.5*pi) q[12];
h q[29];
cx q[2], q[29];
cx q[8], q[29];
cx q[12], q[29];
rz(0.25*pi) q[29];
cx q[12], q[29];
cx q[8], q[29];
cx q[2], q[29];
h q[29];
rx(-0.5*pi) q[12];