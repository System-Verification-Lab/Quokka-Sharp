// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(5.933247244616215) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(5.855078067311953) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
cx q[0],q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(8.436482379243124) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
cx q[0],q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
cx q[1],q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(6.16558217863499) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
cx q[0],q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
cx q[1],q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
cx q[2],q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(0.028707608499322745) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[0],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[1],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[2],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[3],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(9.99250528954918) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[0],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[1],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[2],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[3],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[4],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(-1.1699750677248044) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[0],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[1],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[2],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[3],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[4],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[5],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(8.932330071532066) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[0],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[1],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[2],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[3],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[4],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[5],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[6],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(5.62252854801663) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[0],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[1],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[2],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[3],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[4],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[5],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[6],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[7],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(2.356887933411074) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[0],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[1],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[2],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[3],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[4],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[5],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[6],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[7],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[8],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(6.858762192682397) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[0],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[1],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[2],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[3],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[4],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[5],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[6],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[7],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[8],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[9],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(-0.11686834672701485) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[0],q[11];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(6.914682376165404) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[1],q[11];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(8.13315270124743) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
cx q[0],q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[2],q[11];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(0.9072650277714249) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
cx q[0],q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
cx q[1],q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[3],q[11];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(2.8582092556046605) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
cx q[0],q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
cx q[1],q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
cx q[2],q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[4],q[11];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(8.251422409047507) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[0],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[1],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[2],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[3],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[5],q[11];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(0.9577277322636943) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[0],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[1],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[2],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[3],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[4],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[6],q[11];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(5.590896179510677) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[0],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[1],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[2],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[3],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[4],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[5],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[7],q[11];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(5.0920948124377725) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[0],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[1],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[2],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[3],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[4],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[5],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[6],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[8],q[11];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(7.03515657333128) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[0],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[1],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[2],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[3],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[4],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[5],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[6],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[7],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[9],q[11];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(-1.9808800598161032) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[0],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[1],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[2],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[3],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[4],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[5],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[6],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[7],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[8],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[10],q[11];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(3.1050914349445584) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[0],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[1],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[2],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[3],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[4],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[5],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[6],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[7],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[8],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[9],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(0.001804053778394099) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[0],q[11];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(4.678170360440559) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[1],q[11];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(1.2058914136173904) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
cx q[0],q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[2],q[11];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(6.969596821451537) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
cx q[0],q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
cx q[1],q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[3],q[11];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(-0.00040052337873275334) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
cx q[0],q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
cx q[1],q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
cx q[2],q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[4],q[11];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(8.45183559192579) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[0],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[1],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[2],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[3],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[5],q[11];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(0.9263213812199629) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[0],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[1],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[2],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[3],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[4],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[6],q[11];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(8.515315173928915) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[0],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[1],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[2],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[3],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[4],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[5],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[7],q[11];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(8.719539227661642) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[0],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[1],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[2],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[3],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[4],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[5],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[6],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[8],q[11];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(1.2593831439897416) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[0],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[1],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[2],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[3],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[4],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[5],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[6],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[7],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[9],q[11];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(-1.8357041998813282) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[0],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[1],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[2],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[3],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[4],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[5],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[6],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[7],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[8],q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[10],q[11];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(4.860579255975546) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[0],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[1],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[2],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[3],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[4],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[5],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[6],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[7],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[8],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[9],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(5.845147325093796) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[0],q[11];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(8.618203382921541) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[1],q[11];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(3.6544903923953376) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[2],q[11];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(-0.07881480530848739) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[3],q[11];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(3.1813477873188996) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[4],q[11];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(2.680474305395566) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[5],q[11];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(7.274879238525012) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[6],q[11];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(-2.4075594361232255) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[7],q[11];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(3.8915882310785737) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[8],q[11];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(1.056534011627238) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[9],q[11];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(0.6871984943431406) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
cx q[10],q[11];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(3.927432167078252) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(3.328959213976262) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
