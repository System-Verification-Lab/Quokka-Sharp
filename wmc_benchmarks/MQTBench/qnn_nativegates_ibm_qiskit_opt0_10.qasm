// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
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
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(2.0) q[0];
cx q[1],q[9];
rz(9.172838187819544) q[9];
cx q[1],q[9];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(2.0) q[1];
cx q[0],q[1];
rz(9.172838187819544) q[1];
cx q[0],q[1];
cx q[2],q[9];
rz(9.172838187819544) q[9];
cx q[2],q[9];
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
cx q[3],q[9];
rz(9.172838187819544) q[9];
cx q[3],q[9];
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
cx q[4],q[9];
rz(9.172838187819544) q[9];
cx q[4],q[9];
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
cx q[5],q[9];
rz(9.172838187819544) q[9];
cx q[5],q[9];
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
cx q[6],q[9];
rz(9.172838187819544) q[9];
cx q[6],q[9];
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
cx q[7],q[9];
rz(9.172838187819544) q[9];
cx q[7],q[9];
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
cx q[8],q[9];
rz(9.172838187819544) q[9];
cx q[8],q[9];
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
rz(0) q[0];
rx(0.5*pi) q[0];
rz(3.516349364503063) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
cx q[1],q[9];
rz(9.172838187819544) q[9];
cx q[1],q[9];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(3.274354614008416) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
cx q[2],q[9];
rz(9.172838187819544) q[9];
cx q[2],q[9];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(3.4482534658690422) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
cx q[3],q[9];
rz(9.172838187819544) q[9];
cx q[3],q[9];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(4.0596743243270605) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
cx q[4],q[9];
rz(9.172838187819544) q[9];
cx q[4],q[9];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(3.66329999241225) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
cx q[5],q[9];
rz(9.172838187819544) q[9];
cx q[5],q[9];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(3.8625472681390605) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
cx q[6],q[9];
rz(9.172838187819544) q[9];
cx q[6],q[9];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(3.945558431275671) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
cx q[7],q[9];
rz(9.172838187819544) q[9];
cx q[7],q[9];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(3.29008181427092) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
cx q[8],q[9];
rz(9.172838187819544) q[9];
cx q[8],q[9];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(3.313497700050517) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(3.8505445498406807) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
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
rz(4.026472480008148) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(3.807367320542893) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(3.7744068011372813) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(3.644079647702813) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(3.918142512015912) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(3.165874308512147) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(3.8515021256773756) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(4.091732425907947) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(3.2775356880145976) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(4.0741183257363875) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
