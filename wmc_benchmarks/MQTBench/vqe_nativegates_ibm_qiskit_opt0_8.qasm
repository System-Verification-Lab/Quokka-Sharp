// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(1.531768859070602) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(3.141653026887891) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(4.690328405008339) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(3.141619638563162) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(6.049641274514034) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(1.978872916402533) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(6.236620065817592) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(3.2276585926275856) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(6.2831733295773216) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(6.283107746338599) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(0.00034678535745413797) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(2*pi) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(1.592422053574108) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(4.715872193000071) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(1.5691570169207203) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(4.798271810017038) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(1.531858720930315) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(6.283130742753428) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(1.5699826969334667) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(2*pi) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(1.3370814784250145) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(3.5494615097439883) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(4.7588473700767135) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];