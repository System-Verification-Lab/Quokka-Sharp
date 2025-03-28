// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[21];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(7.987943186487718) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(3.2719809969001195) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
cx q[0],q[1];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(7.122921933198846) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
cx q[0],q[2];
cx q[1],q[2];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(7.846466206315428) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(6.273804588815422) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
cx q[0],q[4];
cx q[1],q[4];
cx q[2],q[4];
cx q[3],q[4];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(4.554031633892473) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
cx q[0],q[5];
cx q[1],q[5];
cx q[2],q[5];
cx q[3],q[5];
cx q[4],q[5];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(4.38605833534536) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
cx q[0],q[6];
cx q[1],q[6];
cx q[2],q[6];
cx q[3],q[6];
cx q[4],q[6];
cx q[5],q[6];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(7.920148050137117) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
cx q[0],q[7];
cx q[1],q[7];
cx q[2],q[7];
cx q[3],q[7];
cx q[4],q[7];
cx q[5],q[7];
cx q[6],q[7];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(4.2041473771643645) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
cx q[0],q[8];
cx q[1],q[8];
cx q[2],q[8];
cx q[3],q[8];
cx q[4],q[8];
cx q[5],q[8];
cx q[6],q[8];
cx q[7],q[8];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(3.6966480760469094) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
cx q[0],q[9];
cx q[1],q[9];
cx q[2],q[9];
cx q[3],q[9];
cx q[4],q[9];
cx q[5],q[9];
cx q[6],q[9];
cx q[7],q[9];
cx q[8],q[9];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(7.447835394489607) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
cx q[0],q[10];
cx q[1],q[10];
cx q[2],q[10];
cx q[3],q[10];
cx q[4],q[10];
cx q[5],q[10];
cx q[6],q[10];
cx q[7],q[10];
cx q[8],q[10];
cx q[9],q[10];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(9.131939718364599) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
cx q[0],q[11];
cx q[1],q[11];
cx q[2],q[11];
cx q[3],q[11];
cx q[4],q[11];
cx q[5],q[11];
cx q[6],q[11];
cx q[7],q[11];
cx q[8],q[11];
cx q[9],q[11];
cx q[10],q[11];
rz(0) q[12];
rx(0.5*pi) q[12];
rz(3.166400342570177) q[12];
rx(0.5*pi) q[12];
rz(3*pi) q[12];
cx q[0],q[12];
cx q[1],q[12];
cx q[2],q[12];
cx q[3],q[12];
cx q[4],q[12];
cx q[5],q[12];
cx q[6],q[12];
cx q[7],q[12];
cx q[8],q[12];
cx q[9],q[12];
cx q[10],q[12];
cx q[11],q[12];
rz(0) q[13];
rx(0.5*pi) q[13];
rz(6.3597915573463615) q[13];
rx(0.5*pi) q[13];
rz(3*pi) q[13];
cx q[0],q[13];
cx q[1],q[13];
cx q[2],q[13];
cx q[3],q[13];
cx q[4],q[13];
cx q[5],q[13];
cx q[6],q[13];
cx q[7],q[13];
cx q[8],q[13];
cx q[9],q[13];
cx q[10],q[13];
cx q[11],q[13];
cx q[12],q[13];
rz(0) q[14];
rx(0.5*pi) q[14];
rz(8.247440740148498) q[14];
rx(0.5*pi) q[14];
rz(3*pi) q[14];
cx q[0],q[14];
cx q[1],q[14];
cx q[2],q[14];
cx q[3],q[14];
cx q[4],q[14];
cx q[5],q[14];
cx q[6],q[14];
cx q[7],q[14];
cx q[8],q[14];
cx q[9],q[14];
cx q[10],q[14];
cx q[11],q[14];
cx q[12],q[14];
cx q[13],q[14];
rz(0) q[15];
rx(0.5*pi) q[15];
rz(6.990207436956706) q[15];
rx(0.5*pi) q[15];
rz(3*pi) q[15];
cx q[0],q[15];
cx q[1],q[15];
cx q[2],q[15];
cx q[3],q[15];
cx q[4],q[15];
cx q[5],q[15];
cx q[6],q[15];
cx q[7],q[15];
cx q[8],q[15];
cx q[9],q[15];
cx q[10],q[15];
cx q[11],q[15];
cx q[12],q[15];
cx q[13],q[15];
cx q[14],q[15];
rz(0) q[16];
rx(0.5*pi) q[16];
rz(7.6765150594560145) q[16];
rx(0.5*pi) q[16];
rz(3*pi) q[16];
cx q[0],q[16];
cx q[1],q[16];
cx q[2],q[16];
cx q[3],q[16];
cx q[4],q[16];
cx q[5],q[16];
cx q[6],q[16];
cx q[7],q[16];
cx q[8],q[16];
cx q[9],q[16];
cx q[10],q[16];
cx q[11],q[16];
cx q[12],q[16];
cx q[13],q[16];
cx q[14],q[16];
cx q[15],q[16];
rz(0) q[17];
rx(0.5*pi) q[17];
rz(4.975504076636863) q[17];
rx(0.5*pi) q[17];
rz(3*pi) q[17];
cx q[0],q[17];
cx q[1],q[17];
cx q[2],q[17];
cx q[3],q[17];
cx q[4],q[17];
cx q[5],q[17];
cx q[6],q[17];
cx q[7],q[17];
cx q[8],q[17];
cx q[9],q[17];
cx q[10],q[17];
cx q[11],q[17];
cx q[12],q[17];
cx q[13],q[17];
cx q[14],q[17];
cx q[15],q[17];
cx q[16],q[17];
rz(0) q[18];
rx(0.5*pi) q[18];
rz(8.908137535472758) q[18];
rx(0.5*pi) q[18];
rz(3*pi) q[18];
cx q[0],q[18];
cx q[1],q[18];
cx q[2],q[18];
cx q[3],q[18];
cx q[4],q[18];
cx q[5],q[18];
cx q[6],q[18];
cx q[7],q[18];
cx q[8],q[18];
cx q[9],q[18];
cx q[10],q[18];
cx q[11],q[18];
cx q[12],q[18];
cx q[13],q[18];
cx q[14],q[18];
cx q[15],q[18];
cx q[16],q[18];
cx q[17],q[18];
rz(0) q[19];
rx(0.5*pi) q[19];
rz(7.631404716700505) q[19];
rx(0.5*pi) q[19];
rz(3*pi) q[19];
cx q[0],q[19];
cx q[1],q[19];
cx q[2],q[19];
cx q[3],q[19];
cx q[4],q[19];
cx q[5],q[19];
cx q[6],q[19];
cx q[7],q[19];
cx q[8],q[19];
cx q[9],q[19];
cx q[10],q[19];
cx q[11],q[19];
cx q[12],q[19];
cx q[13],q[19];
cx q[14],q[19];
cx q[15],q[19];
cx q[16],q[19];
cx q[17],q[19];
cx q[18],q[19];
rz(0) q[20];
rx(0.5*pi) q[20];
rz(6.550499455171185) q[20];
rx(0.5*pi) q[20];
rz(3*pi) q[20];
cx q[0],q[20];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(4.034873407800729) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
cx q[1],q[20];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(5.487361831716444) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
cx q[0],q[1];
cx q[2],q[20];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(7.377299078850513) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
cx q[0],q[2];
cx q[1],q[2];
cx q[3],q[20];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(5.917712363348878) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
cx q[4],q[20];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(5.868582999611883) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
cx q[0],q[4];
cx q[1],q[4];
cx q[2],q[4];
cx q[3],q[4];
cx q[5],q[20];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(7.023137055968935) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
cx q[0],q[5];
cx q[1],q[5];
cx q[2],q[5];
cx q[3],q[5];
cx q[4],q[5];
cx q[6],q[20];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(6.365735319759496) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
cx q[0],q[6];
cx q[1],q[6];
cx q[2],q[6];
cx q[3],q[6];
cx q[4],q[6];
cx q[5],q[6];
cx q[7],q[20];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(7.228158670932596) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
cx q[0],q[7];
cx q[1],q[7];
cx q[2],q[7];
cx q[3],q[7];
cx q[4],q[7];
cx q[5],q[7];
cx q[6],q[7];
cx q[8],q[20];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(6.918031774663822) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
cx q[0],q[8];
cx q[1],q[8];
cx q[2],q[8];
cx q[3],q[8];
cx q[4],q[8];
cx q[5],q[8];
cx q[6],q[8];
cx q[7],q[8];
cx q[9],q[20];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(8.200959212929481) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
cx q[0],q[9];
cx q[1],q[9];
cx q[2],q[9];
cx q[3],q[9];
cx q[4],q[9];
cx q[5],q[9];
cx q[6],q[9];
cx q[7],q[9];
cx q[8],q[9];
cx q[10],q[20];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(6.419198377041546) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
cx q[0],q[10];
cx q[1],q[10];
cx q[2],q[10];
cx q[3],q[10];
cx q[4],q[10];
cx q[5],q[10];
cx q[6],q[10];
cx q[7],q[10];
cx q[8],q[10];
cx q[9],q[10];
cx q[11],q[20];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(8.850801950871993) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
cx q[0],q[11];
cx q[1],q[11];
cx q[2],q[11];
cx q[3],q[11];
cx q[4],q[11];
cx q[5],q[11];
cx q[6],q[11];
cx q[7],q[11];
cx q[8],q[11];
cx q[9],q[11];
cx q[10],q[11];
cx q[12],q[20];
rz(0) q[12];
rx(0.5*pi) q[12];
rz(5.147412157444096) q[12];
rx(0.5*pi) q[12];
rz(3*pi) q[12];
cx q[0],q[12];
cx q[1],q[12];
cx q[2],q[12];
cx q[3],q[12];
cx q[4],q[12];
cx q[5],q[12];
cx q[6],q[12];
cx q[7],q[12];
cx q[8],q[12];
cx q[9],q[12];
cx q[10],q[12];
cx q[11],q[12];
cx q[13],q[20];
rz(0) q[13];
rx(0.5*pi) q[13];
rz(3.7099655078257845) q[13];
rx(0.5*pi) q[13];
rz(3*pi) q[13];
cx q[0],q[13];
cx q[1],q[13];
cx q[2],q[13];
cx q[3],q[13];
cx q[4],q[13];
cx q[5],q[13];
cx q[6],q[13];
cx q[7],q[13];
cx q[8],q[13];
cx q[9],q[13];
cx q[10],q[13];
cx q[11],q[13];
cx q[12],q[13];
cx q[14],q[20];
rz(0) q[14];
rx(0.5*pi) q[14];
rz(5.030946831314456) q[14];
rx(0.5*pi) q[14];
rz(3*pi) q[14];
cx q[0],q[14];
cx q[1],q[14];
cx q[2],q[14];
cx q[3],q[14];
cx q[4],q[14];
cx q[5],q[14];
cx q[6],q[14];
cx q[7],q[14];
cx q[8],q[14];
cx q[9],q[14];
cx q[10],q[14];
cx q[11],q[14];
cx q[12],q[14];
cx q[13],q[14];
cx q[15],q[20];
rz(0) q[15];
rx(0.5*pi) q[15];
rz(3.85777752129909) q[15];
rx(0.5*pi) q[15];
rz(3*pi) q[15];
cx q[0],q[15];
cx q[1],q[15];
cx q[2],q[15];
cx q[3],q[15];
cx q[4],q[15];
cx q[5],q[15];
cx q[6],q[15];
cx q[7],q[15];
cx q[8],q[15];
cx q[9],q[15];
cx q[10],q[15];
cx q[11],q[15];
cx q[12],q[15];
cx q[13],q[15];
cx q[14],q[15];
cx q[16],q[20];
rz(0) q[16];
rx(0.5*pi) q[16];
rz(8.348350987380279) q[16];
rx(0.5*pi) q[16];
rz(3*pi) q[16];
cx q[0],q[16];
cx q[1],q[16];
cx q[2],q[16];
cx q[3],q[16];
cx q[4],q[16];
cx q[5],q[16];
cx q[6],q[16];
cx q[7],q[16];
cx q[8],q[16];
cx q[9],q[16];
cx q[10],q[16];
cx q[11],q[16];
cx q[12],q[16];
cx q[13],q[16];
cx q[14],q[16];
cx q[15],q[16];
cx q[17],q[20];
rz(0) q[17];
rx(0.5*pi) q[17];
rz(3.4362509185371284) q[17];
rx(0.5*pi) q[17];
rz(3*pi) q[17];
cx q[0],q[17];
cx q[1],q[17];
cx q[2],q[17];
cx q[3],q[17];
cx q[4],q[17];
cx q[5],q[17];
cx q[6],q[17];
cx q[7],q[17];
cx q[8],q[17];
cx q[9],q[17];
cx q[10],q[17];
cx q[11],q[17];
cx q[12],q[17];
cx q[13],q[17];
cx q[14],q[17];
cx q[15],q[17];
cx q[16],q[17];
cx q[18],q[20];
rz(0) q[18];
rx(0.5*pi) q[18];
rz(7.076670861935337) q[18];
rx(0.5*pi) q[18];
rz(3*pi) q[18];
cx q[0],q[18];
cx q[1],q[18];
cx q[2],q[18];
cx q[3],q[18];
cx q[4],q[18];
cx q[5],q[18];
cx q[6],q[18];
cx q[7],q[18];
cx q[8],q[18];
cx q[9],q[18];
cx q[10],q[18];
cx q[11],q[18];
cx q[12],q[18];
cx q[13],q[18];
cx q[14],q[18];
cx q[15],q[18];
cx q[16],q[18];
cx q[17],q[18];
cx q[19],q[20];
rz(0) q[19];
rx(0.5*pi) q[19];
rz(6.582177942876534) q[19];
rx(0.5*pi) q[19];
rz(3*pi) q[19];
cx q[0],q[19];
cx q[1],q[19];
cx q[2],q[19];
cx q[3],q[19];
cx q[4],q[19];
cx q[5],q[19];
cx q[6],q[19];
cx q[7],q[19];
cx q[8],q[19];
cx q[9],q[19];
cx q[10],q[19];
cx q[11],q[19];
cx q[12],q[19];
cx q[13],q[19];
cx q[14],q[19];
cx q[15],q[19];
cx q[16],q[19];
cx q[17],q[19];
cx q[18],q[19];
rz(0) q[20];
rx(0.5*pi) q[20];
rz(8.289324667147273) q[20];
rx(0.5*pi) q[20];
rz(3*pi) q[20];
cx q[0],q[20];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(4.391616911799234) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
cx q[1],q[20];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(8.525341884444607) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
cx q[0],q[1];
cx q[2],q[20];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(5.3510913509004085) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
cx q[0],q[2];
cx q[1],q[2];
cx q[3],q[20];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(7.883183941107185) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
cx q[4],q[20];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(5.0011749017439815) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
cx q[0],q[4];
cx q[1],q[4];
cx q[2],q[4];
cx q[3],q[4];
cx q[5],q[20];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(8.695529354448688) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
cx q[0],q[5];
cx q[1],q[5];
cx q[2],q[5];
cx q[3],q[5];
cx q[4],q[5];
cx q[6],q[20];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(5.186842593733342) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
cx q[0],q[6];
cx q[1],q[6];
cx q[2],q[6];
cx q[3],q[6];
cx q[4],q[6];
cx q[5],q[6];
cx q[7],q[20];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(4.178418117589796) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
cx q[0],q[7];
cx q[1],q[7];
cx q[2],q[7];
cx q[3],q[7];
cx q[4],q[7];
cx q[5],q[7];
cx q[6],q[7];
cx q[8],q[20];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(5.607926631793301) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
cx q[0],q[8];
cx q[1],q[8];
cx q[2],q[8];
cx q[3],q[8];
cx q[4],q[8];
cx q[5],q[8];
cx q[6],q[8];
cx q[7],q[8];
cx q[9],q[20];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(3.7288215058202057) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
cx q[0],q[9];
cx q[1],q[9];
cx q[2],q[9];
cx q[3],q[9];
cx q[4],q[9];
cx q[5],q[9];
cx q[6],q[9];
cx q[7],q[9];
cx q[8],q[9];
cx q[10],q[20];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(8.30075165855281) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
cx q[0],q[10];
cx q[1],q[10];
cx q[2],q[10];
cx q[3],q[10];
cx q[4],q[10];
cx q[5],q[10];
cx q[6],q[10];
cx q[7],q[10];
cx q[8],q[10];
cx q[9],q[10];
cx q[11],q[20];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(4.091308802558471) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
cx q[0],q[11];
cx q[1],q[11];
cx q[2],q[11];
cx q[3],q[11];
cx q[4],q[11];
cx q[5],q[11];
cx q[6],q[11];
cx q[7],q[11];
cx q[8],q[11];
cx q[9],q[11];
cx q[10],q[11];
cx q[12],q[20];
rz(0) q[12];
rx(0.5*pi) q[12];
rz(5.555054913888009) q[12];
rx(0.5*pi) q[12];
rz(3*pi) q[12];
cx q[0],q[12];
cx q[1],q[12];
cx q[2],q[12];
cx q[3],q[12];
cx q[4],q[12];
cx q[5],q[12];
cx q[6],q[12];
cx q[7],q[12];
cx q[8],q[12];
cx q[9],q[12];
cx q[10],q[12];
cx q[11],q[12];
cx q[13],q[20];
rz(0) q[13];
rx(0.5*pi) q[13];
rz(9.07455768687556) q[13];
rx(0.5*pi) q[13];
rz(3*pi) q[13];
cx q[0],q[13];
cx q[1],q[13];
cx q[2],q[13];
cx q[3],q[13];
cx q[4],q[13];
cx q[5],q[13];
cx q[6],q[13];
cx q[7],q[13];
cx q[8],q[13];
cx q[9],q[13];
cx q[10],q[13];
cx q[11],q[13];
cx q[12],q[13];
cx q[14],q[20];
rz(0) q[14];
rx(0.5*pi) q[14];
rz(9.347026526489497) q[14];
rx(0.5*pi) q[14];
rz(3*pi) q[14];
cx q[0],q[14];
cx q[1],q[14];
cx q[2],q[14];
cx q[3],q[14];
cx q[4],q[14];
cx q[5],q[14];
cx q[6],q[14];
cx q[7],q[14];
cx q[8],q[14];
cx q[9],q[14];
cx q[10],q[14];
cx q[11],q[14];
cx q[12],q[14];
cx q[13],q[14];
cx q[15],q[20];
rz(0) q[15];
rx(0.5*pi) q[15];
rz(6.008638679494975) q[15];
rx(0.5*pi) q[15];
rz(3*pi) q[15];
cx q[0],q[15];
cx q[1],q[15];
cx q[2],q[15];
cx q[3],q[15];
cx q[4],q[15];
cx q[5],q[15];
cx q[6],q[15];
cx q[7],q[15];
cx q[8],q[15];
cx q[9],q[15];
cx q[10],q[15];
cx q[11],q[15];
cx q[12],q[15];
cx q[13],q[15];
cx q[14],q[15];
cx q[16],q[20];
rz(0) q[16];
rx(0.5*pi) q[16];
rz(8.332275567947912) q[16];
rx(0.5*pi) q[16];
rz(3*pi) q[16];
cx q[0],q[16];
cx q[1],q[16];
cx q[2],q[16];
cx q[3],q[16];
cx q[4],q[16];
cx q[5],q[16];
cx q[6],q[16];
cx q[7],q[16];
cx q[8],q[16];
cx q[9],q[16];
cx q[10],q[16];
cx q[11],q[16];
cx q[12],q[16];
cx q[13],q[16];
cx q[14],q[16];
cx q[15],q[16];
cx q[17],q[20];
rz(0) q[17];
rx(0.5*pi) q[17];
rz(4.721022920244578) q[17];
rx(0.5*pi) q[17];
rz(3*pi) q[17];
cx q[0],q[17];
cx q[1],q[17];
cx q[2],q[17];
cx q[3],q[17];
cx q[4],q[17];
cx q[5],q[17];
cx q[6],q[17];
cx q[7],q[17];
cx q[8],q[17];
cx q[9],q[17];
cx q[10],q[17];
cx q[11],q[17];
cx q[12],q[17];
cx q[13],q[17];
cx q[14],q[17];
cx q[15],q[17];
cx q[16],q[17];
cx q[18],q[20];
rz(0) q[18];
rx(0.5*pi) q[18];
rz(6.894989416679738) q[18];
rx(0.5*pi) q[18];
rz(3*pi) q[18];
cx q[0],q[18];
cx q[1],q[18];
cx q[2],q[18];
cx q[3],q[18];
cx q[4],q[18];
cx q[5],q[18];
cx q[6],q[18];
cx q[7],q[18];
cx q[8],q[18];
cx q[9],q[18];
cx q[10],q[18];
cx q[11],q[18];
cx q[12],q[18];
cx q[13],q[18];
cx q[14],q[18];
cx q[15],q[18];
cx q[16],q[18];
cx q[17],q[18];
cx q[19],q[20];
rz(0) q[19];
rx(0.5*pi) q[19];
rz(8.814251904960557) q[19];
rx(0.5*pi) q[19];
rz(3*pi) q[19];
cx q[0],q[19];
cx q[1],q[19];
cx q[2],q[19];
cx q[3],q[19];
cx q[4],q[19];
cx q[5],q[19];
cx q[6],q[19];
cx q[7],q[19];
cx q[8],q[19];
cx q[9],q[19];
cx q[10],q[19];
cx q[11],q[19];
cx q[12],q[19];
cx q[13],q[19];
cx q[14],q[19];
cx q[15],q[19];
cx q[16],q[19];
cx q[17],q[19];
cx q[18],q[19];
rz(0) q[20];
rx(0.5*pi) q[20];
rz(6.500319303337415) q[20];
rx(0.5*pi) q[20];
rz(3*pi) q[20];
cx q[0],q[20];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(6.8499371857771685) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
cx q[1],q[20];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(3.3884072762603954) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
cx q[2],q[20];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(5.385831831434876) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
cx q[3],q[20];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(3.641816451916911) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
cx q[4],q[20];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(5.060853924453665) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
cx q[5],q[20];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(5.219563375436467) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
cx q[6],q[20];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(8.003711800990637) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
cx q[7],q[20];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(3.392663766517181) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
cx q[8],q[20];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(5.8401715986600164) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
cx q[9],q[20];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(5.120336547587801) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
cx q[10],q[20];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(7.140784451861729) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
cx q[11],q[20];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(5.31775597815618) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
cx q[12],q[20];
rz(0) q[12];
rx(0.5*pi) q[12];
rz(3.4123813288752993) q[12];
rx(0.5*pi) q[12];
rz(3*pi) q[12];
cx q[13],q[20];
rz(0) q[13];
rx(0.5*pi) q[13];
rz(8.670262749685126) q[13];
rx(0.5*pi) q[13];
rz(3*pi) q[13];
cx q[14],q[20];
rz(0) q[14];
rx(0.5*pi) q[14];
rz(7.937174696574091) q[14];
rx(0.5*pi) q[14];
rz(3*pi) q[14];
cx q[15],q[20];
rz(0) q[15];
rx(0.5*pi) q[15];
rz(8.658836577442345) q[15];
rx(0.5*pi) q[15];
rz(3*pi) q[15];
cx q[16],q[20];
rz(0) q[16];
rx(0.5*pi) q[16];
rz(5.764879971773803) q[16];
rx(0.5*pi) q[16];
rz(3*pi) q[16];
cx q[17],q[20];
rz(0) q[17];
rx(0.5*pi) q[17];
rz(6.946548708546246) q[17];
rx(0.5*pi) q[17];
rz(3*pi) q[17];
cx q[18],q[20];
rz(0) q[18];
rx(0.5*pi) q[18];
rz(6.367798622648606) q[18];
rx(0.5*pi) q[18];
rz(3*pi) q[18];
cx q[19],q[20];
rz(0) q[19];
rx(0.5*pi) q[19];
rz(6.897911096164243) q[19];
rx(0.5*pi) q[19];
rz(3*pi) q[19];
rz(0) q[20];
rx(0.5*pi) q[20];
rz(4.789142242926444) q[20];
rx(0.5*pi) q[20];
rz(3*pi) q[20];
