OPENQASM 2.0;
include "qelib1.inc";
qreg q[30];
rx(0.5*pi) q[21];
rx(0.5*pi) q[23];
cx q[21], q[23];
rz(0.75*pi) q[23];
cx q[21], q[23];
rx(-0.5*pi) q[23];
rx(-0.5*pi) q[21];
h q[24];
h q[28];
cx q[12], q[28];
cx q[24], q[28];
rz(0.75*pi) q[28];
cx q[24], q[28];
cx q[12], q[28];
h q[28];
h q[24];
h q[22];
h q[28];
cx q[16], q[28];
cx q[22], q[28];
cx q[25], q[28];
rz(1.75*pi) q[28];
cx q[25], q[28];
cx q[22], q[28];
cx q[16], q[28];
h q[28];
h q[22];
rx(0.5*pi) q[2];
h q[15];
cx q[2], q[15];
rz(0.75*pi) q[15];
cx q[2], q[15];
h q[15];
rx(-0.5*pi) q[2];
h q[3];
h q[11];
rx(0.5*pi) q[20];
cx q[3], q[20];
cx q[7], q[20];
cx q[11], q[20];
rz(0.25*pi) q[20];
cx q[11], q[20];
cx q[7], q[20];
cx q[3], q[20];
rx(-0.5*pi) q[20];
h q[11];
h q[3];
h q[7];
h q[18];
h q[28];
rx(0.5*pi) q[29];
cx q[7], q[29];
cx q[18], q[29];
cx q[28], q[29];
rz(0.25*pi) q[29];
cx q[28], q[29];
cx q[18], q[29];
cx q[7], q[29];
rx(-0.5*pi) q[29];
h q[28];
h q[18];
h q[7];
rx(0.5*pi) q[26];
cx q[8], q[26];
rz(0.75*pi) q[26];
cx q[8], q[26];
rx(-0.5*pi) q[26];
rx(0.5*pi) q[13];
h q[26];
h q[29];
cx q[12], q[29];
cx q[13], q[29];
cx q[26], q[29];
rz(1.25*pi) q[29];
cx q[26], q[29];
cx q[13], q[29];
cx q[12], q[29];
h q[29];
h q[26];
rx(-0.5*pi) q[13];
rx(0.5*pi) q[23];
rx(0.5*pi) q[24];
cx q[23], q[24];
rz(0.75*pi) q[24];
cx q[23], q[24];
rx(-0.5*pi) q[24];
rx(-0.5*pi) q[23];
h q[15];
cx q[5], q[23];
cx q[15], q[23];
cx q[16], q[23];
rz(0.75*pi) q[23];
cx q[16], q[23];
cx q[15], q[23];
cx q[5], q[23];
h q[15];
h q[13];
cx q[11], q[24];
cx q[13], q[24];
cx q[21], q[24];
rz(0.25*pi) q[24];
cx q[21], q[24];
cx q[13], q[24];
cx q[11], q[24];
h q[13];
h q[2];
cx q[2], q[24];
rz(1.25*pi) q[24];
cx q[2], q[24];
h q[2];
h q[5];
h q[9];
rx(0.5*pi) q[16];
rx(0.5*pi) q[28];
cx q[5], q[28];
cx q[9], q[28];
cx q[16], q[28];
rz(1.75*pi) q[28];
cx q[16], q[28];
cx q[9], q[28];
cx q[5], q[28];
rx(-0.5*pi) q[28];
rx(-0.5*pi) q[16];
h q[9];
h q[5];
h q[0];
h q[18];
cx q[0], q[21];
cx q[15], q[21];
cx q[18], q[21];
rz(1.75*pi) q[21];
cx q[18], q[21];
cx q[15], q[21];
cx q[0], q[21];
h q[18];
h q[0];
rx(0.5*pi) q[9];
h q[13];
rx(0.5*pi) q[17];
cx q[9], q[17];
cx q[13], q[17];
rz(0.75*pi) q[17];
cx q[13], q[17];
cx q[9], q[17];
rx(-0.5*pi) q[17];
h q[13];
rx(-0.5*pi) q[9];
rx(0.5*pi) q[9];
rx(0.5*pi) q[16];
h q[23];
cx q[9], q[24];
cx q[16], q[24];
cx q[23], q[24];
rz(1.25*pi) q[24];
cx q[23], q[24];
cx q[16], q[24];
cx q[9], q[24];
h q[23];
rx(-0.5*pi) q[16];
rx(-0.5*pi) q[9];
h q[11];
rx(0.5*pi) q[24];
cx q[11], q[24];
cx q[12], q[24];
cx q[18], q[24];
rz(0.75*pi) q[24];
cx q[18], q[24];
cx q[12], q[24];
cx q[11], q[24];
rx(-0.5*pi) q[24];
h q[11];
h q[6];
rx(0.5*pi) q[7];
cx q[6], q[7];
rz(1.25*pi) q[7];
cx q[6], q[7];
rx(-0.5*pi) q[7];
h q[6];
rx(0.5*pi) q[20];
cx q[20], q[28];
rz(0.25*pi) q[28];
cx q[20], q[28];
rx(-0.5*pi) q[20];
rx(0.5*pi) q[18];
cx q[16], q[18];
rz(1.75*pi) q[18];
cx q[16], q[18];
rx(-0.5*pi) q[18];
h q[26];
cx q[17], q[26];
rz(0.25*pi) q[26];
cx q[17], q[26];
h q[26];
h q[3];
h q[12];
rx(0.5*pi) q[15];
rx(0.5*pi) q[24];
cx q[3], q[24];
cx q[12], q[24];
cx q[15], q[24];
rz(1.75*pi) q[24];
cx q[15], q[24];
cx q[12], q[24];
cx q[3], q[24];
rx(-0.5*pi) q[24];
rx(-0.5*pi) q[15];
h q[12];
h q[3];
h q[11];
h q[28];
cx q[11], q[28];
cx q[21], q[28];
rz(0.75*pi) q[28];
cx q[21], q[28];
cx q[11], q[28];
h q[28];
h q[11];
rx(0.5*pi) q[1];
cx q[1], q[21];
cx q[2], q[21];
cx q[8], q[21];
rz(1.25*pi) q[21];
cx q[8], q[21];
cx q[2], q[21];
cx q[1], q[21];
rx(-0.5*pi) q[1];
rx(0.5*pi) q[12];
rx(0.5*pi) q[19];
h q[28];
cx q[12], q[28];
cx q[19], q[28];
cx q[22], q[28];
rz(1.25*pi) q[28];
cx q[22], q[28];
cx q[19], q[28];
cx q[12], q[28];
h q[28];
rx(-0.5*pi) q[19];
rx(-0.5*pi) q[12];
rx(0.5*pi) q[13];
h q[22];
cx q[10], q[22];
cx q[13], q[22];
rz(1.25*pi) q[22];
cx q[13], q[22];
cx q[10], q[22];
h q[22];
rx(-0.5*pi) q[13];
h q[14];
cx q[5], q[25];
cx q[14], q[25];
rz(0.75*pi) q[25];
cx q[14], q[25];
cx q[5], q[25];
h q[14];
h q[14];
h q[28];
cx q[5], q[28];
cx q[14], q[28];
rz(1.75*pi) q[28];
cx q[14], q[28];
cx q[5], q[28];
h q[28];
h q[14];
rx(0.5*pi) q[4];
rx(0.5*pi) q[26];
cx q[4], q[26];
cx q[18], q[26];
rz(0.75*pi) q[26];
cx q[18], q[26];
cx q[4], q[26];
rx(-0.5*pi) q[26];
rx(-0.5*pi) q[4];
h q[14];
h q[17];
cx q[6], q[17];
cx q[7], q[17];
cx q[14], q[17];
rz(1.75*pi) q[17];
cx q[14], q[17];
cx q[7], q[17];
cx q[6], q[17];
h q[17];
h q[14];