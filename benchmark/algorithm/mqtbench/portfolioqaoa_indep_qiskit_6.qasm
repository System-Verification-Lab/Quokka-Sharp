// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
rz(0.0034559680191952324) q[0];
s q[0];
h q[0];
rz(-0.5*pi) q[0];
h q[0];
sdg q[0];
rz(-pi) q[0];
rz(-0.0005051053317757237) q[1];
s q[1];
h q[1];
rz(-0.5*pi) q[1];
h q[1];
sdg q[1];
rz(-pi) q[1];
cx q[0], q[1];
rx(0.30640835800234384) q[1];
cx q[0], q[1];
rz(-0.00029925130246333254) q[2];
s q[2];
h q[2];
rz(-0.5*pi) q[2];
h q[2];
sdg q[2];
rz(-pi) q[2];
cx q[0], q[2];
rx(0.3064578071108339) q[2];
cx q[0], q[2];
cx q[1], q[2];
rx(0.30641123969344364) q[2];
cx q[1], q[2];
rz(-0.0006473901644978852) q[3];
s q[3];
h q[3];
rz(-0.5*pi) q[3];
h q[3];
sdg q[3];
rz(-pi) q[3];
cx q[0], q[3];
rx(0.3064382202982792) q[3];
cx q[0], q[3];
cx q[1], q[3];
rx(0.3064321236130968) q[3];
cx q[1], q[3];
cx q[2], q[3];
rx(0.30643112647579906) q[3];
cx q[2], q[3];
rz(-0.012870739783510388) q[4];
s q[4];
h q[4];
rz(-0.5*pi) q[4];
h q[4];
sdg q[4];
rz(-pi) q[4];
cx q[0], q[4];
rx(0.3061241270907537) q[4];
cx q[0], q[4];
cx q[1], q[4];
rx(0.3064529865522876) q[4];
cx q[1], q[4];
cx q[2], q[4];
rx(0.3062438001194054) q[4];
cx q[2], q[4];
cx q[3], q[4];
rx(0.3064907532354401) q[4];
cx q[3], q[4];
rz(-0.0010250221512837498) q[5];
s q[5];
h q[5];
rz(-0.5*pi) q[5];
h q[5];
sdg q[5];
rz(-pi) q[5];
cx q[0], q[5];
rx(0.3064297198462831) q[5];
cx q[0], q[5];
rz(4.752570971023836) q[0];
rx(1.5707963267948966) q[0];
rz(3.6396869352287253) q[0];
rx(1.5707963267948966) q[0];
rz(-pi/2) q[0];
cx q[1], q[5];
rx(0.30645277488492745) q[5];
cx q[1], q[5];
rz(4.706516201006966) q[1];
rx(1.5707963267948966) q[1];
rz(3.6396869352287253) q[1];
rx(1.5707963267948966) q[1];
rz(-pi/2) q[1];
cx q[0], q[1];
rx(3.5625612576914834) q[1];
cx q[0], q[1];
cx q[2], q[5];
rx(0.3063943933113396) q[5];
cx q[2], q[5];
rz(4.708909633073736) q[2];
rx(1.5707963267948966) q[2];
rz(3.6396869352287253) q[2];
rx(1.5707963267948966) q[2];
rz(-pi/2) q[2];
cx q[0], q[2];
rx(3.5631361946131874) q[2];
cx q[0], q[2];
cx q[1], q[2];
rx(3.5625947626556944) q[2];
cx q[1], q[2];
cx q[3], q[5];
rx(0.30645035976402574) q[5];
cx q[3], q[5];
rz(4.704861877881067) q[3];
rx(1.5707963267948966) q[3];
rz(3.6396869352287253) q[3];
rx(1.5707963267948966) q[3];
rz(-pi/2) q[3];
cx q[0], q[3];
rx(3.5629084618580364) q[3];
cx q[0], q[3];
cx q[1], q[3];
rx(3.5628375766688305) q[3];
cx q[1], q[3];
cx q[2], q[3];
rx(3.5628259831120213) q[3];
cx q[2], q[3];
cx q[4], q[5];
rx(0.3063413283269469) q[5];
cx q[4], q[5];
rz(4.562742935448108) q[4];
rx(1.5707963267948966) q[4];
rz(3.6396869352287253) q[4];
rx(1.5707963267948966) q[4];
rz(-pi/2) q[4];
cx q[0], q[4];
rx(3.559256550076877) q[4];
cx q[0], q[4];
cx q[1], q[4];
rx(3.563080146745467) q[4];
cx q[1], q[4];
cx q[2], q[4];
rx(3.5606479693522672) q[4];
cx q[2], q[4];
cx q[3], q[4];
rx(3.563519253965348) q[4];
cx q[3], q[4];
rz(4.700471210816504) q[5];
rx(1.5707963267948966) q[5];
rz(3.6396869352287253) q[5];
rx(1.5707963267948966) q[5];
rz(-pi/2) q[5];
cx q[0], q[5];
rx(3.5628096284543016) q[5];
cx q[0], q[5];
rz(4.721670058006571) q[0];
rx(1.5707963267948966) q[0];
rz(6.170821831310273) q[0];
rx(1.5707963267948966) q[0];
rz(-pi/2) q[0];
cx q[1], q[5];
rx(3.5630776857227273) q[5];
cx q[1], q[5];
rz(4.711032508980614) q[1];
rx(1.5707963267948966) q[1];
rz(6.170821831310273) q[1];
rx(1.5707963267948966) q[1];
rz(-pi/2) q[1];
cx q[0], q[1];
rx(0.8228663398554805) q[1];
cx q[0], q[1];
cx q[2], q[5];
rx(3.5623988924496484) q[5];
cx q[2], q[5];
rz(4.7115853344738525) q[2];
rx(1.5707963267948966) q[2];
rz(6.170821831310273) q[2];
rx(1.5707963267948966) q[2];
rz(-pi/2) q[2];
cx q[0], q[2];
rx(0.8229991365166998) q[2];
cx q[0], q[2];
cx q[1], q[2];
rx(0.8228740786998885) q[2];
cx q[1], q[2];
cx q[3], q[5];
rx(3.563049605496022) q[5];
cx q[3], q[5];
rz(4.710650399953686) q[3];
rx(1.5707963267948966) q[3];
rz(6.170821831310273) q[3];
rx(1.5707963267948966) q[3];
rz(-pi/2) q[3];
cx q[0], q[3];
rx(0.8229465357036495) q[3];
cx q[0], q[3];
cx q[1], q[3];
rx(0.822930162922391) q[3];
cx q[1], q[3];
cx q[2], q[3];
rx(0.8229274850883925) q[3];
cx q[2], q[3];
cx q[4], q[5];
rx(3.5617819143137712) q[5];
cx q[4], q[5];
rz(4.677824327494873) q[4];
rx(1.5707963267948966) q[4];
rz(6.170821831310273) q[4];
rx(1.5707963267948966) q[4];
rz(-pi/2) q[4];
cx q[0], q[4];
rx(0.8221030315325001) q[4];
cx q[0], q[4];
cx q[1], q[4];
rx(0.8229861908014034) q[4];
cx q[1], q[4];
cx q[2], q[4];
rx(0.8224244160655724) q[4];
cx q[2], q[4];
cx q[3], q[4];
rx(0.8230876140541399) q[4];
cx q[3], q[4];
rz(4.7096362610026326) q[5];
rx(1.5707963267948966) q[5];
rz(6.170821831310273) q[5];
rx(1.5707963267948966) q[5];
rz(-pi/2) q[5];
cx q[0], q[5];
rx(0.8229237075540952) q[5];
cx q[0], q[5];
rx(6.436654741410069) q[0];
cx q[1], q[5];
rx(0.8229856223640832) q[5];
cx q[1], q[5];
rx(6.436654741410069) q[1];
cx q[2], q[5];
rx(0.8228288373726867) q[5];
cx q[2], q[5];
rx(6.436654741410069) q[2];
cx q[3], q[5];
rx(0.8229791365041359) q[5];
cx q[3], q[5];
rx(6.436654741410069) q[3];
cx q[4], q[5];
rx(0.8226863301977311) q[5];
cx q[4], q[5];
rx(6.436654741410069) q[4];
rx(6.436654741410069) q[5];