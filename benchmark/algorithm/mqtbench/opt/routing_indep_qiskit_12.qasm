OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
s q[0];
s q[1];
s q[2];
h q[2];
rz(1.138740366179507*pi) q[2];
cx q[2], q[1];
cx q[2], q[0];
h q[2];
s q[3];
s q[4];
h q[4];
rz(0.10872424274850477*pi) q[4];
s q[5];
h q[5];
rz(1.7352185388150922*pi) q[5];
cz q[4], q[5];
cx q[5], q[3];
cx q[5], q[1];
cx q[5], q[0];
h q[5];
s q[6];
h q[6];
rz(0.655214295522348*pi) q[6];
cz q[4], q[6];
cx q[6], q[1];
cx q[6], q[3];
cx q[6], q[0];
cz q[5], q[6];
s q[7];
h q[7];
rz(1.8259854926995722*pi) q[7];
s q[8];
cx q[7], q[8];
cx q[6], q[8];
h q[8];
cz q[4], q[8];
cx q[8], q[3];
cx q[8], q[1];
cx q[8], q[0];
rz(1.9806165644624494*pi) q[8];
h q[8];
s q[9];
h q[9];
cz q[8], q[9];
cz q[7], q[9];
cz q[6], q[9];
cz q[4], q[9];
cx q[9], q[3];
cx q[9], q[1];
cx q[9], q[0];
rz(0.9671713034875049*pi) q[9];
s q[10];
h q[10];
rz(1.9962730324203133*pi) q[10];
s q[11];
cx q[10], q[11];
cx q[9], q[11];
cx q[8], q[11];
cx q[7], q[11];
cx q[6], q[11];
h q[11];
rz(1.6145103038947775*pi) q[11];
cx q[11], q[3];
cz q[4], q[11];
cx q[11], q[1];
cx q[11], q[0];
h q[3];
cz q[2], q[3];
cx q[3], q[1];
cx q[3], q[0];
rz(1.9276483057538447*pi) q[3];
cx q[5], q[8];
cx q[9], q[10];
cx q[7], q[10];
cx q[4], q[10];
cx q[6], q[10];
cx q[3], q[10];
cx q[11], q[10];
cx q[9], q[11];
h q[0];
s q[0];
h q[1];
rz(1.9949346858856098*pi) q[1];
cx q[2], q[5];
cx q[7], q[9];
cx q[6], q[9];
cx q[4], q[9];
cx q[3], q[9];
cx q[1], q[9];
h q[9];
rz(0.3677248136705038*pi) q[9];
cx q[1], q[10];
h q[10];
rz(0.8697105537189056*pi) q[10];
cx q[9], q[11];
h q[7];
cz q[6], q[7];
cz q[4], q[7];
cz q[3], q[7];
cz q[1], q[7];
rz(0.5406333063009972*pi) q[7];
cx q[7], q[8];
cz q[6], q[8];
rz(1.4831076520027042*pi) q[8];
cz q[8], q[9];
cz q[7], q[10];
cx q[8], q[11];
cx q[4], q[6];
cx q[3], q[6];
h q[6];
cz q[0], q[6];
cz q[1], q[6];
rz(0.9858751958499653*pi) q[6];
cz q[6], q[7];
cz q[6], q[8];
cz q[6], q[10];
h q[4];
cz q[3], q[4];
cz q[1], q[4];
rz(0.5223789589142859*pi) q[4];
cx q[4], q[5];
cz q[3], q[5];
rz(0.4785743850575473*pi) q[5];
cz q[4], q[6];
cz q[5], q[6];
cz q[4], q[7];
cz q[5], q[8];
cz q[5], q[9];
cz q[4], q[10];
cx q[0], q[3];
cx q[1], q[3];
cx q[4], q[3];
cx q[5], q[3];
cx q[7], q[3];
cx q[8], q[3];
cx q[10], q[3];
h q[1];
rz(0.5015485928962553*pi) q[1];
cx q[1], q[2];
rz(1.0663750394487488*pi) q[2];
cx q[2], q[3];
cx q[1], q[3];
cz q[1], q[4];
cz q[2], q[5];
cz q[2], q[6];
cz q[1], q[6];
cz q[1], q[7];
cz q[2], q[8];
cx q[9], q[0];
cz q[1], q[10];
cx q[2], q[11];
h q[11];
rz(0.36177284470753157*pi) q[11];
cz q[6], q[11];
cz q[5], q[11];
cx q[11], q[3];
sdg q[0];
cz q[0], q[1];
cz q[0], q[2];
h q[3];
rz(1.960979621233599*pi) q[3];
cz q[0], q[4];
cz q[0], q[7];
cz q[0], q[10];
cx q[9], q[0];
cx q[6], q[9];
cx q[8], q[9];
cx q[3], q[9];
cx q[5], q[9];
cx q[2], q[9];
cx q[10], q[9];
cx q[11], q[9];
rz(0.6719365468502756*pi) q[0];
cx q[1], q[0];
cx q[2], q[0];
cx q[4], q[0];
cx q[5], q[0];
cx q[7], q[0];
cx q[8], q[0];
cx q[10], q[0];
cx q[11], q[10];
cx q[11], q[0];
cx q[6], q[11];
cx q[3], q[11];
cx q[8], q[11];
cx q[5], q[11];
cx q[2], q[11];
h q[0];
rz(1.5992458724135155*pi) q[0];
cx q[3], q[6];
cx q[0], q[6];
cx q[5], q[6];
cx q[2], q[6];
cx q[7], q[6];
cx q[8], q[7];
cx q[8], q[6];
cx q[3], q[8];
cx q[0], q[8];
cx q[5], q[8];
cx q[2], q[8];
h q[8];
rz(0.08340762545009676*pi) q[8];
cx q[8], q[6];
cx q[0], q[9];
h q[9];
rz(1.0197932171479218*pi) q[9];
cz q[8], q[9];
cx q[10], q[6];
cx q[10], q[7];
cx q[8], q[10];
cx q[0], q[11];
h q[11];
rz(0.4452734099014243*pi) q[11];
cx q[11], q[10];
cx q[0], q[3];
cx q[2], q[3];
cx q[4], q[3];
cx q[5], q[4];
cx q[5], q[3];
cx q[0], q[5];
cx q[2], q[5];
h q[6];
s q[6];
cx q[6], q[5];
cx q[7], q[4];
cx q[9], q[5];
h q[10];
rz(1.0576581106351965*pi) q[10];
cx q[10], q[5];
cx q[1], q[0];
cx q[2], q[0];
cx q[2], q[1];
h q[3];
rz(0.9341797967981847*pi) q[3];
cx q[3], q[2];
cx q[3], q[0];
cx q[4], q[0];
cx q[4], q[1];
cx q[3], q[5];
h q[5];
rz(1.9068046253495996*pi) q[5];
cx q[5], q[0];
cx q[5], q[4];
cx q[6], q[2];
cz q[3], q[7];
cx q[5], q[7];
cz q[3], q[8];
cx q[8], q[0];
cx q[8], q[7];
cx q[8], q[1];
cx q[8], q[4];
cz q[3], q[9];
cx q[9], q[2];
cx q[9], q[0];
cx q[10], q[7];
cx q[10], q[2];
cx q[10], q[1];
cx q[10], q[4];
cx q[11], q[6];
cx q[11], q[7];
cx q[11], q[4];
cx q[11], q[1];
h q[1];
rz(1.147256655840239*pi) q[1];
cx q[1], q[2];
cx q[1], q[4];
cz q[1], q[5];
sdg q[6];
cz q[3], q[6];
cx q[6], q[0];
h q[7];
cz q[1], q[7];
cx q[7], q[2];
rz(1.3331499921386751*pi) q[7];
cx q[7], q[4];
cz q[6], q[9];
h q[0];
rz(1.020658083488831*pi) q[0];
cx q[0], q[2];
h q[4];
rz(0.8478485764510535*pi) q[4];
cx q[4], q[2];
cx q[7], q[3];
cx q[11], q[6];
cx q[9], q[11];
cx q[10], q[11];
cx q[8], q[11];
cx q[7], q[11];
cx q[5], q[11];
cx q[4], q[11];
cx q[1], q[11];
h q[2];
rz(1.9207691264718252*pi) q[2];
cx q[4], q[0];
rz(0.5676236624835405*pi) q[6];
cx q[9], q[6];
cx q[10], q[6];
cx q[10], q[9];
cx q[8], q[10];
cx q[7], q[10];
cx q[5], q[10];
cx q[4], q[10];
cx q[2], q[10];
cx q[1], q[10];
cx q[2], q[11];
cx q[11], q[10];
cx q[6], q[3];
cx q[6], q[8];
cx q[7], q[8];
cx q[5], q[8];
cx q[2], q[8];
cx q[4], q[8];
cx q[1], q[8];
h q[9];
rz(1.923872967071601*pi) q[9];
cx q[9], q[11];
cx q[3], q[0];
cx q[7], q[6];
cx q[5], q[7];
cx q[4], q[7];
cx q[2], q[7];
cx q[1], q[7];
cx q[8], q[7];
h q[9];
sdg q[9];
h q[0];
sdg q[0];
cx q[3], q[5];
cx q[4], q[5];
cx q[2], q[5];
cx q[1], q[5];
h q[6];
rz(1.9902589899869139*pi) q[6];
cx q[6], q[8];
cx q[6], q[11];
cx q[4], q[3];
cx q[2], q[4];
cx q[1], q[4];
cx q[5], q[4];
h q[6];
sdg q[6];
h q[2];
cx q[2], q[0];
cz q[1], q[2];
rz(1.9806180767681036*pi) q[2];
h q[3];
rz(1.9831731783041948*pi) q[3];
cx q[3], q[5];
cx q[2], q[5];
cx q[3], q[8];
cx q[2], q[8];
cx q[3], q[11];
cx q[2], q[11];
rz(0.022287492516463083*pi) q[0];
cz q[0], q[1];
cx q[0], q[1];
h q[1];
rz(1.9849932226380511*pi) q[1];
h q[1];
sdg q[1];
h q[2];
sdg q[2];
h q[3];
sdg q[3];
cx q[0], q[5];
cx q[5], q[4];
h q[5];
rz(0.5363092952889146*pi) q[5];
cx q[5], q[8];
cx q[0], q[8];
cx q[8], q[7];
h q[8];
rz(0.9079013121139838*pi) q[8];
cx q[8], q[11];
cx q[5], q[11];
cx q[0], q[11];
cx q[11], q[10];
h q[11];
rz(1.5054714034577084*pi) q[11];
h q[11];
sdg q[11];
h q[0];
sdg q[0];
h q[4];
rz(1.020366703998774*pi) q[4];
h q[4];
sdg q[4];
h q[5];
sdg q[5];
h q[7];
rz(1.081537684762483*pi) q[7];
h q[7];
sdg q[7];
h q[8];
sdg q[8];
h q[10];
rz(0.008864982448787535*pi) q[10];
h q[10];
sdg q[10];