// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
rz(-2.9228348931762094) q[0];
s q[0];
h q[0];
rz(-0.5*pi) q[0];
h q[0];
sdg q[0];
rz(-pi) q[0];
rz(-2.904402230453152) q[1];
s q[1];
h q[1];
rz(-0.5*pi) q[1];
h q[1];
sdg q[1];
rz(-pi) q[1];
cx q[0], q[1];
rx(-3.38540680648854) q[1];
cx q[0], q[1];
rz(-2.8975729894235105) q[2];
s q[2];
h q[2];
rz(-0.5*pi) q[2];
h q[2];
sdg q[2];
rz(-pi) q[2];
cx q[0], q[2];
rx(-3.3853585130077) q[2];
cx q[0], q[2];
cx q[1], q[2];
rx(-3.385453644100732) q[2];
cx q[1], q[2];
rz(-2.893511729559533) q[3];
s q[3];
h q[3];
rz(-0.5*pi) q[3];
h q[3];
sdg q[3];
rz(-pi) q[3];
cx q[0], q[3];
rx(-3.385159851923734) q[3];
cx q[0], q[3];
cx q[1], q[3];
rx(-3.3852978294193385) q[3];
cx q[1], q[3];
cx q[2], q[3];
rx(-3.385305238482944) q[3];
cx q[2], q[3];
rz(-2.8954097626154187) q[4];
s q[4];
h q[4];
rz(-0.5*pi) q[4];
h q[4];
sdg q[4];
rz(-pi) q[4];
cx q[0], q[4];
rx(-3.3847987682894027) q[4];
cx q[0], q[4];
cx q[1], q[4];
rx(-3.385301570677121) q[4];
cx q[1], q[4];
cx q[2], q[4];
rx(-3.385072191118839) q[4];
cx q[2], q[4];
cx q[3], q[4];
rx(-3.385347000948554) q[4];
cx q[3], q[4];
rz(-2.8695067666744736) q[5];
s q[5];
h q[5];
rz(-0.5*pi) q[5];
h q[5];
sdg q[5];
rz(-pi) q[5];
cx q[0], q[5];
rx(-3.385229142320833) q[5];
cx q[0], q[5];
cx q[1], q[5];
rx(-3.385312468226019) q[5];
cx q[1], q[5];
cx q[2], q[5];
rx(-3.3855580367121836) q[5];
cx q[2], q[5];
cx q[3], q[5];
rx(-3.3852314880938548) q[5];
cx q[3], q[5];
cx q[4], q[5];
rx(-3.3853828470165728) q[5];
cx q[4], q[5];
rz(-2.916251358307142) q[6];
s q[6];
h q[6];
rz(-0.5*pi) q[6];
h q[6];
sdg q[6];
rz(-pi) q[6];
cx q[0], q[6];
rx(-3.3843274450057104) q[6];
cx q[0], q[6];
rz(6.250270355030219) q[0];
rx(1.5707963267948966) q[0];
rz(5.6203395875672815) q[0];
rx(1.5707963267948966) q[0];
rz(-pi/2) q[0];
cx q[1], q[6];
rx(-3.3854484833299145) q[6];
cx q[1], q[6];
rz(6.258706156418308) q[1];
rx(1.5707963267948966) q[1];
rz(5.6203395875672815) q[1];
rx(1.5707963267948966) q[1];
rz(-pi/2) q[1];
cx q[0], q[1];
rx(-1.5493485594838012) q[1];
cx q[0], q[1];
cx q[2], q[6];
rx(-3.385508182455433) q[6];
cx q[2], q[6];
rz(6.261831593140229) q[2];
rx(1.5707963267948966) q[2];
rz(5.6203395875672815) q[2];
rx(1.5707963267948966) q[2];
rz(-pi/2) q[2];
cx q[0], q[2];
rx(-1.549326457727868) q[2];
cx q[0], q[2];
cx q[1], q[2];
rx(-1.5493699949540793) q[2];
cx q[1], q[2];
cx q[3], q[6];
rx(-3.3854089679198744) q[6];
cx q[3], q[6];
rz(6.263690249272155) q[3];
rx(1.5707963267948966) q[3];
rz(5.6203395875672815) q[3];
rx(1.5707963267948966) q[3];
rz(-pi/2) q[3];
cx q[0], q[3];
rx(-1.5492355394773114) q[3];
cx q[0], q[3];
cx q[1], q[3];
rx(-1.5492986855765178) q[3];
cx q[1], q[3];
cx q[2], q[3];
rx(-1.549302076371976) q[3];
cx q[2], q[3];
cx q[4], q[6];
rx(-3.385197102641506) q[6];
cx q[4], q[6];
rz(6.262821604837651) q[4];
rx(1.5707963267948966) q[4];
rz(5.6203395875672815) q[4];
rx(1.5707963267948966) q[4];
rz(-pi/2) q[4];
cx q[0], q[4];
rx(-1.5490702877245142) q[4];
cx q[0], q[4];
cx q[1], q[4];
rx(-1.5493003977820774) q[4];
cx q[1], q[4];
cx q[2], q[4];
rx(-1.5491954210662755) q[4];
cx q[2], q[4];
cx q[3], q[4];
rx(-1.5493211891757341) q[4];
cx q[3], q[4];
cx q[5], q[6];
rx(-3.3860939893075144) q[6];
cx q[5], q[6];
rz(6.274676242032359) q[5];
rx(1.5707963267948966) q[5];
rz(5.6203395875672815) q[5];
rx(1.5707963267948966) q[5];
rz(-pi/2) q[5];
cx q[0], q[5];
rx(-1.549267250578242) q[5];
cx q[0], q[5];
cx q[1], q[5];
rx(-1.5493053851004863) q[5];
cx q[1], q[5];
cx q[2], q[5];
rx(-1.5494177707610706) q[5];
cx q[2], q[5];
cx q[3], q[5];
rx(-1.549268324133138) q[5];
cx q[3], q[5];
cx q[4], q[5];
rx(-1.54933759431019) q[5];
cx q[4], q[5];
rz(6.253283343084166) q[6];
rx(1.5707963267948966) q[6];
rz(5.6203395875672815) q[6];
rx(1.5707963267948966) q[6];
rz(-pi/2) q[6];
cx q[0], q[6];
rx(-1.5488545842382329) q[6];
cx q[0], q[6];
rz(4.650258363402802) q[0];
rx(1.5707963267948966) q[0];
rz(5.8791091598513) q[0];
rx(1.5707963267948966) q[0];
rz(-pi/2) q[0];
cx q[1], q[6];
rx(-1.5493676331011945) q[6];
cx q[1], q[6];
rz(4.64991755587784) q[1];
rx(1.5707963267948966) q[1];
rz(5.8791091598513) q[1];
rx(1.5707963267948966) q[1];
rz(-pi/2) q[1];
cx q[0], q[1];
rx(0.06259389281108546) q[1];
cx q[0], q[1];
cx q[2], q[6];
rx(-1.5493949547081423) q[6];
cx q[2], q[6];
rz(4.6497912878086165) q[2];
rx(1.5707963267948966) q[2];
rz(5.8791091598513) q[2];
rx(1.5707963267948966) q[2];
rz(-pi/2) q[2];
cx q[0], q[2];
rx(0.06259299989713568) q[2];
cx q[0], q[2];
cx q[1], q[2];
rx(0.06259475880700402) q[2];
cx q[1], q[2];
cx q[3], q[6];
rx(-1.5493495486737914) q[6];
cx q[3], q[6];
rz(4.649716197847754) q[3];
rx(1.5707963267948966) q[3];
rz(5.8791091598513) q[3];
rx(1.5707963267948966) q[3];
rz(-pi/2) q[3];
cx q[0], q[3];
rx(0.06258932678743093) q[3];
cx q[0], q[3];
cx q[1], q[3];
rx(0.06259187789843881) q[3];
cx q[1], q[3];
cx q[2], q[3];
rx(0.06259201488703713) q[3];
cx q[2], q[3];
cx q[4], q[6];
rx(-1.5492525874568361) q[6];
cx q[4], q[6];
rz(4.64975129120121) q[4];
rx(1.5707963267948966) q[4];
rz(5.8791091598513) q[4];
rx(1.5707963267948966) q[4];
rz(-pi/2) q[4];
cx q[0], q[4];
rx(0.06258265059411204) q[4];
cx q[0], q[4];
cx q[1], q[4];
rx(0.06259194707177661) q[4];
cx q[1], q[4];
cx q[2], q[4];
rx(0.06258770599816128) q[4];
cx q[2], q[4];
cx q[3], q[4];
rx(0.06259278704691194) q[4];
cx q[3], q[4];
cx q[5], q[6];
rx(-1.5496630521789303) q[6];
cx q[5], q[6];
rz(4.649272362244044) q[5];
rx(1.5707963267948966) q[5];
rz(5.8791091598513) q[5];
rx(1.5707963267948966) q[5];
rz(-pi/2) q[5];
cx q[0], q[5];
rx(0.0625906079202273) q[5];
cx q[0], q[5];
cx q[1], q[5];
rx(0.06259214856011956) q[5];
cx q[1], q[5];
cx q[2], q[5];
rx(0.06259668895611312) q[5];
cx q[2], q[5];
cx q[3], q[5];
rx(0.0625906512919913) q[5];
cx q[3], q[5];
cx q[4], q[5];
rx(0.0625934498165782) q[5];
cx q[4], q[5];
rz(4.65013663827508) q[6];
rx(1.5707963267948966) q[6];
rz(5.8791091598513) q[6];
rx(1.5707963267948966) q[6];
rz(-pi/2) q[6];
cx q[0], q[6];
rx(0.06257393614388933) q[6];
cx q[0], q[6];
rx(7.626908301051288) q[0];
cx q[1], q[6];
rx(0.06259466338782581) q[6];
cx q[1], q[6];
rx(7.626908301051288) q[1];
cx q[2], q[6];
rx(0.06259576718446747) q[6];
cx q[2], q[6];
rx(7.626908301051288) q[2];
cx q[3], q[6];
rx(0.06259393277449578) q[6];
cx q[3], q[6];
rx(7.626908301051288) q[3];
cx q[4], q[6];
rx(0.06259001552812551) q[6];
cx q[4], q[6];
rx(7.626908301051288) q[4];
cx q[5], q[6];
rx(0.06260659835879986) q[6];
cx q[5], q[6];
rx(7.626908301051288) q[5];
rx(7.626908301051288) q[6];