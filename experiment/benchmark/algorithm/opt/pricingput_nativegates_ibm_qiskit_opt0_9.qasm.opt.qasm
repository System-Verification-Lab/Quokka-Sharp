OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
cx q[7], q[8];
cx q[8], q[7];
cx q[7], q[8];
cx q[6], q[7];
cx q[7], q[6];
cx q[6], q[7];
cx q[5], q[8];
cx q[8], q[5];
cx q[5], q[8];
cx q[3], q[8];
cx q[8], q[3];
cx q[3], q[8];
cx q[2], q[8];
cx q[8], q[2];
cx q[2], q[8];
cx q[0], q[4];
cx q[4], q[0];
cx q[0], q[4];
h q[8];
h q[6];
h q[3];
h q[2];
h q[1];
rz(0.5*pi) q[2];
rz(0.5*pi) q[8];
h q[2];
h q[8];
cz q[2], q[8];
rz(0.9818529749128366*pi) q[2];
rz(1.5*pi) q[1];
h q[2];
h q[1];
h q[4];
cz q[2], q[8];
cz q[2], q[4];
cz q[1], q[2];
rz(0.7956928582788115*pi) q[2];
h q[2];
cz q[4], q[8];
cz q[2], q[8];
rz(0.5281838926074924*pi) q[8];
rz(0.4653974764912548*pi) q[1];
rz(0.5*pi) q[4];
h q[8];
h q[1];
h q[4];
cz q[4], q[8];
cz q[2], q[8];
cz q[1], q[8];
rz(0.5908543136689114*pi) q[8];
h q[8];
h q[2];
cz q[2], q[8];
cz q[2], q[4];
cz q[1], q[2];
rz(0.04186283938875371*pi) q[2];
h q[2];
h q[1];
cz q[1], q[4];
cz q[1], q[2];
rz(1.8118412974121905*pi) q[1];
h q[1];
rz(0.9925897316016004*pi) q[1];
h q[1];
cx q[1], q[2];
h q[1];
rz(1.029641533391036*pi) q[1];
h q[1];
cx q[1], q[8];
rz(0.11099107598988978*pi) q[4];
h q[4];
cx q[4], q[2];
h q[4];
rz(1.9677358079862377*pi) q[4];
h q[4];
cx q[4], q[8];
h q[6];
cx q[6], q[2];
h q[1];
rz(0.015700423609464536*pi) q[1];
h q[1];
cx q[1], q[2];
h q[4];
rz(1.9405816706085364*pi) q[4];
h q[4];
cx q[4], q[2];
h q[6];
cx q[6], q[2];
cx q[2], q[8];
h q[0];
cx q[0], q[8];
rz(0.5*pi) q[0];
h q[0];
cx q[0], q[1];
h q[3];
cx q[3], q[8];
h q[7];
cx q[7], q[8];
h q[3];
cx q[3], q[8];
rz(0.11661769870176808*pi) q[0];
h q[0];
cx q[0], q[2];
h q[0];
cz q[0], q[7];
cz q[0], q[3];
rz(1.941691150649116*pi) q[0];
h q[0];
cx q[0], q[8];
rz(1.0*pi) q[5];
h q[5];
cx q[5], q[2];
h q[1];
cz q[1], q[7];
cz q[1], q[5];
cz q[0], q[1];
rz(0.996792264880219*pi) q[1];
h q[1];
cx q[1], q[2];
h q[4];
cz q[4], q[7];
cz q[4], q[5];
cz q[1], q[4];
cz q[0], q[4];
rz(0.03008248555419021*pi) q[4];
h q[4];
cz q[5], q[7];
cz q[4], q[7];
h q[7];
cx q[7], q[1];
rz(1.75*pi) q[7];
h q[7];
cx q[7], q[1];
rz(0.75*pi) q[5];
h q[5];
cx q[5], q[1];
h q[7];
rz(0.75*pi) q[7];
h q[7];
h q[5];
cz q[5], q[7];
cz q[5], q[6];
rz(1.75*pi) q[5];
h q[5];
cx q[5], q[2];
cx q[2], q[8];
rz(1.75*pi) q[6];
h q[6];
cx q[6], q[2];
rz(0.25*pi) q[5];
h q[5];
cx q[5], q[2];
cx q[2], q[8];
h q[6];
rz(1.25*pi) q[6];
h q[6];
h q[5];
cz q[5], q[6];
cz q[3], q[5];
rz(1.75*pi) q[5];
h q[5];
cx q[5], q[2];
cx q[2], q[8];
rz(1.75*pi) q[5];
h q[5];
cx q[5], q[8];
rz(1.75*pi) q[3];
h q[3];
cx q[3], q[8];
h q[5];
rz(0.25*pi) q[5];
h q[5];
h q[3];
cz q[3], q[5];
rz(0.25*pi) q[3];
h q[3];
cx q[3], q[2];
cx q[3], q[1];
h q[0];
rz(0.029154424675441937*pi) q[0];
h q[0];
cx q[0], q[1];
rz(1.014577212337721*pi) q[4];
rz(1.1177113938311423*pi) q[3];
h q[4];
h q[3];
h q[0];
cz q[0], q[4];
cz q[0], q[3];
rz(0.2886304211030426*pi) q[0];
h q[0];
rz(0.75*pi) q[0];
h q[0];
cx q[0], q[4];
h q[0];
rz(1.25*pi) q[0];
h q[0];
cx q[0], q[3];
h q[0];
cz q[0], q[4];
rz(0.75*pi) q[0];
h q[0];
h q[4];
cz q[0], q[4];
rz(1.25*pi) q[4];
h q[4];
rz(1.4927113938311423*pi) q[4];
h q[4];
cx q[4], q[3];
h q[4];
rz(0.5072886061688576*pi) q[4];
h q[4];
cx q[4], q[0];
rz(0.75*pi) q[4];
h q[4];
cx q[4], q[3];
h q[4];
rz(1.75*pi) q[4];
h q[4];
cx q[4], q[0];
h q[4];
rz(0.25*pi) q[4];
h q[4];
cx q[4], q[3];
h q[4];
rz(1.25*pi) q[4];
h q[4];
cx q[4], q[0];
rz(0.48542278766227903*pi) q[4];
h q[4];
cx q[4], q[3];
h q[4];
rz(1.514577212337721*pi) q[4];
h q[4];
cx q[4], q[3];
cx q[4], q[1];
rz(1.75*pi) q[4];
h q[4];
cx q[4], q[1];
h q[4];
rz(0.25*pi) q[4];
h q[4];
cx q[4], q[3];
h q[4];
cz q[1], q[4];
rz(1.25*pi) q[4];
h q[4];
h q[1];
cz q[1], q[4];
rz(0.75*pi) q[1];
h q[1];
cx q[1], q[3];
rz(0.5145772123377209*pi) q[1];
h q[1];
cx q[1], q[3];
h q[1];
rz(1.485422787662279*pi) q[1];
h q[1];
rz(0.75*pi) q[1];
h q[1];
cx q[1], q[4];
h q[1];
rz(1.25*pi) q[1];
h q[1];
cx q[1], q[3];
h q[1];
cz q[1], q[4];
rz(1.75*pi) q[1];
h q[1];
h q[4];
cz q[1], q[4];
rz(0.25*pi) q[4];
h q[4];
cx q[4], q[3];
cx q[4], q[2];
rz(0.5291544246754419*pi) q[4];
h q[4];
cx q[4], q[3];
h q[4];
rz(1.4708455753245582*pi) q[4];
h q[4];
cx q[4], q[2];
rz(0.75*pi) q[4];
h q[4];
cx q[4], q[3];
cx q[4], q[2];
h q[4];
rz(0.75*pi) q[4];
h q[4];
cx q[4], q[2];
h q[4];
rz(0.75*pi) q[4];
h q[4];
cx q[4], q[3];
cx q[4], q[2];
h q[4];
rz(1.75*pi) q[4];
h q[4];
cx q[4], q[3];
cx q[4], q[2];
rz(0.5291544246754419*pi) q[4];
h q[4];
cx q[4], q[3];
h q[4];
rz(1.4708455753245582*pi) q[4];
h q[4];
cx q[4], q[3];
cx q[4], q[2];
rz(1.25*pi) q[4];
h q[4];
cx q[4], q[2];
h q[4];
rz(1.75*pi) q[4];
h q[4];
cx q[4], q[3];
cx q[4], q[2];
h q[4];
rz(1.25*pi) q[4];
h q[4];
cx q[4], q[2];
cx q[2], q[8];
cx q[2], q[6];
h q[4];
rz(1.75*pi) q[4];
h q[4];
cx q[4], q[3];
rz(1.558308849350884*pi) q[4];
h q[4];
cx q[4], q[3];
h q[4];
rz(0.44169115064911596*pi) q[4];
h q[4];
cx q[4], q[8];
rz(0.75*pi) q[4];
h q[4];
cx q[4], q[3];
h q[4];
rz(1.75*pi) q[4];
h q[4];
cx q[4], q[8];
h q[4];
rz(0.25*pi) q[4];
h q[4];
cx q[4], q[3];
h q[4];
rz(1.25*pi) q[4];
h q[4];
cx q[4], q[3];
rz(0.5583088493508841*pi) q[4];
h q[4];
cx q[4], q[3];
h q[4];
rz(1.441691150649116*pi) q[4];
h q[4];
cx q[4], q[8];
rz(1.25*pi) q[4];
h q[4];
cx q[4], q[3];
h q[4];
rz(0.25*pi) q[4];
h q[4];
cx q[4], q[8];
h q[4];
rz(1.75*pi) q[4];
h q[4];
cx q[4], q[3];
rz(0.25*pi) q[3];
h q[3];
cx q[3], q[8];
cx q[3], q[5];
h q[3];
cz q[3], q[8];
cz q[3], q[5];
cz q[2], q[3];
rz(0.75*pi) q[3];
h q[3];
h q[8];
cz q[3], q[8];
cz q[2], q[8];
rz(1.25*pi) q[8];
h q[8];
cx q[8], q[5];
rz(0.25*pi) q[8];
h q[8];
cx q[8], q[2];
h q[8];
rz(1.25*pi) q[8];
h q[8];
cx q[8], q[6];
h q[8];
cz q[2], q[8];
rz(0.75*pi) q[8];
h q[8];
cx q[8], q[6];
rz(0.25*pi) q[6];
h q[6];
cx q[6], q[7];
h q[6];
rz(0.25*pi) q[6];
h q[6];
cx q[6], q[1];
h q[6];
cz q[6], q[7];
rz(0.25*pi) q[6];
h q[6];
cx q[6], q[1];
cx q[6], q[0];
h q[5];
rz(1.75*pi) q[5];
h q[5];
cx q[5], q[3];
h q[2];
rz(0.75*pi) q[2];
h q[2];
cx q[2], q[8];
h q[4];
h q[7];
cz q[6], q[7];
rz(0.25*pi) q[7];
h q[7];
h q[6];
rz(0.25*pi) q[4];
h q[4];
h q[3];
rz(1.0*pi) q[2];
h q[2];
h q[1];
h q[0];