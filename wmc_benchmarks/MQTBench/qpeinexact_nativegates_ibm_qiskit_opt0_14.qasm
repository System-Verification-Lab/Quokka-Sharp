// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
qreg psi[1];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(pi/2) q[12];
rx(0.5*pi) q[12];
rz(pi/2) q[12];
x psi[0];
rz(-1.3466433841651073) psi[0];
cx psi[0],q[0];
rz(1.3466433841651073) q[0];
cx psi[0],q[0];
rz(-1.3466433841651073) q[0];
rz(0.44830588525957865) psi[0];
cx psi[0],q[1];
rz(-0.44830588525957865) q[1];
cx psi[0],q[1];
rz(0.44830588525957865) q[1];
rz(0.8966117705191573) psi[0];
cx psi[0],q[2];
rz(-0.8966117705191573) q[2];
cx psi[0],q[2];
rz(0.8966117705191573) q[2];
rz(-1.3483691125514785) psi[0];
cx psi[0],q[3];
rz(1.3483691125514785) q[3];
cx psi[0],q[3];
rz(-1.3483691125514785) q[3];
rz(0.44485442848683593) psi[0];
cx psi[0],q[4];
rz(-0.44485442848683593) q[4];
cx psi[0],q[4];
rz(0.44485442848683593) q[4];
rz(0.8897088569736719) psi[0];
cx psi[0],q[5];
rz(-0.8897088569736719) q[5];
cx psi[0],q[5];
rz(0.8897088569736719) q[5];
rz(-1.3621749396424494) psi[0];
cx psi[0],q[6];
rz(1.3621749396424494) q[6];
cx psi[0],q[6];
rz(-1.3621749396424494) q[6];
rz(-pi/128) q[6];
rz(0.4172427743048944) psi[0];
cx psi[0],q[7];
rz(-0.4172427743048944) q[7];
cx psi[0],q[7];
rz(0.4172427743048944) q[7];
cx q[5],q[7];
cx q[7],q[5];
cx q[5],q[7];
rz(-pi/64) q[5];
rz(-pi/256) q[7];
rz(0.8344855486097889) psi[0];
cx psi[0],q[8];
rz(-0.8344855486097889) q[8];
cx psi[0],q[8];
rz(0.8344855486097889) q[8];
cx q[4],q[8];
cx q[8],q[4];
cx q[4],q[8];
rz(-pi/32) q[4];
rz(-pi/512) q[8];
rz(-1.4726215563702154) psi[0];
cx psi[0],q[9];
rz(1.4726215563702154) q[9];
cx psi[0],q[9];
rz(-1.4726215563702154) q[9];
cx q[3],q[9];
cx q[9],q[3];
cx q[3],q[9];
rz(-pi/16) q[3];
rz(-pi/1024) q[9];
rz(pi/16) psi[0];
cx psi[0],q[10];
rz(-pi/16) q[10];
cx psi[0],q[10];
rz(pi/16) q[10];
cx q[2],q[10];
cx q[10],q[2];
cx q[2],q[10];
rz(-pi/8) q[2];
rz(-pi/2048) q[10];
rz(pi/8) psi[0];
cx psi[0],q[11];
rz(-pi/8) q[11];
cx psi[0],q[11];
rz(pi/8) q[11];
cx q[1],q[11];
cx q[11],q[1];
cx q[1],q[11];
rz(-pi/4) q[1];
rz(-pi/4096) q[11];
rz(pi/4) psi[0];
cx psi[0],q[12];
rz(-pi/4) q[12];
cx psi[0],q[12];
rz(pi/4) q[12];
cx q[0],q[12];
cx q[12],q[0];
cx q[0],q[12];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
cx q[1],q[0];
rz(pi/4) q[0];
cx q[1],q[0];
rz(-pi/4) q[0];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
cx q[2],q[0];
rz(pi/8) q[0];
cx q[2],q[0];
rz(-pi/8) q[0];
rz(-pi/4) q[2];
cx q[2],q[1];
rz(pi/4) q[1];
cx q[2],q[1];
rz(-pi/4) q[1];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
cx q[3],q[0];
rz(pi/16) q[0];
cx q[3],q[0];
rz(-pi/16) q[0];
rz(-pi/8) q[3];
cx q[3],q[1];
rz(pi/8) q[1];
cx q[3],q[1];
rz(-pi/8) q[1];
rz(-pi/4) q[3];
cx q[3],q[2];
rz(pi/4) q[2];
cx q[3],q[2];
rz(-pi/4) q[2];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
cx q[4],q[0];
rz(pi/32) q[0];
cx q[4],q[0];
rz(-pi/32) q[0];
rz(-pi/16) q[4];
cx q[4],q[1];
rz(pi/16) q[1];
cx q[4],q[1];
rz(-pi/16) q[1];
rz(-pi/8) q[4];
cx q[4],q[2];
rz(pi/8) q[2];
cx q[4],q[2];
rz(-pi/8) q[2];
rz(-pi/4) q[4];
cx q[4],q[3];
rz(pi/4) q[3];
cx q[4],q[3];
rz(-pi/4) q[3];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
cx q[5],q[0];
rz(pi/64) q[0];
cx q[5],q[0];
rz(-pi/64) q[0];
rz(-pi/32) q[5];
cx q[5],q[1];
rz(pi/32) q[1];
cx q[5],q[1];
rz(-pi/32) q[1];
rz(-pi/16) q[5];
cx q[5],q[2];
rz(pi/16) q[2];
cx q[5],q[2];
rz(-pi/16) q[2];
rz(-pi/8) q[5];
cx q[5],q[3];
rz(pi/8) q[3];
cx q[5],q[3];
rz(-pi/8) q[3];
rz(-pi/4) q[5];
cx q[5],q[4];
rz(pi/4) q[4];
cx q[5],q[4];
rz(-pi/4) q[4];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
cx q[6],q[0];
rz(pi/128) q[0];
cx q[6],q[0];
rz(-pi/128) q[0];
rz(-pi/64) q[6];
cx q[6],q[1];
rz(pi/64) q[1];
cx q[6],q[1];
rz(-pi/64) q[1];
rz(-pi/32) q[6];
cx q[6],q[2];
rz(pi/32) q[2];
cx q[6],q[2];
rz(-pi/32) q[2];
rz(-pi/16) q[6];
cx q[6],q[3];
rz(pi/16) q[3];
cx q[6],q[3];
rz(-pi/16) q[3];
rz(-pi/8) q[6];
cx q[6],q[4];
rz(pi/8) q[4];
cx q[6],q[4];
rz(-pi/8) q[4];
rz(-pi/4) q[6];
cx q[6],q[5];
rz(pi/4) q[5];
cx q[6],q[5];
rz(-pi/4) q[5];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
cx q[7],q[0];
rz(pi/256) q[0];
cx q[7],q[0];
rz(-pi/256) q[0];
rz(-pi/128) q[7];
cx q[7],q[1];
rz(pi/128) q[1];
cx q[7],q[1];
rz(-pi/128) q[1];
rz(-pi/64) q[7];
cx q[7],q[2];
rz(pi/64) q[2];
cx q[7],q[2];
rz(-pi/64) q[2];
rz(-pi/32) q[7];
cx q[7],q[3];
rz(pi/32) q[3];
cx q[7],q[3];
rz(-pi/32) q[3];
rz(-pi/16) q[7];
cx q[7],q[4];
rz(pi/16) q[4];
cx q[7],q[4];
rz(-pi/16) q[4];
rz(-pi/8) q[7];
cx q[7],q[5];
rz(pi/8) q[5];
cx q[7],q[5];
rz(-pi/8) q[5];
rz(-pi/4) q[7];
cx q[7],q[6];
rz(pi/4) q[6];
cx q[7],q[6];
rz(-pi/4) q[6];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
cx q[8],q[0];
rz(pi/512) q[0];
cx q[8],q[0];
rz(-pi/512) q[0];
rz(-pi/256) q[8];
cx q[8],q[1];
rz(pi/256) q[1];
cx q[8],q[1];
rz(-pi/256) q[1];
rz(-pi/128) q[8];
cx q[8],q[2];
rz(pi/128) q[2];
cx q[8],q[2];
rz(-pi/128) q[2];
rz(-pi/64) q[8];
cx q[8],q[3];
rz(pi/64) q[3];
cx q[8],q[3];
rz(-pi/64) q[3];
rz(-pi/32) q[8];
cx q[8],q[4];
rz(pi/32) q[4];
cx q[8],q[4];
rz(-pi/32) q[4];
rz(-pi/16) q[8];
cx q[8],q[5];
rz(pi/16) q[5];
cx q[8],q[5];
rz(-pi/16) q[5];
rz(-pi/8) q[8];
cx q[8],q[6];
rz(pi/8) q[6];
cx q[8],q[6];
rz(-pi/8) q[6];
rz(-pi/4) q[8];
cx q[8],q[7];
rz(pi/4) q[7];
cx q[8],q[7];
rz(-pi/4) q[7];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
cx q[9],q[0];
rz(pi/1024) q[0];
cx q[9],q[0];
rz(-pi/1024) q[0];
rz(-pi/512) q[9];
cx q[9],q[1];
rz(pi/512) q[1];
cx q[9],q[1];
rz(-pi/512) q[1];
rz(-pi/256) q[9];
cx q[9],q[2];
rz(pi/256) q[2];
cx q[9],q[2];
rz(-pi/256) q[2];
rz(-pi/128) q[9];
cx q[9],q[3];
rz(pi/128) q[3];
cx q[9],q[3];
rz(-pi/128) q[3];
rz(-pi/64) q[9];
cx q[9],q[4];
rz(pi/64) q[4];
cx q[9],q[4];
rz(-pi/64) q[4];
rz(-pi/32) q[9];
cx q[9],q[5];
rz(pi/32) q[5];
cx q[9],q[5];
rz(-pi/32) q[5];
rz(-pi/16) q[9];
cx q[9],q[6];
rz(pi/16) q[6];
cx q[9],q[6];
rz(-pi/16) q[6];
rz(-pi/8) q[9];
cx q[9],q[7];
rz(pi/8) q[7];
cx q[9],q[7];
rz(-pi/8) q[7];
rz(-pi/4) q[9];
cx q[9],q[8];
rz(pi/4) q[8];
cx q[9],q[8];
rz(-pi/4) q[8];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
cx q[10],q[0];
rz(pi/2048) q[0];
cx q[10],q[0];
rz(-pi/2048) q[0];
rz(-pi/1024) q[10];
cx q[10],q[1];
rz(pi/1024) q[1];
cx q[10],q[1];
rz(-pi/1024) q[1];
rz(-pi/512) q[10];
cx q[10],q[2];
rz(pi/512) q[2];
cx q[10],q[2];
rz(-pi/512) q[2];
rz(-pi/256) q[10];
cx q[10],q[3];
rz(pi/256) q[3];
cx q[10],q[3];
rz(-pi/256) q[3];
rz(-pi/128) q[10];
cx q[10],q[4];
rz(pi/128) q[4];
cx q[10],q[4];
rz(-pi/128) q[4];
rz(-pi/64) q[10];
cx q[10],q[5];
rz(pi/64) q[5];
cx q[10],q[5];
rz(-pi/64) q[5];
rz(-pi/32) q[10];
cx q[10],q[6];
rz(pi/32) q[6];
cx q[10],q[6];
rz(-pi/32) q[6];
rz(-pi/16) q[10];
cx q[10],q[7];
rz(pi/16) q[7];
cx q[10],q[7];
rz(-pi/16) q[7];
rz(-pi/8) q[10];
cx q[10],q[8];
rz(pi/8) q[8];
cx q[10],q[8];
rz(-pi/8) q[8];
rz(-pi/4) q[10];
cx q[10],q[9];
rz(pi/4) q[9];
cx q[10],q[9];
rz(-pi/4) q[9];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
cx q[11],q[0];
rz(pi/4096) q[0];
cx q[11],q[0];
rz(-pi/4096) q[0];
rz(-pi/2048) q[11];
cx q[11],q[1];
rz(pi/2048) q[1];
cx q[11],q[1];
rz(-pi/2048) q[1];
rz(-pi/1024) q[11];
cx q[11],q[2];
rz(pi/1024) q[2];
cx q[11],q[2];
rz(-pi/1024) q[2];
rz(-pi/512) q[11];
cx q[11],q[3];
rz(pi/512) q[3];
cx q[11],q[3];
rz(-pi/512) q[3];
rz(-pi/256) q[11];
cx q[11],q[4];
rz(pi/256) q[4];
cx q[11],q[4];
rz(-pi/256) q[4];
rz(-pi/128) q[11];
cx q[11],q[5];
rz(pi/128) q[5];
cx q[11],q[5];
rz(-pi/128) q[5];
rz(-pi/64) q[11];
cx q[11],q[6];
rz(pi/64) q[6];
cx q[11],q[6];
rz(-pi/64) q[6];
rz(-pi/32) q[11];
cx q[11],q[7];
rz(pi/32) q[7];
cx q[11],q[7];
rz(-pi/32) q[7];
rz(-pi/16) q[11];
cx q[11],q[8];
rz(pi/16) q[8];
cx q[11],q[8];
rz(-pi/16) q[8];
rz(-pi/8) q[11];
cx q[11],q[9];
rz(pi/8) q[9];
cx q[11],q[9];
rz(-pi/8) q[9];
rz(-pi/4) q[11];
cx q[11],q[10];
rz(pi/4) q[10];
cx q[11],q[10];
rz(-pi/4) q[10];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(-pi/8192) q[12];
cx q[12],q[0];
rz(pi/8192) q[0];
cx q[12],q[0];
rz(-pi/8192) q[0];
rz(-pi/4096) q[12];
cx q[12],q[1];
rz(pi/4096) q[1];
cx q[12],q[1];
rz(-pi/4096) q[1];
rz(-pi/2048) q[12];
cx q[12],q[2];
rz(pi/2048) q[2];
cx q[12],q[2];
rz(-pi/2048) q[2];
rz(-pi/1024) q[12];
cx q[12],q[3];
rz(pi/1024) q[3];
cx q[12],q[3];
rz(-pi/1024) q[3];
rz(-pi/512) q[12];
cx q[12],q[4];
rz(pi/512) q[4];
cx q[12],q[4];
rz(-pi/512) q[4];
rz(-pi/256) q[12];
cx q[12],q[5];
rz(pi/256) q[5];
cx q[12],q[5];
rz(-pi/256) q[5];
rz(-pi/128) q[12];
cx q[12],q[6];
rz(pi/128) q[6];
cx q[12],q[6];
rz(-pi/128) q[6];
rz(-pi/64) q[12];
cx q[12],q[7];
rz(pi/64) q[7];
cx q[12],q[7];
rz(-pi/64) q[7];
rz(-pi/32) q[12];
cx q[12],q[8];
rz(pi/32) q[8];
cx q[12],q[8];
rz(-pi/32) q[8];
rz(-pi/16) q[12];
cx q[12],q[9];
rz(pi/16) q[9];
cx q[12],q[9];
rz(-pi/16) q[9];
rz(-pi/8) q[12];
cx q[12],q[10];
rz(pi/8) q[10];
cx q[12],q[10];
rz(-pi/8) q[10];
rz(-pi/4) q[12];
cx q[12],q[11];
rz(pi/4) q[11];
cx q[12],q[11];
rz(-pi/4) q[11];
rz(pi/2) q[12];
rx(0.5*pi) q[12];
rz(pi/2) q[12];
