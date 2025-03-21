// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
rz(1.1027555537727691) q[0];
rx(0.5*pi) q[0];
rz(1.9971868407710978) q[0];
rz(3.2857293957149123) q[0];
rz(-pi/4) q[1];
rz(2.4101587652296157) q[1];
cx q[0],q[1];
rz(-3.2857293957149123) q[1];
rx(0.5*pi) q[1];
rz(0.7992833399122317) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
cx q[0],q[1];
rz(-0.7113247525679618) q[0];
rx(0.5*pi) q[0];
rz(2.509597834799061) q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(3.1011423607500923) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(5.483901967267355) q[1];
rx(0.5*pi) q[1];
rz(10.300348591254677) q[1];
rz(-pi/2) q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[4];
rz(-3*pi/2) q[5];
rx(0.5*pi) q[5];
rz(3*pi/4) q[5];
rz(-0.3830450945131414) q[6];
cx q[3],q[6];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(2.714588624120136) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(2.714588624120136) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
cx q[3],q[6];
rz(0.3830450945131414) q[6];
cx q[7],q[5];
rz(-pi/4) q[5];
cx q[2],q[5];
rz(-0.3538555852431555) q[2];
cx q[3],q[2];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(0.4610609235355483) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(5.822124383644038) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
cx q[3],q[2];
rz(0.3538555852431555) q[2];
rz(-0.846742238676707) q[2];
rz(-3*pi/2) q[3];
rx(0.5*pi) q[3];
rz(-pi/2) q[3];
rz(pi/4) q[5];
cx q[7],q[5];
rz(-pi/4) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[6],q[5];
rz(-pi/4) q[5];
cx q[4],q[5];
rz(pi/4) q[5];
cx q[6],q[5];
rz(-pi/4) q[5];
cx q[4],q[5];
rz(pi/4) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(4.637097219175522) q[5];
rx(0.5*pi) q[5];
rz(7.74565312903592) q[5];
rz(pi/4) q[6];
cx q[4],q[6];
rz(pi/4) q[4];
rz(-pi/4) q[6];
cx q[4],q[6];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[3],q[4];
rz(pi/4) q[3];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[3],q[4];
rz(-pi/4) q[4];
cx q[3],q[4];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/4) q[3];
rz(pi/4) q[4];
rz(1.8578290617371822) q[4];
rx(0.5*pi) q[4];
rz(4.347957450985875) q[4];
rx(0.5*pi) q[4];
rz(11.579694656174166) q[4];
rz(4.618964506943106) q[6];
cx q[6],q[2];
rz(-4.618964506943106) q[2];
rx(0.5*pi) q[2];
rz(2.356899716807855) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
cx q[6],q[2];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(3.926285590371731) q[2];
rx(0.5*pi) q[2];
rz(14.890484706389191) q[2];
cx q[2],q[0];
rz(-3.1011423607500923) q[0];
cx q[2],q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(-pi/4) q[0];
rz(-pi) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(-3.871541346234685) q[6];
rx(0.5*pi) q[6];
rz(2.8258803777482875) q[6];
cx q[5],q[6];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(5.911959007747027) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(0.3712262994325588) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
cx q[5],q[6];
rz(-3*pi/2) q[5];
rx(0.5*pi) q[5];
rz(-pi/2) q[5];
rz(-pi/2) q[5];
cx q[0],q[5];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(pi/2) q[5];
rz(0.3048374864941845) q[6];
rz(pi/4) q[6];
cx q[6],q[5];
rz(-pi/4) q[5];
cx q[6],q[5];
rz(pi/4) q[5];
rz(-2.2593201473701177) q[5];
rz(pi/2) q[6];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(2*pi) q[7];
rx(0.5*pi) q[7];
rz(2*pi) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[1],q[7];
rz(1.5640163777242566) q[7];
cx q[1],q[7];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(0.026261989337056146) q[1];
rx(0.5*pi) q[1];
rz(4.6423803131896815) q[1];
rx(0.5*pi) q[1];
rz(6.882366594982223) q[1];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
cx q[7],q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
rz(pi/4) q[3];
cx q[3],q[4];
rz(-pi/4) q[4];
cx q[3],q[4];
rz(1.7191619225159478) q[3];
rx(0.5*pi) q[3];
rz(5.867434594011127) q[3];
rz(pi/4) q[4];
rz(-pi/2) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[7];
cx q[2],q[7];
cx q[7],q[2];
rz(-2.490120072622904) q[2];
rx(0.5*pi) q[2];
rz(4.310013314262026) q[2];
rx(0.5*pi) q[2];
rz(12.497557952481255) q[2];
rz(-3*pi/2) q[7];
rx(0.5*pi) q[7];
rz(0) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[7],q[4];
rz(2.917738905811407) q[4];
cx q[7],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[4];
cx q[3],q[4];
rz(0.6044551176832745) q[4];
cx q[3],q[4];
cx q[2],q[3];
cx q[3],q[2];
rz(pi/2) q[2];
rz(-pi/2) q[3];
rx(0.5*pi) q[3];
rz(4.172827507448988) q[3];
rx(0.5*pi) q[3];
rz(2*pi) q[3];
rz(pi/4) q[4];
rz(pi/4) q[4];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
cx q[7],q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
cx q[6],q[0];
rz(-pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(-pi/2) q[6];
cx q[6],q[2];
cx q[2],q[6];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[2],q[6];
rz(2.867615720945729) q[6];
cx q[2],q[6];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
cx q[3],q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(pi/4) q[3];
cx q[3],q[2];
rz(-pi/4) q[2];
cx q[3],q[2];
rz(pi/4) q[2];
rz(-3*pi/2) q[2];
rx(0.5*pi) q[2];
rz(0) q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(-pi) q[3];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(1.4510178277509702) q[6];
rx(0.5*pi) q[6];
rz(4.7620682354219905) q[6];
rx(0.5*pi) q[6];
rz(9.471632625519607) q[6];
cx q[6],q[3];
cx q[3],q[6];
rz(0.12287974816374536) q[3];
rx(0.5*pi) q[3];
rz(4.605480416650385) q[3];
rx(0.5*pi) q[3];
rz(6.553092194038799) q[3];
rz(pi/4) q[3];
rz(-3*pi/2) q[6];
rx(0.5*pi) q[6];
rz(-pi/2) q[6];
rz(-pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[7],q[5];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(3.079153330910928) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(3.079153330910928) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
cx q[7],q[5];
rz(2.2593201473701177) q[5];
cx q[4],q[5];
rz(-pi/4) q[5];
cx q[4],q[5];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/4) q[5];
rz(pi/4) q[5];
cx q[5],q[4];
rz(-pi/4) q[4];
cx q[5],q[4];
rz(pi/4) q[4];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(-pi/2) q[4];
cx q[0],q[4];
x q[0];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(1.5185179918312786) q[5];
rx(0.5*pi) q[5];
rz(3.923335764525623) q[5];
rx(0.5*pi) q[5];
rz(9.580052267529052) q[5];
rz(-1.1721221709586835) q[7];
rx(0.5*pi) q[7];
rz(-pi/2) q[7];
cx q[7],q[1];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[1],q[7];
rz(5.442492121247214) q[7];
cx q[1],q[7];
cx q[1],q[0];
cx q[0],q[1];
cx q[1],q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(6.768542198781633) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
cx q[2],q[0];
rz(0.8536767566826966) q[0];
cx q[2],q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(pi/2) q[0];
rz(pi/16) q[0];
cx q[0],q[6];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(-pi/16) q[6];
cx q[0],q[6];
cx q[0],q[5];
rz(-pi/16) q[5];
rz(pi/16) q[6];
cx q[5],q[6];
rz(pi/16) q[6];
cx q[5],q[6];
cx q[0],q[5];
rz(pi/16) q[5];
rz(-pi/16) q[6];
cx q[5],q[6];
rz(-pi/16) q[6];
cx q[5],q[6];
cx q[5],q[1];
rz(-pi/16) q[1];
rz(pi/16) q[6];
cx q[1],q[6];
rz(pi/16) q[6];
cx q[1],q[6];
cx q[0],q[1];
rz(pi/16) q[1];
rz(-pi/16) q[6];
cx q[1],q[6];
rz(-pi/16) q[6];
cx q[1],q[6];
cx q[5],q[1];
rz(-pi/16) q[1];
rz(4.213907225096717) q[5];
rz(pi/16) q[6];
cx q[1],q[6];
rz(pi/16) q[6];
cx q[1],q[6];
cx q[0],q[1];
rz(2.683738114930269) q[0];
rz(pi/16) q[1];
rz(-pi/16) q[6];
cx q[1],q[6];
rz(-pi/16) q[6];
cx q[1],q[6];
rz(2.2958382109065414) q[1];
rz(pi/16) q[6];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[7],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/4) q[7];
cx q[7],q[4];
rz(-pi/4) q[4];
cx q[7],q[4];
rz(pi/4) q[4];
rz(-pi/2) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(-pi/2) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[4],q[7];
rz(5.376266498080888) q[7];
cx q[4],q[7];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(-3*pi/4) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[3],q[4];
rz(-pi/4) q[4];
cx q[3],q[4];
rz(pi/4) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(-2.209194095686099) q[7];
rx(0.5*pi) q[7];
rz(5.104915462151738) q[7];
rx(0.5*pi) q[7];
rz(6.9492442135326336) q[7];
