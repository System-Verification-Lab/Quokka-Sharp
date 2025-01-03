// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
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
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(2.0) q[0];
cx q[1],q[15];
rz(9.172838187819544) q[15];
cx q[1],q[15];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(2.0) q[1];
cx q[0],q[1];
rz(9.172838187819544) q[1];
cx q[0],q[1];
cx q[2],q[15];
rz(9.172838187819544) q[15];
cx q[2],q[15];
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
cx q[3],q[15];
rz(9.172838187819544) q[15];
cx q[3],q[15];
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
cx q[4],q[15];
rz(9.172838187819544) q[15];
cx q[4],q[15];
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
cx q[5],q[15];
rz(9.172838187819544) q[15];
cx q[5],q[15];
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
cx q[6],q[15];
rz(9.172838187819544) q[15];
cx q[6],q[15];
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
cx q[7],q[15];
rz(9.172838187819544) q[15];
cx q[7],q[15];
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
cx q[8],q[15];
rz(9.172838187819544) q[15];
cx q[8],q[15];
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
cx q[9],q[15];
rz(9.172838187819544) q[15];
cx q[9],q[15];
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
cx q[10],q[15];
rz(9.172838187819544) q[15];
cx q[10],q[15];
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
cx q[11],q[15];
rz(9.172838187819544) q[15];
cx q[11],q[15];
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
cx q[12],q[15];
rz(9.172838187819544) q[15];
cx q[12],q[15];
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
cx q[13],q[15];
rz(9.172838187819544) q[15];
cx q[13],q[15];
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
cx q[14],q[15];
rz(9.172838187819544) q[15];
cx q[14],q[15];
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
rz(0) q[0];
rx(0.5*pi) q[0];
rz(3.8198122870139315) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
cx q[1],q[15];
rz(9.172838187819544) q[15];
cx q[1],q[15];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(3.2926726549977188) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
cx q[2],q[15];
rz(9.172838187819544) q[15];
cx q[2],q[15];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(3.353534611023496) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
cx q[3],q[15];
rz(9.172838187819544) q[15];
cx q[3],q[15];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(3.4267987148858357) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
cx q[4],q[15];
rz(9.172838187819544) q[15];
cx q[4],q[15];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(3.8004852502070117) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
cx q[5],q[15];
rz(9.172838187819544) q[15];
cx q[5],q[15];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(3.5113694286593065) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
cx q[6],q[15];
rz(9.172838187819544) q[15];
cx q[6],q[15];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(3.842571539352889) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
cx q[7],q[15];
rz(9.172838187819544) q[15];
cx q[7],q[15];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(3.5128708249920306) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
cx q[8],q[15];
rz(9.172838187819544) q[15];
cx q[8],q[15];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(3.658063981813279) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
cx q[9],q[15];
rz(9.172838187819544) q[15];
cx q[9],q[15];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(3.3619616652819175) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
cx q[10],q[15];
rz(9.172838187819544) q[15];
cx q[10],q[15];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(3.154993168178514) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
cx q[11],q[15];
rz(9.172838187819544) q[15];
cx q[11],q[15];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(4.063026137805249) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
cx q[12],q[15];
rz(9.172838187819544) q[15];
cx q[12],q[15];
rz(0) q[12];
rx(0.5*pi) q[12];
rz(3.156798555695646) q[12];
rx(0.5*pi) q[12];
rz(3*pi) q[12];
cx q[13],q[15];
rz(9.172838187819544) q[15];
cx q[13],q[15];
rz(0) q[13];
rx(0.5*pi) q[13];
rz(3.6116417495874016) q[13];
rx(0.5*pi) q[13];
rz(3*pi) q[13];
cx q[14],q[15];
rz(9.172838187819544) q[15];
cx q[14],q[15];
rz(0) q[14];
rx(0.5*pi) q[14];
rz(3.782530469255545) q[14];
rx(0.5*pi) q[14];
rz(3*pi) q[14];
rz(0) q[15];
rx(0.5*pi) q[15];
rz(3.270131688821809) q[15];
rx(0.5*pi) q[15];
rz(3*pi) q[15];
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
rz(3.7733779476724276) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(3.7733841491126485) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(3.257372097323679) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(3.3671815492136496) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(3.4411564595966566) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(3.77878438715223) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(3.285077619418716) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(3.1438540904158274) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(3.7431863751606187) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(3.7214212724482474) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(3.243077608815248) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(4.107790755895047) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
rz(0) q[12];
rx(0.5*pi) q[12];
rz(4.051935851637788) q[12];
rx(0.5*pi) q[12];
rz(3*pi) q[12];
rz(0) q[13];
rx(0.5*pi) q[13];
rz(3.46550328013064) q[13];
rx(0.5*pi) q[13];
rz(3*pi) q[13];
rz(0) q[14];
rx(0.5*pi) q[14];
rz(4.064672438487209) q[14];
rx(0.5*pi) q[14];
rz(3*pi) q[14];
rz(0) q[15];
rx(0.5*pi) q[15];
rz(3.883629048959122) q[15];
rx(0.5*pi) q[15];
rz(3*pi) q[15];
