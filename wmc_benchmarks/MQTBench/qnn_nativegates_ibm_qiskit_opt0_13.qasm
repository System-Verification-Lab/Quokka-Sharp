// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
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
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(2.0) q[0];
cx q[1],q[12];
rz(9.172838187819544) q[12];
cx q[1],q[12];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(2.0) q[1];
cx q[0],q[1];
rz(9.172838187819544) q[1];
cx q[0],q[1];
cx q[2],q[12];
rz(9.172838187819544) q[12];
cx q[2],q[12];
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
cx q[3],q[12];
rz(9.172838187819544) q[12];
cx q[3],q[12];
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
cx q[4],q[12];
rz(9.172838187819544) q[12];
cx q[4],q[12];
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
cx q[5],q[12];
rz(9.172838187819544) q[12];
cx q[5],q[12];
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
cx q[6],q[12];
rz(9.172838187819544) q[12];
cx q[6],q[12];
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
cx q[7],q[12];
rz(9.172838187819544) q[12];
cx q[7],q[12];
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
cx q[8],q[12];
rz(9.172838187819544) q[12];
cx q[8],q[12];
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
cx q[9],q[12];
rz(9.172838187819544) q[12];
cx q[9],q[12];
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
cx q[10],q[12];
rz(9.172838187819544) q[12];
cx q[10],q[12];
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
cx q[11],q[12];
rz(9.172838187819544) q[12];
cx q[11],q[12];
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
rz(0) q[0];
rx(0.5*pi) q[0];
rz(3.3260829676400516) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
cx q[1],q[12];
rz(9.172838187819544) q[12];
cx q[1],q[12];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(3.8414789607955635) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
cx q[2],q[12];
rz(9.172838187819544) q[12];
cx q[2],q[12];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(3.3830766829067853) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
cx q[3],q[12];
rz(9.172838187819544) q[12];
cx q[3],q[12];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(3.5604187576334168) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
cx q[4],q[12];
rz(9.172838187819544) q[12];
cx q[4],q[12];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(3.8458848994927637) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
cx q[5],q[12];
rz(9.172838187819544) q[12];
cx q[5],q[12];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(3.8997832831916766) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
cx q[6],q[12];
rz(9.172838187819544) q[12];
cx q[6],q[12];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(3.558031524425812) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
cx q[7],q[12];
rz(9.172838187819544) q[12];
cx q[7],q[12];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(3.1497883112893494) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
cx q[8],q[12];
rz(9.172838187819544) q[12];
cx q[8],q[12];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(3.388523165312958) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
cx q[9],q[12];
rz(9.172838187819544) q[12];
cx q[9],q[12];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(4.054757263420663) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
cx q[10],q[12];
rz(9.172838187819544) q[12];
cx q[10],q[12];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(3.394976367169005) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
cx q[11],q[12];
rz(9.172838187819544) q[12];
cx q[11],q[12];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(3.867509273216939) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
rz(0) q[12];
rx(0.5*pi) q[12];
rz(3.298433860630436) q[12];
rx(0.5*pi) q[12];
rz(3*pi) q[12];
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
rz(3.7967306534574923) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(3.2484529630865) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(3.5124062319167075) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(3.4978989986681035) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(3.812609019014457) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(3.6032630563998116) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(3.5817230294815965) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(3.4615231545941794) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(3.5592452388382125) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(3.694716132746796) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(3.6280681020486703) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(3.420547567953541) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
rz(0) q[12];
rx(0.5*pi) q[12];
rz(3.63727689423367) q[12];
rx(0.5*pi) q[12];
rz(3*pi) q[12];
