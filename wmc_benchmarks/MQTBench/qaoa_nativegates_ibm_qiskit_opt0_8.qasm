// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
cx q[0],q[2];
rz(4.431037096687783) q[2];
cx q[0],q[2];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
cx q[2],q[3];
rz(4.431037096687783) q[3];
cx q[2],q[3];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(13.211152654327215) q[2];
rx(0.5*pi) q[2];
rz(5*pi/2) q[2];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[1],q[5];
rz(4.431037096687783) q[5];
cx q[1],q[5];
cx q[4],q[5];
rz(4.431037096687783) q[5];
cx q[4],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(13.211152654327215) q[5];
rx(0.5*pi) q[5];
rz(5*pi/2) q[5];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[0],q[6];
rz(4.431037096687783) q[6];
cx q[0],q[6];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(13.211152654327215) q[0];
rx(0.5*pi) q[0];
rz(5*pi/2) q[0];
cx q[0],q[2];
rz(-0.6448309816094885) q[2];
cx q[0],q[2];
cx q[4],q[6];
rz(4.431037096687783) q[6];
cx q[4],q[6];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(13.211152654327215) q[4];
rx(0.5*pi) q[4];
rz(5*pi/2) q[4];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(13.211152654327215) q[6];
rx(0.5*pi) q[6];
rz(5*pi/2) q[6];
cx q[0],q[6];
rz(-0.6448309816094885) q[6];
cx q[0],q[6];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(11.276811419450027) q[0];
rx(0.5*pi) q[0];
rz(5*pi/2) q[0];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[1],q[7];
rz(4.431037096687783) q[7];
cx q[1],q[7];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(13.211152654327215) q[1];
rx(0.5*pi) q[1];
rz(5*pi/2) q[1];
cx q[1],q[5];
cx q[3],q[7];
rz(-0.6448309816094885) q[5];
cx q[1],q[5];
cx q[4],q[5];
rz(-0.6448309816094885) q[5];
cx q[4],q[5];
cx q[4],q[6];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(11.276811419450027) q[5];
rx(0.5*pi) q[5];
rz(5*pi/2) q[5];
rz(-0.6448309816094885) q[6];
cx q[4],q[6];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(11.276811419450027) q[4];
rx(0.5*pi) q[4];
rz(5*pi/2) q[4];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(11.276811419450027) q[6];
rx(0.5*pi) q[6];
rz(5*pi/2) q[6];
rz(4.431037096687783) q[7];
cx q[3],q[7];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(13.211152654327215) q[3];
rx(0.5*pi) q[3];
rz(5*pi/2) q[3];
cx q[2],q[3];
rz(-0.6448309816094885) q[3];
cx q[2],q[3];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(11.276811419450027) q[2];
rx(0.5*pi) q[2];
rz(5*pi/2) q[2];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(13.211152654327215) q[7];
rx(0.5*pi) q[7];
rz(5*pi/2) q[7];
cx q[1],q[7];
rz(-0.6448309816094885) q[7];
cx q[1],q[7];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(11.276811419450027) q[1];
rx(0.5*pi) q[1];
rz(5*pi/2) q[1];
cx q[3],q[7];
rz(-0.6448309816094885) q[7];
cx q[3],q[7];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(11.276811419450027) q[3];
rx(0.5*pi) q[3];
rz(5*pi/2) q[3];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(11.276811419450027) q[7];
rx(0.5*pi) q[7];
rz(5*pi/2) q[7];