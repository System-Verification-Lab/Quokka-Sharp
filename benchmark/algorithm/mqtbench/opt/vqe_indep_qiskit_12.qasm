OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
s q[0];
s q[1];
s q[2];
s q[3];
h q[3];
rz(0.5133569195515109*pi) q[3];
s q[4];
s q[5];
cx q[4], q[5];
s q[6];
h q[6];
rz(0.00035646699208885383*pi) q[6];
s q[7];
h q[7];
rz(1.9956939988685944*pi) q[7];
s q[8];
s q[9];
h q[9];
rz(1.2387014403467378*pi) q[9];
s q[10];
cx q[9], q[10];
h q[10];
cx q[10], q[7];
cx q[10], q[8];
rz(0.4088766004016089*pi) q[10];
s q[11];
h q[11];
rz(1.996584751348144*pi) q[11];
cz q[6], q[7];
h q[8];
cz q[6], q[8];
rz(1.5501193750626976*pi) q[8];
cx q[8], q[7];
cx q[11], q[9];
cx q[10], q[11];
h q[11];
rz(1.4325928457091848*pi) q[11];
cx q[7], q[5];
cz q[4], q[7];
cx q[6], q[10];
cx q[9], q[10];
cx q[4], q[10];
cx q[11], q[10];
h q[5];
rz(0.9989491845524325*pi) q[5];
cx q[8], q[9];
cx q[5], q[10];
h q[10];
rz(1.5330366888466964*pi) q[10];
cx q[6], q[8];
cx q[5], q[8];
cx q[4], q[8];
h q[8];
rz(0.2340290555144688*pi) q[8];
cx q[3], q[6];
cx q[5], q[6];
cx q[9], q[6];
cx q[7], q[9];
cx q[10], q[9];
cx q[11], q[9];
cx q[4], q[3];
cx q[5], q[7];
cx q[8], q[7];
h q[9];
rz(1.0010824456717162*pi) q[9];
cx q[3], q[1];
cx q[3], q[0];
sdg q[3];
cx q[4], q[5];
h q[7];
rz(0.6633558231118375*pi) q[7];
cx q[7], q[5];
cz q[7], q[10];
h q[0];
rz(1.995131530797438*pi) q[0];
h q[1];
rz(1.5045567670516*pi) q[1];
cx q[1], q[2];
cx q[0], q[2];
h q[2];
rz(1.5360559325757697*pi) q[2];
cx q[1], q[4];
cx q[0], q[4];
h q[5];
rz(1.6633647746176619*pi) q[5];
cx q[5], q[4];
cx q[6], q[4];
cx q[8], q[4];
cx q[11], q[4];
cx q[0], q[1];
cx q[2], q[1];
cx q[0], q[2];
cx q[3], q[1];
cx q[5], q[2];
cx q[6], q[3];
cx q[6], q[2];
cx q[5], q[6];
cx q[8], q[6];
cx q[8], q[2];
cx q[9], q[2];
cx q[11], q[6];
cx q[11], q[2];
h q[1];
rz(0.4999402989505758*pi) q[1];
cx q[1], q[0];
cx q[3], q[0];
cx q[1], q[4];
h q[4];
rz(1.000185431830253*pi) q[4];
cx q[4], q[2];
cx q[5], q[0];
h q[5];
h q[6];
cz q[4], q[6];
cx q[6], q[2];
rz(1.499877717430242*pi) q[6];
cx q[8], q[0];
h q[8];
cz q[3], q[8];
cz q[5], q[9];
cz q[4], q[9];
cz q[6], q[9];
cz q[8], q[11];
cx q[11], q[0];
h q[0];
rz(0.4970677127080376*pi) q[0];
cx q[0], q[2];
h q[2];
rz(1.4995045815384889*pi) q[2];
h q[3];
cz q[0], q[3];
cz q[2], q[3];
rz(0.9378462735542826*pi) q[3];
cz q[3], q[4];
cz q[3], q[6];
cz q[0], q[6];
cx q[6], q[1];
cz q[3], q[7];
cx q[5], q[8];
cz q[0], q[9];
cx q[3], q[11];
sdg q[11];
cx q[10], q[11];
cx q[9], q[11];
cx q[4], q[11];
cx q[6], q[11];
cx q[0], q[11];
cx q[2], q[11];
cz q[3], q[11];
h q[1];
sdg q[1];
cx q[1], q[5];
h q[10];
cx q[10], q[8];
cz q[9], q[10];
cz q[7], q[10];
rz(1.0384176465487092*pi) q[10];
cx q[10], q[11];
cz q[4], q[8];
cz q[7], q[8];
cz q[6], q[8];
cz q[0], q[8];
cz q[2], q[8];
rz(1.0005856337816716*pi) q[8];
cx q[8], q[9];
sdg q[9];
cx q[4], q[9];
cx q[6], q[9];
cx q[0], q[9];
cx q[2], q[9];
cz q[8], q[9];
h q[10];
sdg q[10];
cx q[8], q[11];
h q[4];
cz q[0], q[4];
cz q[2], q[4];
cx q[4], q[5];
cz q[4], q[6];
h q[7];
cx q[7], q[5];
cx q[7], q[9];
cx q[7], q[11];
rz(1.46386828245393*pi) q[5];
cz q[5], q[6];
cx q[0], q[6];
h q[6];
cx q[6], q[4];
cz q[2], q[6];
rz(1.5131941810229945*pi) q[6];
cx q[5], q[9];
cx q[5], q[11];
h q[0];
rz(1.5041691332301914*pi) q[0];
cx q[0], q[1];
rz(1.446532886244142*pi) q[1];
cz q[0], q[2];
cz q[1], q[2];
cx q[1], q[2];
h q[2];
rz(0.5047831654502797*pi) q[2];
h q[2];
sdg q[2];
cz q[0], q[4];
cz q[1], q[4];
cz q[4], q[5];
h q[5];
sdg q[5];
cx q[0], q[9];
cx q[1], q[9];
cx q[0], q[11];
cx q[1], q[11];
h q[0];
sdg q[0];
h q[1];
sdg q[1];
cx q[6], q[4];
h q[6];
sdg q[6];
rz(1.5008863327323145*pi) q[4];
cx q[4], q[9];
cz q[8], q[9];
h q[9];
rz(0.00416393269314171*pi) q[9];
h q[9];
sdg q[9];
cx q[4], q[11];
cz q[3], q[11];
h q[11];
rz(0.003319538954883225*pi) q[11];
h q[11];
sdg q[11];
h q[3];
sdg q[3];
h q[4];
sdg q[4];
h q[8];
sdg q[8];
cx q[0], q[1];
cx q[1], q[0];
cx q[0], q[1];
cx q[1], q[2];
cx q[2], q[1];
cx q[1], q[2];
cx q[3], q[5];
cx q[5], q[3];
cx q[3], q[5];
cx q[4], q[6];
cx q[6], q[4];
cx q[4], q[6];
cx q[5], q[6];
cx q[6], q[5];
cx q[5], q[6];
cx q[6], q[7];
cx q[7], q[6];
cx q[6], q[7];
cx q[7], q[8];
cx q[8], q[7];
cx q[7], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];