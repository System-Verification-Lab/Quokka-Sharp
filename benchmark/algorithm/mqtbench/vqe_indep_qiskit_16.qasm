// Benchmark was created by MQT Bench on 2023-06-30
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
s q[0];
h q[0];
rz(-3.13973894554034) q[0];
h q[0];
sdg q[0];
s q[1];
h q[1];
rz(-1.4925136011457) q[1];
h q[1];
sdg q[1];
s q[2];
h q[2];
rz(8.9920665716782e-5) q[2];
h q[2];
sdg q[2];
s q[3];
h q[3];
rz(1.23257522218457) q[3];
h q[3];
sdg q[3];
s q[4];
h q[4];
rz(-1.86054637652338) q[4];
h q[4];
sdg q[4];
s q[5];
h q[5];
rz(-2.61201045851137) q[5];
h q[5];
sdg q[5];
s q[6];
h q[6];
rz(-0.319115428371679) q[6];
h q[6];
sdg q[6];
s q[7];
h q[7];
rz(1.47022955753925) q[7];
h q[7];
sdg q[7];
s q[8];
h q[8];
rz(2.12360657717647) q[8];
h q[8];
sdg q[8];
s q[9];
h q[9];
rz(-2.37397708003484) q[9];
h q[9];
sdg q[9];
s q[10];
h q[10];
rz(2.07913035042815) q[10];
h q[10];
sdg q[10];
s q[11];
h q[11];
rz(2.92960134875116) q[11];
h q[11];
sdg q[11];
s q[12];
h q[12];
rz(-2.83093527610263) q[12];
h q[12];
sdg q[12];
s q[13];
h q[13];
rz(0.0127668597893102) q[13];
h q[13];
sdg q[13];
s q[14];
h q[14];
rz(1.57124469944394) q[14];
h q[14];
sdg q[14];
s q[15];
h q[15];
rz(-pi) q[15];
h q[15];
sdg q[15];
cx q[14],q[15];
cx q[13],q[14];
cx q[12],q[13];
cx q[11],q[12];
cx q[10],q[11];
s q[11];
h q[11];
rz(-1.57079329385953) q[11];
h q[11];
sdg q[11];
s q[12];
h q[12];
rz(-1.57076320854782) q[12];
h q[12];
sdg q[12];
s q[13];
h q[13];
rz(1.57081961034328) q[13];
h q[13];
sdg q[13];
s q[14];
h q[14];
rz(-1.47379781943072) q[14];
h q[14];
sdg q[14];
s q[15];
h q[15];
rz(-1.47389144321857) q[15];
h q[15];
sdg q[15];
cx q[14],q[15];
cx q[13],q[14];
cx q[12],q[13];
cx q[11],q[12];
s q[12];
h q[12];
rz(-1.78274501735686) q[12];
h q[12];
sdg q[12];
s q[13];
h q[13];
rz(1.26033905435792) q[13];
h q[13];
sdg q[13];
s q[14];
h q[14];
rz(-1.55796048690872) q[14];
h q[14];
sdg q[14];
s q[15];
h q[15];
rz(-pi) q[15];
h q[15];
sdg q[15];
cx q[9],q[10];
s q[10];
h q[10];
rz(-1.57083940178388) q[10];
h q[10];
sdg q[10];
cx q[10],q[11];
s q[11];
h q[11];
rz(0.508317471527251) q[11];
h q[11];
sdg q[11];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
s q[0];
h q[0];
rz(-3.08922570257331) q[0];
h q[0];
sdg q[0];
s q[1];
h q[1];
rz(0.248645933369785) q[1];
h q[1];
sdg q[1];
s q[2];
h q[2];
rz(-0.249379145067341) q[2];
h q[2];
sdg q[2];
s q[3];
h q[3];
rz(1.57092146383541) q[3];
h q[3];
sdg q[3];
s q[4];
h q[4];
rz(1.5707704269882) q[4];
h q[4];
sdg q[4];
s q[5];
h q[5];
rz(1.57073354865701) q[5];
h q[5];
sdg q[5];
s q[6];
h q[6];
rz(1.57081347984267) q[6];
h q[6];
sdg q[6];
s q[7];
h q[7];
rz(-1.57076694138358) q[7];
h q[7];
sdg q[7];
s q[8];
h q[8];
rz(1.57079002828038) q[8];
h q[8];
sdg q[8];
s q[9];
h q[9];
rz(-1.57094441646279) q[9];
h q[9];
sdg q[9];
cx q[9],q[10];
s q[10];
h q[10];
rz(2.3384683897403) q[10];
h q[10];
sdg q[10];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
s q[0];
h q[0];
rz(0.0524172519797756) q[0];
h q[0];
sdg q[0];
s q[1];
h q[1];
rz(-1.64677588035859) q[1];
h q[1];
sdg q[1];
s q[2];
h q[2];
rz(0.0193121701337888) q[2];
h q[2];
sdg q[2];
s q[3];
h q[3];
rz(0.332992055921446) q[3];
h q[3];
sdg q[3];
s q[4];
h q[4];
rz(-0.338261348290758) q[4];
h q[4];
sdg q[4];
s q[5];
h q[5];
rz(0.289668053994937) q[5];
h q[5];
sdg q[5];
s q[6];
h q[6];
rz(1.16523586650075) q[6];
h q[6];
sdg q[6];
s q[7];
h q[7];
rz(1.25167089132833) q[7];
h q[7];
sdg q[7];
s q[8];
h q[8];
rz(3.04098757877868) q[8];
h q[8];
sdg q[8];
s q[9];
h q[9];
rz(-0.552777507970122) q[9];
h q[9];
sdg q[9];