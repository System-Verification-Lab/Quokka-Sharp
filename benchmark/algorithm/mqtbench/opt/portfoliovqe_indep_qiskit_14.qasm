OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
s q[0];
h q[0];
rz(1.6456283147709525*pi) q[0];
s q[1];
h q[1];
rz(0.1846165219858956*pi) q[1];
cz q[0], q[1];
s q[2];
cx q[1], q[2];
h q[2];
cz q[0], q[2];
rz(1.653763924073409*pi) q[2];
s q[3];
h q[3];
cz q[1], q[3];
rz(0.7240387616582852*pi) q[3];
cz q[2], q[3];
cz q[0], q[3];
s q[4];
cx q[1], q[4];
h q[4];
cz q[3], q[4];
cz q[2], q[4];
cz q[0], q[4];
rz(1.2964247482943947*pi) q[4];
s q[5];
cx q[2], q[5];
cx q[4], q[5];
cx q[0], q[5];
h q[5];
rz(1.9741951139047131*pi) q[5];
cz q[1], q[5];
cz q[3], q[5];
s q[6];
cx q[0], q[6];
h q[6];
cz q[5], q[6];
cz q[1], q[6];
cz q[3], q[6];
cz q[4], q[6];
cz q[2], q[6];
rz(1.2606284451129592*pi) q[6];
s q[7];
cx q[6], q[7];
cx q[5], q[7];
cx q[1], q[7];
cx q[3], q[7];
s q[8];
cx q[5], q[8];
cx q[1], q[8];
cx q[3], q[8];
s q[9];
cx q[5], q[9];
h q[9];
cz q[1], q[9];
cz q[3], q[9];
cz q[6], q[9];
cz q[4], q[9];
rz(0.6263973875063336*pi) q[9];
cz q[2], q[9];
cz q[0], q[9];
s q[10];
cx q[5], q[10];
cx q[1], q[10];
cx q[3], q[10];
s q[11];
cx q[9], q[11];
cx q[0], q[11];
cx q[4], q[11];
cx q[6], q[11];
s q[12];
cx q[9], q[12];
cx q[0], q[12];
s q[13];
h q[13];
cz q[9], q[13];
cx q[13], q[10];
cz q[0], q[13];
cz q[4], q[13];
cz q[6], q[13];
cx q[13], q[7];
cz q[2], q[13];
cz q[5], q[13];
cz q[1], q[13];
rz(1.1680175821989045*pi) q[13];
cz q[3], q[13];
h q[10];
cz q[6], q[10];
cx q[10], q[8];
cz q[4], q[10];
cz q[9], q[10];
cx q[10], q[7];
rz(1.5684609593582541*pi) q[10];
cz q[2], q[10];
cz q[0], q[10];
cx q[10], q[11];
cx q[10], q[12];
h q[12];
cz q[5], q[12];
cz q[1], q[12];
cz q[3], q[12];
cz q[4], q[12];
cz q[2], q[12];
cx q[12], q[11];
rz(0.6297180533322607*pi) q[12];
cz q[6], q[12];
cx q[12], q[7];
cz q[12], q[13];
h q[8];
cz q[6], q[8];
cz q[4], q[8];
cz q[2], q[8];
cx q[8], q[7];
cz q[0], q[8];
rz(0.8556934301233031*pi) q[8];
cz q[8], q[9];
cx q[6], q[10];
cx q[8], q[11];
h q[11];
cz q[2], q[11];
cz q[5], q[11];
cz q[1], q[11];
cz q[3], q[11];
rz(0.4188252657033624*pi) q[11];
cz q[8], q[12];
cz q[8], q[13];
cz q[11], q[13];
cx q[4], q[6];
cx q[2], q[6];
cx q[0], q[6];
cx q[5], q[6];
cx q[3], q[6];
cx q[1], q[6];
h q[7];
cz q[4], q[7];
cz q[2], q[7];
cz q[0], q[7];
rz(1.0737671428039197*pi) q[7];
cx q[7], q[6];
cx q[8], q[6];
cx q[4], q[8];
cx q[9], q[6];
cz q[7], q[9];
cx q[10], q[8];
cz q[7], q[11];
cx q[11], q[6];
cx q[12], q[6];
cx q[13], q[6];
cx q[9], q[4];
cx q[8], q[9];
cx q[2], q[9];
cx q[2], q[8];
cx q[7], q[8];
cx q[0], q[8];
cx q[5], q[8];
cx q[3], q[8];
cx q[1], q[8];
cx q[11], q[8];
cx q[12], q[8];
cx q[13], q[8];
cx q[7], q[2];
cx q[0], q[7];
cx q[9], q[7];
cx q[0], q[9];
cx q[5], q[9];
cx q[3], q[9];
cx q[1], q[9];
cx q[11], q[9];
cx q[12], q[9];
cx q[13], q[9];
cx q[5], q[0];
cx q[7], q[5];
cx q[3], q[7];
cx q[1], q[7];
cx q[11], q[7];
cx q[12], q[7];
cx q[13], q[5];
cx q[13], q[7];
cx q[3], q[13];
cx q[5], q[3];
cx q[1], q[5];
cx q[11], q[5];
cx q[11], q[3];
cx q[1], q[11];
cx q[12], q[5];
cx q[3], q[1];
cx q[12], q[3];
cx q[10], q[12];
cx q[4], q[12];
cx q[2], q[12];
cx q[13], q[12];
cx q[5], q[13];
h q[1];
rz(0.8353851110884095*pi) q[1];
h q[1];
h q[5];
rz(0.662797554119276*pi) q[5];
cx q[8], q[4];
h q[8];
rz(1.5397717023748823*pi) q[8];
cx q[9], q[2];
h q[9];
rz(0.1475132400528104*pi) q[9];
cx q[6], q[10];
h q[10];
rz(0.33674561196614805*pi) q[10];
h q[12];
cz q[1], q[12];
cz q[11], q[12];
cz q[0], q[12];
rz(1.0362193559708905*pi) q[12];
cx q[10], q[12];
cx q[8], q[12];
cx q[9], q[12];
h q[2];
rz(0.7591091150193651*pi) q[2];
h q[4];
rz(0.556743232216668*pi) q[4];
h q[6];
rz(1.9526082771747542*pi) q[6];
cx q[7], q[0];
h q[7];
rz(0.26103000373042984*pi) q[7];
cx q[3], q[11];
cx q[6], q[12];
cx q[4], q[12];
cx q[2], q[12];
cx q[7], q[12];
h q[0];
rz(0.006518634758881341*pi) q[0];
h q[3];
rz(0.7724710398401349*pi) q[3];
cx q[10], q[6];
cx q[8], q[10];
cx q[0], q[12];
h q[12];
cz q[5], q[12];
cz q[3], q[12];
cx q[12], q[11];
cx q[12], q[13];
h q[6];
cx q[6], q[1];
h q[8];
cx q[8], q[6];
cz q[4], q[8];
cz q[4], q[6];
cz q[2], q[6];
cz q[0], q[6];
cz q[5], q[6];
cz q[3], q[6];
cz q[6], q[7];
cz q[6], q[9];
cx q[6], q[11];
cx q[6], q[13];
cx q[9], q[4];
h q[9];
cx q[9], q[8];
cz q[2], q[9];
cz q[2], q[8];
cz q[7], q[8];
cz q[0], q[8];
cz q[5], q[8];
cz q[3], q[8];
cx q[8], q[11];
cx q[8], q[13];
cx q[7], q[2];
h q[7];
cz q[0], q[7];
cx q[7], q[9];
cz q[0], q[9];
cz q[5], q[9];
cz q[3], q[9];
cx q[9], q[11];
cx q[9], q[13];
cx q[5], q[0];
h q[5];
cx q[5], q[7];
cz q[3], q[7];
cx q[7], q[11];
cx q[5], q[13];
cx q[7], q[13];
h q[13];
rz(1.7763511514057975*pi) q[13];
cx q[3], q[13];
h q[3];
rz(0.18764543940518758*pi) q[3];
cx q[3], q[5];
cx q[5], q[11];
h q[11];
rz(1.6456195623481154*pi) q[11];
cx q[13], q[11];
h q[13];
rz(1.7154504241897182*pi) q[13];
h q[3];
h q[11];
cz q[3], q[11];
cz q[10], q[11];
cz q[4], q[11];
cz q[2], q[11];
cz q[0], q[11];
rz(0.9958976491117364*pi) q[11];
cx q[1], q[11];
rz(1.5573184046454576*pi) q[11];
cx q[11], q[12];
rz(0.32388277851552927*pi) q[12];
cx q[13], q[5];
h q[0];
rz(0.7785258083867077*pi) q[0];
cx q[0], q[1];
h q[2];
cx q[2], q[1];
rz(1.9288477775980466*pi) q[2];
h q[4];
cx q[4], q[1];
rz(1.903313984371164*pi) q[4];
rz(0.11341283443805415*pi) q[5];
cx q[5], q[1];
cx q[0], q[7];
rz(0.139746527469691*pi) q[7];
cx q[7], q[1];
cx q[4], q[8];
rz(1.6964233846953265*pi) q[8];
cx q[8], q[1];
cx q[2], q[9];
rz(1.5491237431911633*pi) q[9];
cx q[9], q[1];
h q[10];
cx q[10], q[6];
rz(0.41465105449877754*pi) q[10];
cx q[10], q[1];
cx q[12], q[1];
cx q[11], q[12];
h q[12];
cx q[12], q[3];
cx q[13], q[1];
sdg q[3];
rz(1.5462179137909442*pi) q[6];
cx q[6], q[1];
cx q[6], q[11];
h q[6];
cz q[6], q[10];
cx q[6], q[12];
cz q[10], q[12];
cz q[8], q[12];
cz q[4], q[12];
cz q[9], q[12];
cz q[2], q[12];
cz q[7], q[12];
cz q[0], q[12];
cz q[5], q[12];
cz q[12], q[13];
cx q[8], q[10];
h q[8];
cx q[8], q[6];
cz q[4], q[8];
cz q[4], q[6];
cz q[2], q[6];
cz q[0], q[6];
cz q[5], q[6];
cz q[6], q[7];
cz q[6], q[9];
cz q[6], q[13];
cx q[9], q[4];
h q[9];
cx q[9], q[8];
cz q[2], q[9];
cz q[2], q[8];
cz q[7], q[8];
cz q[0], q[8];
cz q[5], q[8];
cz q[8], q[13];
cx q[7], q[2];
h q[7];
cz q[0], q[7];
cx q[7], q[9];
cz q[0], q[9];
cz q[5], q[9];
cz q[9], q[13];
cx q[5], q[0];
h q[5];
rz(1.7451125624790618*pi) q[5];
cx q[5], q[7];
cz q[7], q[13];
cx q[11], q[13];
cx q[10], q[13];
cx q[4], q[13];
cx q[2], q[13];
h q[13];
cx q[13], q[3];
cz q[5], q[13];
rz(1.9856859093421724*pi) q[13];
h q[2];
rz(1.874120785926199*pi) q[2];
cz q[1], q[3];
rz(1.1260647825696264*pi) q[3];
h q[4];
rz(1.6972823861951751*pi) q[4];
cz q[3], q[5];
cx q[4], q[8];
s q[8];
cx q[4], q[8];
cz q[5], q[8];
cz q[3], q[8];
sdg q[8];
cx q[2], q[9];
s q[9];
cx q[2], q[9];
cz q[5], q[9];
cz q[3], q[9];
cz q[4], q[9];
sdg q[9];
h q[10];
cx q[10], q[6];
rz(0.7564744770899962*pi) q[10];
cz q[8], q[10];
cz q[9], q[10];
h q[11];
rz(1.4680457111404377*pi) q[11];
cz q[8], q[11];
cz q[9], q[11];
cx q[11], q[12];
s q[12];
cx q[11], q[12];
cz q[5], q[12];
cz q[3], q[12];
sdg q[12];
cz q[0], q[13];
cz q[12], q[13];
cz q[8], q[13];
cz q[9], q[13];
h q[0];
rz(1.917486605392598*pi) q[0];
cx q[5], q[1];
s q[6];
cx q[0], q[7];
s q[7];
cx q[0], q[7];
cz q[5], q[7];
cz q[3], q[7];
cz q[4], q[7];
cz q[2], q[7];
sdg q[7];
cx q[10], q[6];
cz q[7], q[10];
cz q[7], q[11];
cx q[13], q[1];
cz q[7], q[13];
h q[1];
rz(1.6439156537700113*pi) q[1];
cz q[1], q[3];
cz q[5], q[6];
cz q[1], q[6];
cz q[3], q[6];
sdg q[6];
cz q[1], q[7];
cz q[1], q[8];
cz q[1], q[9];
cz q[6], q[11];
cz q[1], q[12];
cx q[11], q[12];
cz q[8], q[12];
cz q[9], q[12];
cz q[7], q[12];
rz(1.482011110786711*pi) q[12];
cz q[6], q[12];
h q[12];
sdg q[12];
cz q[6], q[13];
h q[13];
sdg q[13];
h q[1];
sdg q[1];
h q[3];
sdg q[3];
h q[5];
sdg q[5];
cx q[10], q[6];
h q[10];
sdg q[10];
h q[11];
sdg q[11];
rz(0.8489545052594821*pi) q[6];
cz q[6], q[7];
cz q[6], q[8];
cx q[4], q[8];
cz q[7], q[8];
rz(0.05818648863524761*pi) q[8];
cz q[6], q[9];
cz q[8], q[9];
cx q[2], q[9];
cz q[7], q[9];
rz(1.4909058557720896*pi) q[9];
h q[9];
sdg q[9];
h q[2];
sdg q[2];
h q[4];
sdg q[4];
h q[6];
sdg q[6];
cx q[0], q[7];
rz(0.6116816946703083*pi) q[7];
h q[7];
sdg q[7];
h q[8];
sdg q[8];
h q[0];
sdg q[0];
cx q[1], q[7];
cx q[7], q[1];
cx q[1], q[7];
cx q[3], q[9];
cx q[9], q[3];
cx q[3], q[9];
cx q[5], q[8];
cx q[8], q[5];
cx q[5], q[8];
cx q[6], q[10];
cx q[10], q[6];
cx q[6], q[10];
cx q[7], q[10];
cx q[10], q[7];
cx q[7], q[10];
cx q[8], q[11];
cx q[11], q[8];
cx q[8], q[11];
cx q[9], q[12];
cx q[12], q[9];
cx q[9], q[12];
cx q[10], q[12];
cx q[12], q[10];
cx q[10], q[12];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[12], q[13];