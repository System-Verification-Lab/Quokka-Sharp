// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(9.653446736411938) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(4.962939575662738) q[1];
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
rz(2.2736921629855207) q[2];
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
rz(4.954099838763431) q[3];
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
rz(5.755357414678612) q[4];
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
rz(8.687083270731703) q[5];
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
rz(6.722913141245828) q[6];
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
rz(3.684655392402285) q[7];
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
rz(3.672082079533408) q[8];
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
rz(7.129875249316079) q[9];
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
rz(8.362746822127711) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[0],q[10];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(2.5069382149680353) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[1],q[10];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(0.03260978713781837) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
cx q[0],q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[2],q[10];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(-1.6060133975181534) q[2];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[3],q[10];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(0.28532879491840246) q[3];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[4],q[10];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(7.6425976774307465) q[4];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[5],q[10];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(7.348796826008483) q[5];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[6],q[10];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(2.6377985850467898) q[6];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[7],q[10];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(9.271880128419324) q[7];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[8],q[10];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(5.268798596396129) q[8];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[9],q[10];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(6.463619243834627) q[9];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(1.0934965868169373) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[0],q[10];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(2.44545663390776) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[1],q[10];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(2.7987540111786444) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
cx q[0],q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[2],q[10];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(3.560294776012852) q[2];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[3],q[10];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(2.701920697874753) q[3];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[4],q[10];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(1.8118571559848702) q[4];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[5],q[10];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(0.021278373817689378) q[5];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[6],q[10];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(6.081419806600152) q[6];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[7],q[10];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(-2.503660057881893) q[7];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[8],q[10];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(6.806379953374281) q[8];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[9],q[10];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(3.186405072689258) q[9];
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
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(7.591521126142016) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[0],q[10];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(6.573809513913126) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[1],q[10];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(-2.7762705988986607) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[2],q[10];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(2.3565960581542305) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[3],q[10];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(5.979390927059148) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[4],q[10];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(-1.8143871960577105) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[5],q[10];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(3.7275082929531713) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[6],q[10];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(4.374444921177601) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[7],q[10];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(2.6991295930326107) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[8],q[10];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(1.4291424799195855) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[9],q[10];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(4.882216860537062) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(8.048325747777662) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
