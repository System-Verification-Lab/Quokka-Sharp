// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[19];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(2.0) q[0];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(2.0) q[1];
cx q[0],q[1];
rz(9.172838187819544) q[1];
cx q[0],q[1];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(2.0) q[2];
cx q[0],q[2];
rz(9.172838187819544) q[2];
cx q[0],q[2];
cx q[1],q[2];
rz(9.172838187819544) q[2];
cx q[1],q[2];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(2.0) q[3];
cx q[0],q[3];
rz(9.172838187819544) q[3];
cx q[0],q[3];
cx q[1],q[3];
rz(9.172838187819544) q[3];
cx q[1],q[3];
cx q[2],q[3];
rz(9.172838187819544) q[3];
cx q[2],q[3];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(2.0) q[4];
cx q[0],q[4];
rz(9.172838187819544) q[4];
cx q[0],q[4];
cx q[1],q[4];
rz(9.172838187819544) q[4];
cx q[1],q[4];
cx q[2],q[4];
rz(9.172838187819544) q[4];
cx q[2],q[4];
cx q[3],q[4];
rz(9.172838187819544) q[4];
cx q[3],q[4];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(2.0) q[5];
cx q[0],q[5];
rz(9.172838187819544) q[5];
cx q[0],q[5];
cx q[1],q[5];
rz(9.172838187819544) q[5];
cx q[1],q[5];
cx q[2],q[5];
rz(9.172838187819544) q[5];
cx q[2],q[5];
cx q[3],q[5];
rz(9.172838187819544) q[5];
cx q[3],q[5];
cx q[4],q[5];
rz(9.172838187819544) q[5];
cx q[4],q[5];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(2.0) q[6];
cx q[0],q[6];
rz(9.172838187819544) q[6];
cx q[0],q[6];
cx q[1],q[6];
rz(9.172838187819544) q[6];
cx q[1],q[6];
cx q[2],q[6];
rz(9.172838187819544) q[6];
cx q[2],q[6];
cx q[3],q[6];
rz(9.172838187819544) q[6];
cx q[3],q[6];
cx q[4],q[6];
rz(9.172838187819544) q[6];
cx q[4],q[6];
cx q[5],q[6];
rz(9.172838187819544) q[6];
cx q[5],q[6];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(2.0) q[7];
cx q[0],q[7];
rz(9.172838187819544) q[7];
cx q[0],q[7];
cx q[1],q[7];
rz(9.172838187819544) q[7];
cx q[1],q[7];
cx q[2],q[7];
rz(9.172838187819544) q[7];
cx q[2],q[7];
cx q[3],q[7];
rz(9.172838187819544) q[7];
cx q[3],q[7];
cx q[4],q[7];
rz(9.172838187819544) q[7];
cx q[4],q[7];
cx q[5],q[7];
rz(9.172838187819544) q[7];
cx q[5],q[7];
cx q[6],q[7];
rz(9.172838187819544) q[7];
cx q[6],q[7];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(2.0) q[8];
cx q[0],q[8];
rz(9.172838187819544) q[8];
cx q[0],q[8];
cx q[1],q[8];
rz(9.172838187819544) q[8];
cx q[1],q[8];
cx q[2],q[8];
rz(9.172838187819544) q[8];
cx q[2],q[8];
cx q[3],q[8];
rz(9.172838187819544) q[8];
cx q[3],q[8];
cx q[4],q[8];
rz(9.172838187819544) q[8];
cx q[4],q[8];
cx q[5],q[8];
rz(9.172838187819544) q[8];
cx q[5],q[8];
cx q[6],q[8];
rz(9.172838187819544) q[8];
cx q[6],q[8];
cx q[7],q[8];
rz(9.172838187819544) q[8];
cx q[7],q[8];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(2.0) q[9];
cx q[0],q[9];
rz(9.172838187819544) q[9];
cx q[0],q[9];
cx q[1],q[9];
rz(9.172838187819544) q[9];
cx q[1],q[9];
cx q[2],q[9];
rz(9.172838187819544) q[9];
cx q[2],q[9];
cx q[3],q[9];
rz(9.172838187819544) q[9];
cx q[3],q[9];
cx q[4],q[9];
rz(9.172838187819544) q[9];
cx q[4],q[9];
cx q[5],q[9];
rz(9.172838187819544) q[9];
cx q[5],q[9];
cx q[6],q[9];
rz(9.172838187819544) q[9];
cx q[6],q[9];
cx q[7],q[9];
rz(9.172838187819544) q[9];
cx q[7],q[9];
cx q[8],q[9];
rz(9.172838187819544) q[9];
cx q[8],q[9];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(2.0) q[10];
cx q[0],q[10];
rz(9.172838187819544) q[10];
cx q[0],q[10];
cx q[1],q[10];
rz(9.172838187819544) q[10];
cx q[1],q[10];
cx q[2],q[10];
rz(9.172838187819544) q[10];
cx q[2],q[10];
cx q[3],q[10];
rz(9.172838187819544) q[10];
cx q[3],q[10];
cx q[4],q[10];
rz(9.172838187819544) q[10];
cx q[4],q[10];
cx q[5],q[10];
rz(9.172838187819544) q[10];
cx q[5],q[10];
cx q[6],q[10];
rz(9.172838187819544) q[10];
cx q[6],q[10];
cx q[7],q[10];
rz(9.172838187819544) q[10];
cx q[7],q[10];
cx q[8],q[10];
rz(9.172838187819544) q[10];
cx q[8],q[10];
cx q[9],q[10];
rz(9.172838187819544) q[10];
cx q[9],q[10];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(2.0) q[11];
cx q[0],q[11];
rz(9.172838187819544) q[11];
cx q[0],q[11];
cx q[1],q[11];
rz(9.172838187819544) q[11];
cx q[1],q[11];
cx q[2],q[11];
rz(9.172838187819544) q[11];
cx q[2],q[11];
cx q[3],q[11];
rz(9.172838187819544) q[11];
cx q[3],q[11];
cx q[4],q[11];
rz(9.172838187819544) q[11];
cx q[4],q[11];
cx q[5],q[11];
rz(9.172838187819544) q[11];
cx q[5],q[11];
cx q[6],q[11];
rz(9.172838187819544) q[11];
cx q[6],q[11];
cx q[7],q[11];
rz(9.172838187819544) q[11];
cx q[7],q[11];
cx q[8],q[11];
rz(9.172838187819544) q[11];
cx q[8],q[11];
cx q[9],q[11];
rz(9.172838187819544) q[11];
cx q[9],q[11];
cx q[10],q[11];
rz(9.172838187819544) q[11];
cx q[10],q[11];
rz(pi/2) q[12];
rx(0.5*pi) q[12];
rz(pi/2) q[12];
rz(2.0) q[12];
cx q[0],q[12];
rz(9.172838187819544) q[12];
cx q[0],q[12];
cx q[1],q[12];
rz(9.172838187819544) q[12];
cx q[1],q[12];
cx q[2],q[12];
rz(9.172838187819544) q[12];
cx q[2],q[12];
cx q[3],q[12];
rz(9.172838187819544) q[12];
cx q[3],q[12];
cx q[4],q[12];
rz(9.172838187819544) q[12];
cx q[4],q[12];
cx q[5],q[12];
rz(9.172838187819544) q[12];
cx q[5],q[12];
cx q[6],q[12];
rz(9.172838187819544) q[12];
cx q[6],q[12];
cx q[7],q[12];
rz(9.172838187819544) q[12];
cx q[7],q[12];
cx q[8],q[12];
rz(9.172838187819544) q[12];
cx q[8],q[12];
cx q[9],q[12];
rz(9.172838187819544) q[12];
cx q[9],q[12];
cx q[10],q[12];
rz(9.172838187819544) q[12];
cx q[10],q[12];
cx q[11],q[12];
rz(9.172838187819544) q[12];
cx q[11],q[12];
rz(pi/2) q[13];
rx(0.5*pi) q[13];
rz(pi/2) q[13];
rz(2.0) q[13];
cx q[0],q[13];
rz(9.172838187819544) q[13];
cx q[0],q[13];
cx q[1],q[13];
rz(9.172838187819544) q[13];
cx q[1],q[13];
cx q[2],q[13];
rz(9.172838187819544) q[13];
cx q[2],q[13];
cx q[3],q[13];
rz(9.172838187819544) q[13];
cx q[3],q[13];
cx q[4],q[13];
rz(9.172838187819544) q[13];
cx q[4],q[13];
cx q[5],q[13];
rz(9.172838187819544) q[13];
cx q[5],q[13];
cx q[6],q[13];
rz(9.172838187819544) q[13];
cx q[6],q[13];
cx q[7],q[13];
rz(9.172838187819544) q[13];
cx q[7],q[13];
cx q[8],q[13];
rz(9.172838187819544) q[13];
cx q[8],q[13];
cx q[9],q[13];
rz(9.172838187819544) q[13];
cx q[9],q[13];
cx q[10],q[13];
rz(9.172838187819544) q[13];
cx q[10],q[13];
cx q[11],q[13];
rz(9.172838187819544) q[13];
cx q[11],q[13];
cx q[12],q[13];
rz(9.172838187819544) q[13];
cx q[12],q[13];
rz(pi/2) q[14];
rx(0.5*pi) q[14];
rz(pi/2) q[14];
rz(2.0) q[14];
cx q[0],q[14];
rz(9.172838187819544) q[14];
cx q[0],q[14];
cx q[1],q[14];
rz(9.172838187819544) q[14];
cx q[1],q[14];
cx q[2],q[14];
rz(9.172838187819544) q[14];
cx q[2],q[14];
cx q[3],q[14];
rz(9.172838187819544) q[14];
cx q[3],q[14];
cx q[4],q[14];
rz(9.172838187819544) q[14];
cx q[4],q[14];
cx q[5],q[14];
rz(9.172838187819544) q[14];
cx q[5],q[14];
cx q[6],q[14];
rz(9.172838187819544) q[14];
cx q[6],q[14];
cx q[7],q[14];
rz(9.172838187819544) q[14];
cx q[7],q[14];
cx q[8],q[14];
rz(9.172838187819544) q[14];
cx q[8],q[14];
cx q[9],q[14];
rz(9.172838187819544) q[14];
cx q[9],q[14];
cx q[10],q[14];
rz(9.172838187819544) q[14];
cx q[10],q[14];
cx q[11],q[14];
rz(9.172838187819544) q[14];
cx q[11],q[14];
cx q[12],q[14];
rz(9.172838187819544) q[14];
cx q[12],q[14];
cx q[13],q[14];
rz(9.172838187819544) q[14];
cx q[13],q[14];
rz(pi/2) q[15];
rx(0.5*pi) q[15];
rz(pi/2) q[15];
rz(2.0) q[15];
cx q[0],q[15];
rz(9.172838187819544) q[15];
cx q[0],q[15];
cx q[1],q[15];
rz(9.172838187819544) q[15];
cx q[1],q[15];
cx q[2],q[15];
rz(9.172838187819544) q[15];
cx q[2],q[15];
cx q[3],q[15];
rz(9.172838187819544) q[15];
cx q[3],q[15];
cx q[4],q[15];
rz(9.172838187819544) q[15];
cx q[4],q[15];
cx q[5],q[15];
rz(9.172838187819544) q[15];
cx q[5],q[15];
cx q[6],q[15];
rz(9.172838187819544) q[15];
cx q[6],q[15];
cx q[7],q[15];
rz(9.172838187819544) q[15];
cx q[7],q[15];
cx q[8],q[15];
rz(9.172838187819544) q[15];
cx q[8],q[15];
cx q[9],q[15];
rz(9.172838187819544) q[15];
cx q[9],q[15];
cx q[10],q[15];
rz(9.172838187819544) q[15];
cx q[10],q[15];
cx q[11],q[15];
rz(9.172838187819544) q[15];
cx q[11],q[15];
cx q[12],q[15];
rz(9.172838187819544) q[15];
cx q[12],q[15];
cx q[13],q[15];
rz(9.172838187819544) q[15];
cx q[13],q[15];
cx q[14],q[15];
rz(9.172838187819544) q[15];
cx q[14],q[15];
rz(pi/2) q[16];
rx(0.5*pi) q[16];
rz(pi/2) q[16];
rz(2.0) q[16];
cx q[0],q[16];
rz(9.172838187819544) q[16];
cx q[0],q[16];
cx q[1],q[16];
rz(9.172838187819544) q[16];
cx q[1],q[16];
cx q[2],q[16];
rz(9.172838187819544) q[16];
cx q[2],q[16];
cx q[3],q[16];
rz(9.172838187819544) q[16];
cx q[3],q[16];
cx q[4],q[16];
rz(9.172838187819544) q[16];
cx q[4],q[16];
cx q[5],q[16];
rz(9.172838187819544) q[16];
cx q[5],q[16];
cx q[6],q[16];
rz(9.172838187819544) q[16];
cx q[6],q[16];
cx q[7],q[16];
rz(9.172838187819544) q[16];
cx q[7],q[16];
cx q[8],q[16];
rz(9.172838187819544) q[16];
cx q[8],q[16];
cx q[9],q[16];
rz(9.172838187819544) q[16];
cx q[9],q[16];
cx q[10],q[16];
rz(9.172838187819544) q[16];
cx q[10],q[16];
cx q[11],q[16];
rz(9.172838187819544) q[16];
cx q[11],q[16];
cx q[12],q[16];
rz(9.172838187819544) q[16];
cx q[12],q[16];
cx q[13],q[16];
rz(9.172838187819544) q[16];
cx q[13],q[16];
cx q[14],q[16];
rz(9.172838187819544) q[16];
cx q[14],q[16];
cx q[15],q[16];
rz(9.172838187819544) q[16];
cx q[15],q[16];
rz(pi/2) q[17];
rx(0.5*pi) q[17];
rz(pi/2) q[17];
rz(2.0) q[17];
cx q[0],q[17];
rz(9.172838187819544) q[17];
cx q[0],q[17];
cx q[1],q[17];
rz(9.172838187819544) q[17];
cx q[1],q[17];
cx q[2],q[17];
rz(9.172838187819544) q[17];
cx q[2],q[17];
cx q[3],q[17];
rz(9.172838187819544) q[17];
cx q[3],q[17];
cx q[4],q[17];
rz(9.172838187819544) q[17];
cx q[4],q[17];
cx q[5],q[17];
rz(9.172838187819544) q[17];
cx q[5],q[17];
cx q[6],q[17];
rz(9.172838187819544) q[17];
cx q[6],q[17];
cx q[7],q[17];
rz(9.172838187819544) q[17];
cx q[7],q[17];
cx q[8],q[17];
rz(9.172838187819544) q[17];
cx q[8],q[17];
cx q[9],q[17];
rz(9.172838187819544) q[17];
cx q[9],q[17];
cx q[10],q[17];
rz(9.172838187819544) q[17];
cx q[10],q[17];
cx q[11],q[17];
rz(9.172838187819544) q[17];
cx q[11],q[17];
cx q[12],q[17];
rz(9.172838187819544) q[17];
cx q[12],q[17];
cx q[13],q[17];
rz(9.172838187819544) q[17];
cx q[13],q[17];
cx q[14],q[17];
rz(9.172838187819544) q[17];
cx q[14],q[17];
cx q[15],q[17];
rz(9.172838187819544) q[17];
cx q[15],q[17];
cx q[16],q[17];
rz(9.172838187819544) q[17];
cx q[16],q[17];
rz(pi/2) q[18];
rx(0.5*pi) q[18];
rz(pi/2) q[18];
rz(2.0) q[18];
cx q[0],q[18];
rz(9.172838187819544) q[18];
cx q[0],q[18];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(2.0) q[0];
cx q[1],q[18];
rz(9.172838187819544) q[18];
cx q[1],q[18];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(2.0) q[1];
cx q[0],q[1];
rz(9.172838187819544) q[1];
cx q[0],q[1];
cx q[2],q[18];
rz(9.172838187819544) q[18];
cx q[2],q[18];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(2.0) q[2];
cx q[0],q[2];
rz(9.172838187819544) q[2];
cx q[0],q[2];
cx q[1],q[2];
rz(9.172838187819544) q[2];
cx q[1],q[2];
cx q[3],q[18];
rz(9.172838187819544) q[18];
cx q[3],q[18];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(2.0) q[3];
cx q[0],q[3];
rz(9.172838187819544) q[3];
cx q[0],q[3];
cx q[1],q[3];
rz(9.172838187819544) q[3];
cx q[1],q[3];
cx q[2],q[3];
rz(9.172838187819544) q[3];
cx q[2],q[3];
cx q[4],q[18];
rz(9.172838187819544) q[18];
cx q[4],q[18];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(2.0) q[4];
cx q[0],q[4];
rz(9.172838187819544) q[4];
cx q[0],q[4];
cx q[1],q[4];
rz(9.172838187819544) q[4];
cx q[1],q[4];
cx q[2],q[4];
rz(9.172838187819544) q[4];
cx q[2],q[4];
cx q[3],q[4];
rz(9.172838187819544) q[4];
cx q[3],q[4];
cx q[5],q[18];
rz(9.172838187819544) q[18];
cx q[5],q[18];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(2.0) q[5];
cx q[0],q[5];
rz(9.172838187819544) q[5];
cx q[0],q[5];
cx q[1],q[5];
rz(9.172838187819544) q[5];
cx q[1],q[5];
cx q[2],q[5];
rz(9.172838187819544) q[5];
cx q[2],q[5];
cx q[3],q[5];
rz(9.172838187819544) q[5];
cx q[3],q[5];
cx q[4],q[5];
rz(9.172838187819544) q[5];
cx q[4],q[5];
cx q[6],q[18];
rz(9.172838187819544) q[18];
cx q[6],q[18];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(2.0) q[6];
cx q[0],q[6];
rz(9.172838187819544) q[6];
cx q[0],q[6];
cx q[1],q[6];
rz(9.172838187819544) q[6];
cx q[1],q[6];
cx q[2],q[6];
rz(9.172838187819544) q[6];
cx q[2],q[6];
cx q[3],q[6];
rz(9.172838187819544) q[6];
cx q[3],q[6];
cx q[4],q[6];
rz(9.172838187819544) q[6];
cx q[4],q[6];
cx q[5],q[6];
rz(9.172838187819544) q[6];
cx q[5],q[6];
cx q[7],q[18];
rz(9.172838187819544) q[18];
cx q[7],q[18];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(2.0) q[7];
cx q[0],q[7];
rz(9.172838187819544) q[7];
cx q[0],q[7];
cx q[1],q[7];
rz(9.172838187819544) q[7];
cx q[1],q[7];
cx q[2],q[7];
rz(9.172838187819544) q[7];
cx q[2],q[7];
cx q[3],q[7];
rz(9.172838187819544) q[7];
cx q[3],q[7];
cx q[4],q[7];
rz(9.172838187819544) q[7];
cx q[4],q[7];
cx q[5],q[7];
rz(9.172838187819544) q[7];
cx q[5],q[7];
cx q[6],q[7];
rz(9.172838187819544) q[7];
cx q[6],q[7];
cx q[8],q[18];
rz(9.172838187819544) q[18];
cx q[8],q[18];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(2.0) q[8];
cx q[0],q[8];
rz(9.172838187819544) q[8];
cx q[0],q[8];
cx q[1],q[8];
rz(9.172838187819544) q[8];
cx q[1],q[8];
cx q[2],q[8];
rz(9.172838187819544) q[8];
cx q[2],q[8];
cx q[3],q[8];
rz(9.172838187819544) q[8];
cx q[3],q[8];
cx q[4],q[8];
rz(9.172838187819544) q[8];
cx q[4],q[8];
cx q[5],q[8];
rz(9.172838187819544) q[8];
cx q[5],q[8];
cx q[6],q[8];
rz(9.172838187819544) q[8];
cx q[6],q[8];
cx q[7],q[8];
rz(9.172838187819544) q[8];
cx q[7],q[8];
cx q[9],q[18];
rz(9.172838187819544) q[18];
cx q[9],q[18];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(2.0) q[9];
cx q[0],q[9];
rz(9.172838187819544) q[9];
cx q[0],q[9];
cx q[1],q[9];
rz(9.172838187819544) q[9];
cx q[1],q[9];
cx q[2],q[9];
rz(9.172838187819544) q[9];
cx q[2],q[9];
cx q[3],q[9];
rz(9.172838187819544) q[9];
cx q[3],q[9];
cx q[4],q[9];
rz(9.172838187819544) q[9];
cx q[4],q[9];
cx q[5],q[9];
rz(9.172838187819544) q[9];
cx q[5],q[9];
cx q[6],q[9];
rz(9.172838187819544) q[9];
cx q[6],q[9];
cx q[7],q[9];
rz(9.172838187819544) q[9];
cx q[7],q[9];
cx q[8],q[9];
rz(9.172838187819544) q[9];
cx q[8],q[9];
cx q[10],q[18];
rz(9.172838187819544) q[18];
cx q[10],q[18];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(2.0) q[10];
cx q[0],q[10];
rz(9.172838187819544) q[10];
cx q[0],q[10];
cx q[1],q[10];
rz(9.172838187819544) q[10];
cx q[1],q[10];
cx q[2],q[10];
rz(9.172838187819544) q[10];
cx q[2],q[10];
cx q[3],q[10];
rz(9.172838187819544) q[10];
cx q[3],q[10];
cx q[4],q[10];
rz(9.172838187819544) q[10];
cx q[4],q[10];
cx q[5],q[10];
rz(9.172838187819544) q[10];
cx q[5],q[10];
cx q[6],q[10];
rz(9.172838187819544) q[10];
cx q[6],q[10];
cx q[7],q[10];
rz(9.172838187819544) q[10];
cx q[7],q[10];
cx q[8],q[10];
rz(9.172838187819544) q[10];
cx q[8],q[10];
cx q[9],q[10];
rz(9.172838187819544) q[10];
cx q[9],q[10];
cx q[11],q[18];
rz(9.172838187819544) q[18];
cx q[11],q[18];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(2.0) q[11];
cx q[0],q[11];
rz(9.172838187819544) q[11];
cx q[0],q[11];
cx q[1],q[11];
rz(9.172838187819544) q[11];
cx q[1],q[11];
cx q[2],q[11];
rz(9.172838187819544) q[11];
cx q[2],q[11];
cx q[3],q[11];
rz(9.172838187819544) q[11];
cx q[3],q[11];
cx q[4],q[11];
rz(9.172838187819544) q[11];
cx q[4],q[11];
cx q[5],q[11];
rz(9.172838187819544) q[11];
cx q[5],q[11];
cx q[6],q[11];
rz(9.172838187819544) q[11];
cx q[6],q[11];
cx q[7],q[11];
rz(9.172838187819544) q[11];
cx q[7],q[11];
cx q[8],q[11];
rz(9.172838187819544) q[11];
cx q[8],q[11];
cx q[9],q[11];
rz(9.172838187819544) q[11];
cx q[9],q[11];
cx q[10],q[11];
rz(9.172838187819544) q[11];
cx q[10],q[11];
cx q[12],q[18];
rz(9.172838187819544) q[18];
cx q[12],q[18];
rz(pi/2) q[12];
rx(0.5*pi) q[12];
rz(pi/2) q[12];
rz(2.0) q[12];
cx q[0],q[12];
rz(9.172838187819544) q[12];
cx q[0],q[12];
cx q[1],q[12];
rz(9.172838187819544) q[12];
cx q[1],q[12];
cx q[2],q[12];
rz(9.172838187819544) q[12];
cx q[2],q[12];
cx q[3],q[12];
rz(9.172838187819544) q[12];
cx q[3],q[12];
cx q[4],q[12];
rz(9.172838187819544) q[12];
cx q[4],q[12];
cx q[5],q[12];
rz(9.172838187819544) q[12];
cx q[5],q[12];
cx q[6],q[12];
rz(9.172838187819544) q[12];
cx q[6],q[12];
cx q[7],q[12];
rz(9.172838187819544) q[12];
cx q[7],q[12];
cx q[8],q[12];
rz(9.172838187819544) q[12];
cx q[8],q[12];
cx q[9],q[12];
rz(9.172838187819544) q[12];
cx q[9],q[12];
cx q[10],q[12];
rz(9.172838187819544) q[12];
cx q[10],q[12];
cx q[11],q[12];
rz(9.172838187819544) q[12];
cx q[11],q[12];
cx q[13],q[18];
rz(9.172838187819544) q[18];
cx q[13],q[18];
rz(pi/2) q[13];
rx(0.5*pi) q[13];
rz(pi/2) q[13];
rz(2.0) q[13];
cx q[0],q[13];
rz(9.172838187819544) q[13];
cx q[0],q[13];
cx q[1],q[13];
rz(9.172838187819544) q[13];
cx q[1],q[13];
cx q[2],q[13];
rz(9.172838187819544) q[13];
cx q[2],q[13];
cx q[3],q[13];
rz(9.172838187819544) q[13];
cx q[3],q[13];
cx q[4],q[13];
rz(9.172838187819544) q[13];
cx q[4],q[13];
cx q[5],q[13];
rz(9.172838187819544) q[13];
cx q[5],q[13];
cx q[6],q[13];
rz(9.172838187819544) q[13];
cx q[6],q[13];
cx q[7],q[13];
rz(9.172838187819544) q[13];
cx q[7],q[13];
cx q[8],q[13];
rz(9.172838187819544) q[13];
cx q[8],q[13];
cx q[9],q[13];
rz(9.172838187819544) q[13];
cx q[9],q[13];
cx q[10],q[13];
rz(9.172838187819544) q[13];
cx q[10],q[13];
cx q[11],q[13];
rz(9.172838187819544) q[13];
cx q[11],q[13];
cx q[12],q[13];
rz(9.172838187819544) q[13];
cx q[12],q[13];
cx q[14],q[18];
rz(9.172838187819544) q[18];
cx q[14],q[18];
rz(pi/2) q[14];
rx(0.5*pi) q[14];
rz(pi/2) q[14];
rz(2.0) q[14];
cx q[0],q[14];
rz(9.172838187819544) q[14];
cx q[0],q[14];
cx q[1],q[14];
rz(9.172838187819544) q[14];
cx q[1],q[14];
cx q[2],q[14];
rz(9.172838187819544) q[14];
cx q[2],q[14];
cx q[3],q[14];
rz(9.172838187819544) q[14];
cx q[3],q[14];
cx q[4],q[14];
rz(9.172838187819544) q[14];
cx q[4],q[14];
cx q[5],q[14];
rz(9.172838187819544) q[14];
cx q[5],q[14];
cx q[6],q[14];
rz(9.172838187819544) q[14];
cx q[6],q[14];
cx q[7],q[14];
rz(9.172838187819544) q[14];
cx q[7],q[14];
cx q[8],q[14];
rz(9.172838187819544) q[14];
cx q[8],q[14];
cx q[9],q[14];
rz(9.172838187819544) q[14];
cx q[9],q[14];
cx q[10],q[14];
rz(9.172838187819544) q[14];
cx q[10],q[14];
cx q[11],q[14];
rz(9.172838187819544) q[14];
cx q[11],q[14];
cx q[12],q[14];
rz(9.172838187819544) q[14];
cx q[12],q[14];
cx q[13],q[14];
rz(9.172838187819544) q[14];
cx q[13],q[14];
cx q[15],q[18];
rz(9.172838187819544) q[18];
cx q[15],q[18];
rz(pi/2) q[15];
rx(0.5*pi) q[15];
rz(pi/2) q[15];
rz(2.0) q[15];
cx q[0],q[15];
rz(9.172838187819544) q[15];
cx q[0],q[15];
cx q[1],q[15];
rz(9.172838187819544) q[15];
cx q[1],q[15];
cx q[2],q[15];
rz(9.172838187819544) q[15];
cx q[2],q[15];
cx q[3],q[15];
rz(9.172838187819544) q[15];
cx q[3],q[15];
cx q[4],q[15];
rz(9.172838187819544) q[15];
cx q[4],q[15];
cx q[5],q[15];
rz(9.172838187819544) q[15];
cx q[5],q[15];
cx q[6],q[15];
rz(9.172838187819544) q[15];
cx q[6],q[15];
cx q[7],q[15];
rz(9.172838187819544) q[15];
cx q[7],q[15];
cx q[8],q[15];
rz(9.172838187819544) q[15];
cx q[8],q[15];
cx q[9],q[15];
rz(9.172838187819544) q[15];
cx q[9],q[15];
cx q[10],q[15];
rz(9.172838187819544) q[15];
cx q[10],q[15];
cx q[11],q[15];
rz(9.172838187819544) q[15];
cx q[11],q[15];
cx q[12],q[15];
rz(9.172838187819544) q[15];
cx q[12],q[15];
cx q[13],q[15];
rz(9.172838187819544) q[15];
cx q[13],q[15];
cx q[14],q[15];
rz(9.172838187819544) q[15];
cx q[14],q[15];
cx q[16],q[18];
rz(9.172838187819544) q[18];
cx q[16],q[18];
rz(pi/2) q[16];
rx(0.5*pi) q[16];
rz(pi/2) q[16];
rz(2.0) q[16];
cx q[0],q[16];
rz(9.172838187819544) q[16];
cx q[0],q[16];
cx q[1],q[16];
rz(9.172838187819544) q[16];
cx q[1],q[16];
cx q[2],q[16];
rz(9.172838187819544) q[16];
cx q[2],q[16];
cx q[3],q[16];
rz(9.172838187819544) q[16];
cx q[3],q[16];
cx q[4],q[16];
rz(9.172838187819544) q[16];
cx q[4],q[16];
cx q[5],q[16];
rz(9.172838187819544) q[16];
cx q[5],q[16];
cx q[6],q[16];
rz(9.172838187819544) q[16];
cx q[6],q[16];
cx q[7],q[16];
rz(9.172838187819544) q[16];
cx q[7],q[16];
cx q[8],q[16];
rz(9.172838187819544) q[16];
cx q[8],q[16];
cx q[9],q[16];
rz(9.172838187819544) q[16];
cx q[9],q[16];
cx q[10],q[16];
rz(9.172838187819544) q[16];
cx q[10],q[16];
cx q[11],q[16];
rz(9.172838187819544) q[16];
cx q[11],q[16];
cx q[12],q[16];
rz(9.172838187819544) q[16];
cx q[12],q[16];
cx q[13],q[16];
rz(9.172838187819544) q[16];
cx q[13],q[16];
cx q[14],q[16];
rz(9.172838187819544) q[16];
cx q[14],q[16];
cx q[15],q[16];
rz(9.172838187819544) q[16];
cx q[15],q[16];
cx q[17],q[18];
rz(9.172838187819544) q[18];
cx q[17],q[18];
rz(pi/2) q[17];
rx(0.5*pi) q[17];
rz(pi/2) q[17];
rz(2.0) q[17];
cx q[0],q[17];
rz(9.172838187819544) q[17];
cx q[0],q[17];
cx q[1],q[17];
rz(9.172838187819544) q[17];
cx q[1],q[17];
cx q[2],q[17];
rz(9.172838187819544) q[17];
cx q[2],q[17];
cx q[3],q[17];
rz(9.172838187819544) q[17];
cx q[3],q[17];
cx q[4],q[17];
rz(9.172838187819544) q[17];
cx q[4],q[17];
cx q[5],q[17];
rz(9.172838187819544) q[17];
cx q[5],q[17];
cx q[6],q[17];
rz(9.172838187819544) q[17];
cx q[6],q[17];
cx q[7],q[17];
rz(9.172838187819544) q[17];
cx q[7],q[17];
cx q[8],q[17];
rz(9.172838187819544) q[17];
cx q[8],q[17];
cx q[9],q[17];
rz(9.172838187819544) q[17];
cx q[9],q[17];
cx q[10],q[17];
rz(9.172838187819544) q[17];
cx q[10],q[17];
cx q[11],q[17];
rz(9.172838187819544) q[17];
cx q[11],q[17];
cx q[12],q[17];
rz(9.172838187819544) q[17];
cx q[12],q[17];
cx q[13],q[17];
rz(9.172838187819544) q[17];
cx q[13],q[17];
cx q[14],q[17];
rz(9.172838187819544) q[17];
cx q[14],q[17];
cx q[15],q[17];
rz(9.172838187819544) q[17];
cx q[15],q[17];
cx q[16],q[17];
rz(9.172838187819544) q[17];
cx q[16],q[17];
rz(pi/2) q[18];
rx(0.5*pi) q[18];
rz(pi/2) q[18];
rz(2.0) q[18];
cx q[0],q[18];
rz(9.172838187819544) q[18];
cx q[0],q[18];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(3.6858318979067186) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
cx q[1],q[18];
rz(9.172838187819544) q[18];
cx q[1],q[18];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(3.700270277573362) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
cx q[2],q[18];
rz(9.172838187819544) q[18];
cx q[2],q[18];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(4.088640379703711) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
cx q[3],q[18];
rz(9.172838187819544) q[18];
cx q[3],q[18];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(3.24855714816558) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
cx q[4],q[18];
rz(9.172838187819544) q[18];
cx q[4],q[18];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(3.44647313020712) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
cx q[5],q[18];
rz(9.172838187819544) q[18];
cx q[5],q[18];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(3.753007626213551) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
cx q[6],q[18];
rz(9.172838187819544) q[18];
cx q[6],q[18];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(3.268538457886047) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
cx q[7],q[18];
rz(9.172838187819544) q[18];
cx q[7],q[18];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(3.9852781959627577) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
cx q[8],q[18];
rz(9.172838187819544) q[18];
cx q[8],q[18];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(3.3555586984774948) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
cx q[9],q[18];
rz(9.172838187819544) q[18];
cx q[9],q[18];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(3.1800583018026867) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
cx q[10],q[18];
rz(9.172838187819544) q[18];
cx q[10],q[18];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(3.227243495677121) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
cx q[11],q[18];
rz(9.172838187819544) q[18];
cx q[11],q[18];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(3.2146068373285877) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
cx q[12],q[18];
rz(9.172838187819544) q[18];
cx q[12],q[18];
rz(0) q[12];
rx(0.5*pi) q[12];
rz(3.986766047187867) q[12];
rx(0.5*pi) q[12];
rz(3*pi) q[12];
cx q[13],q[18];
rz(9.172838187819544) q[18];
cx q[13],q[18];
rz(0) q[13];
rx(0.5*pi) q[13];
rz(3.733283334289437) q[13];
rx(0.5*pi) q[13];
rz(3*pi) q[13];
cx q[14],q[18];
rz(9.172838187819544) q[18];
cx q[14],q[18];
rz(0) q[14];
rx(0.5*pi) q[14];
rz(3.9524530874673087) q[14];
rx(0.5*pi) q[14];
rz(3*pi) q[14];
cx q[15],q[18];
rz(9.172838187819544) q[18];
cx q[15],q[18];
rz(0) q[15];
rx(0.5*pi) q[15];
rz(3.6446502164681984) q[15];
rx(0.5*pi) q[15];
rz(3*pi) q[15];
cx q[16],q[18];
rz(9.172838187819544) q[18];
cx q[16],q[18];
rz(0) q[16];
rx(0.5*pi) q[16];
rz(3.3197697981571594) q[16];
rx(0.5*pi) q[16];
rz(3*pi) q[16];
cx q[17],q[18];
rz(9.172838187819544) q[18];
cx q[17],q[18];
rz(0) q[17];
rx(0.5*pi) q[17];
rz(3.9643669687319387) q[17];
rx(0.5*pi) q[17];
rz(3*pi) q[17];
rz(0) q[18];
rx(0.5*pi) q[18];
rz(3.74812990075327) q[18];
rx(0.5*pi) q[18];
rz(3*pi) q[18];
cx q[17],q[18];
cx q[16],q[17];
cx q[15],q[16];
cx q[14],q[15];
cx q[13],q[14];
cx q[12],q[13];
cx q[11],q[12];
cx q[10],q[11];
cx q[9],q[10];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(3.1422115545103066) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(3.433992434954496) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(4.1361446292664) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(3.6382566418842335) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(4.075937158868597) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(3.5455096909781263) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(3.925829690489272) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(3.1780836944869293) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(3.748113724340383) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(3.753123329663236) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(3.969814281595453) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(3.5177277321610934) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
rz(0) q[12];
rx(0.5*pi) q[12];
rz(4.004026488451845) q[12];
rx(0.5*pi) q[12];
rz(3*pi) q[12];
rz(0) q[13];
rx(0.5*pi) q[13];
rz(4.019486934843338) q[13];
rx(0.5*pi) q[13];
rz(3*pi) q[13];
rz(0) q[14];
rx(0.5*pi) q[14];
rz(3.9346930537785365) q[14];
rx(0.5*pi) q[14];
rz(3*pi) q[14];
rz(0) q[15];
rx(0.5*pi) q[15];
rz(3.5905666904419653) q[15];
rx(0.5*pi) q[15];
rz(3*pi) q[15];
rz(0) q[16];
rx(0.5*pi) q[16];
rz(3.631569825662023) q[16];
rx(0.5*pi) q[16];
rz(3*pi) q[16];
rz(0) q[17];
rx(0.5*pi) q[17];
rz(3.2958965273998038) q[17];
rx(0.5*pi) q[17];
rz(3*pi) q[17];
rz(0) q[18];
rx(0.5*pi) q[18];
rz(3.9105648234858537) q[18];
rx(0.5*pi) q[18];
rz(3*pi) q[18];