OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
cx q[30], q[31];
cx q[31], q[30];
cx q[30], q[31];
cx q[29], q[31];
cx q[31], q[29];
cx q[29], q[31];
cx q[28], q[31];
cx q[31], q[28];
cx q[28], q[31];
cx q[27], q[31];
cx q[31], q[27];
cx q[27], q[31];
cx q[26], q[28];
cx q[28], q[26];
cx q[26], q[28];
cx q[25], q[28];
cx q[28], q[25];
cx q[25], q[28];
cx q[24], q[28];
cx q[28], q[24];
cx q[24], q[28];
cx q[23], q[25];
cx q[25], q[23];
cx q[23], q[25];
cx q[22], q[25];
cx q[25], q[22];
cx q[22], q[25];
cx q[21], q[25];
cx q[25], q[21];
cx q[21], q[25];
cx q[20], q[22];
cx q[22], q[20];
cx q[20], q[22];
cx q[19], q[22];
cx q[22], q[19];
cx q[19], q[22];
cx q[18], q[22];
cx q[22], q[18];
cx q[18], q[22];
cx q[17], q[19];
cx q[19], q[17];
cx q[17], q[19];
cx q[16], q[19];
cx q[19], q[16];
cx q[16], q[19];
cx q[15], q[19];
cx q[19], q[15];
cx q[15], q[19];
cx q[14], q[16];
cx q[16], q[14];
cx q[14], q[16];
cx q[13], q[16];
cx q[16], q[13];
cx q[13], q[16];
cx q[12], q[16];
cx q[16], q[12];
cx q[12], q[16];
cx q[11], q[13];
cx q[13], q[11];
cx q[11], q[13];
cx q[10], q[13];
cx q[13], q[10];
cx q[10], q[13];
cx q[9], q[13];
cx q[13], q[9];
cx q[9], q[13];
cx q[8], q[10];
cx q[10], q[8];
cx q[8], q[10];
cx q[7], q[10];
cx q[10], q[7];
cx q[7], q[10];
cx q[6], q[10];
cx q[10], q[6];
cx q[6], q[10];
cx q[5], q[7];
cx q[7], q[5];
cx q[5], q[7];
cx q[4], q[7];
cx q[7], q[4];
cx q[4], q[7];
cx q[3], q[7];
cx q[7], q[3];
cx q[3], q[7];
cx q[2], q[4];
cx q[4], q[2];
cx q[2], q[4];
cx q[1], q[4];
cx q[4], q[1];
cx q[1], q[4];
cx q[0], q[4];
cx q[4], q[0];
cx q[0], q[4];
h q[31];
h q[30];
h q[29];
h q[28];
h q[27];
h q[26];
h q[25];
h q[24];
h q[23];
h q[22];
h q[21];
h q[20];
h q[19];
h q[18];
h q[17];
h q[16];
h q[15];
h q[14];
h q[13];
h q[12];
h q[11];
h q[10];
h q[9];
h q[8];
h q[7];
h q[6];
h q[5];
h q[4];
h q[3];
h q[2];
h q[1];
h q[0];
rz(0.5*pi) q[26];
rz(0.5*pi) q[27];
rz(0.5*pi) q[31];
rz(0.5*pi) q[24];
rz(0.5*pi) q[28];
rz(0.5*pi) q[21];
rz(0.5*pi) q[25];
rz(0.5*pi) q[18];
rz(0.5*pi) q[22];
rz(0.5*pi) q[15];
rz(0.5*pi) q[19];
rz(0.5*pi) q[12];
rz(0.5*pi) q[16];
rz(0.5*pi) q[9];
rz(0.5*pi) q[13];
rz(0.5*pi) q[6];
rz(0.5*pi) q[10];
rz(0.5*pi) q[3];
rz(0.5*pi) q[7];
rz(0.5*pi) q[0];
rz(0.5*pi) q[4];
h q[26];
h q[27];
h q[31];
h q[24];
h q[28];
h q[21];
h q[25];
h q[18];
h q[22];
h q[15];
h q[19];
h q[12];
h q[16];
h q[9];
h q[13];
h q[6];
h q[10];
h q[3];
h q[7];
h q[0];
h q[4];
cz q[26], q[31];
cz q[26], q[28];
cz q[26], q[27];
cz q[25], q[26];
cz q[24], q[26];
cz q[22], q[26];
cz q[21], q[26];
cz q[19], q[26];
cz q[18], q[26];
cz q[16], q[26];
cz q[15], q[26];
cz q[13], q[26];
cz q[12], q[26];
cz q[10], q[26];
cz q[9], q[26];
cz q[7], q[26];
cz q[6], q[26];
cz q[4], q[26];
cz q[3], q[26];
cz q[0], q[26];
rz(0.5*pi) q[30];
rz(0.5*pi) q[29];
rz(1.7020779068090888*pi) q[26];
h q[30];
h q[29];
h q[26];
cz q[30], q[31];
cz q[29], q[30];
cz q[28], q[30];
cz q[27], q[30];
cz q[26], q[30];
cz q[25], q[30];
cz q[24], q[30];
cz q[22], q[30];
cz q[21], q[30];
cz q[19], q[30];
cz q[18], q[30];
cz q[16], q[30];
cz q[15], q[30];
cz q[13], q[30];
cz q[12], q[30];
cz q[10], q[30];
cz q[9], q[30];
cz q[7], q[30];
cz q[6], q[30];
cz q[4], q[30];
cz q[3], q[30];
cz q[0], q[30];
rz(1.0432943047872683*pi) q[30];
rz(0.11044639366549264*pi) q[29];
h q[30];
h q[29];
cz q[27], q[31];
cz q[27], q[30];
cz q[27], q[29];
cz q[27], q[28];
cz q[25], q[27];
cz q[24], q[27];
cz q[22], q[27];
cz q[21], q[27];
cz q[19], q[27];
cz q[18], q[27];
cz q[16], q[27];
cz q[15], q[27];
cz q[13], q[27];
cz q[12], q[27];
cz q[10], q[27];
cz q[9], q[27];
cz q[7], q[27];
cz q[6], q[27];
cz q[4], q[27];
cz q[3], q[27];
cz q[0], q[27];
rz(1.3007943638629345*pi) q[27];
h q[27];
cx q[27], q[26];
rz(0.5*pi) q[23];
h q[23];
cz q[23], q[28];
cz q[23], q[25];
cz q[23], q[24];
cz q[22], q[23];
cz q[21], q[23];
cz q[19], q[23];
cz q[18], q[23];
cz q[16], q[23];
cz q[15], q[23];
cz q[13], q[23];
cz q[12], q[23];
cz q[10], q[23];
cz q[9], q[23];
cz q[7], q[23];
cz q[6], q[23];
cz q[4], q[23];
cz q[3], q[23];
cz q[0], q[23];
rz(1.7355339569386343*pi) q[23];
h q[23];
cx q[23], q[27];
cz q[30], q[31];
cz q[29], q[31];
rz(1.5262764851087818*pi) q[31];
h q[31];
cz q[24], q[31];
cz q[24], q[30];
cz q[24], q[29];
cz q[24], q[28];
cz q[24], q[27];
cz q[24], q[25];
cz q[22], q[24];
cz q[21], q[24];
cz q[19], q[24];
cz q[18], q[24];
cz q[16], q[24];
cz q[15], q[24];
cz q[13], q[24];
cz q[12], q[24];
cz q[10], q[24];
cz q[9], q[24];
cz q[7], q[24];
cz q[6], q[24];
cz q[4], q[24];
cz q[3], q[24];
cz q[0], q[24];
rz(0.8680279866665874*pi) q[24];
h q[24];
cx q[24], q[23];
rz(0.5*pi) q[20];
h q[20];
cz q[20], q[25];
cz q[20], q[22];
cz q[20], q[21];
cz q[19], q[20];
cz q[18], q[20];
cz q[16], q[20];
cz q[15], q[20];
cz q[13], q[20];
cz q[12], q[20];
cz q[10], q[20];
cz q[9], q[20];
cz q[7], q[20];
cz q[6], q[20];
cz q[4], q[20];
cz q[3], q[20];
cz q[0], q[20];
rz(1.8482672301326908*pi) q[20];
h q[20];
cx q[20], q[24];
cz q[28], q[31];
cz q[28], q[30];
cz q[28], q[29];
cz q[27], q[28];
rz(1.3836663488459924*pi) q[28];
h q[28];
cz q[21], q[31];
cz q[21], q[30];
cz q[21], q[29];
cz q[21], q[28];
cz q[21], q[27];
cz q[21], q[25];
cz q[21], q[24];
cz q[21], q[22];
cz q[19], q[21];
cz q[18], q[21];
cz q[16], q[21];
cz q[15], q[21];
cz q[13], q[21];
cz q[12], q[21];
cz q[10], q[21];
cz q[9], q[21];
cz q[7], q[21];
cz q[6], q[21];
cz q[4], q[21];
cz q[3], q[21];
cz q[0], q[21];
rz(0.7466815201029386*pi) q[21];
h q[21];
cx q[21], q[20];
rz(0.5*pi) q[17];
h q[17];
cz q[17], q[22];
cz q[17], q[19];
cz q[17], q[18];
cz q[16], q[17];
cz q[15], q[17];
cz q[13], q[17];
cz q[12], q[17];
cz q[10], q[17];
cz q[9], q[17];
cz q[7], q[17];
cz q[6], q[17];
cz q[4], q[17];
cz q[3], q[17];
cz q[0], q[17];
rz(1.5850887360225225*pi) q[17];
h q[17];
cx q[17], q[21];
cz q[25], q[31];
cz q[25], q[30];
cz q[25], q[29];
cz q[25], q[28];
cz q[25], q[27];
cz q[24], q[25];
rz(0.7843400952030538*pi) q[25];
h q[25];
cz q[18], q[31];
cz q[18], q[30];
cz q[18], q[29];
cz q[18], q[28];
cz q[18], q[27];
cz q[18], q[25];
cz q[18], q[24];
cz q[18], q[22];
cz q[18], q[21];
cz q[18], q[19];
cz q[16], q[18];
cz q[15], q[18];
cz q[13], q[18];
cz q[12], q[18];
cz q[10], q[18];
cz q[9], q[18];
cz q[7], q[18];
cz q[6], q[18];
cz q[4], q[18];
cz q[3], q[18];
cz q[0], q[18];
rz(1.4291515667953818*pi) q[18];
h q[18];
cx q[18], q[17];
rz(0.5*pi) q[14];
h q[14];
cz q[14], q[19];
cz q[14], q[16];
cz q[14], q[15];
cz q[13], q[14];
cz q[12], q[14];
cz q[10], q[14];
cz q[9], q[14];
cz q[7], q[14];
cz q[6], q[14];
cz q[4], q[14];
cz q[3], q[14];
cz q[0], q[14];
rz(1.0837521363412663*pi) q[14];
h q[14];
cx q[14], q[18];
cz q[22], q[31];
cz q[22], q[30];
cz q[22], q[29];
cz q[22], q[28];
cz q[22], q[27];
cz q[22], q[25];
cz q[22], q[24];
cz q[21], q[22];
rz(0.3355482450258874*pi) q[22];
h q[22];
cz q[15], q[31];
cz q[15], q[30];
cz q[15], q[29];
cz q[15], q[28];
cz q[15], q[27];
cz q[15], q[25];
cz q[15], q[24];
cz q[15], q[22];
cz q[15], q[21];
cz q[15], q[19];
cz q[15], q[18];
cz q[15], q[16];
cz q[13], q[15];
cz q[12], q[15];
cz q[10], q[15];
cz q[9], q[15];
cz q[7], q[15];
cz q[6], q[15];
cz q[4], q[15];
cz q[3], q[15];
cz q[0], q[15];
rz(1.4435106348635995*pi) q[15];
h q[15];
cx q[15], q[14];
rz(0.5*pi) q[11];
h q[11];
cz q[11], q[16];
cz q[11], q[13];
cz q[11], q[12];
cz q[10], q[11];
cz q[9], q[11];
cz q[7], q[11];
cz q[6], q[11];
cz q[4], q[11];
cz q[3], q[11];
cz q[0], q[11];
rz(0.12524192330422643*pi) q[11];
h q[11];
cx q[11], q[15];
cz q[19], q[31];
cz q[19], q[30];
cz q[19], q[29];
cz q[19], q[28];
cz q[19], q[27];
cz q[19], q[25];
cz q[19], q[24];
cz q[19], q[22];
cz q[19], q[21];
cz q[18], q[19];
rz(1.7250521336587763*pi) q[19];
h q[19];
cz q[12], q[31];
cz q[12], q[30];
cz q[12], q[29];
cz q[12], q[28];
cz q[12], q[27];
cz q[12], q[25];
cz q[12], q[24];
cz q[12], q[22];
cz q[12], q[21];
cz q[12], q[19];
cz q[12], q[18];
cz q[12], q[16];
cz q[12], q[15];
cz q[12], q[13];
cz q[10], q[12];
cz q[9], q[12];
cz q[7], q[12];
cz q[6], q[12];
cz q[4], q[12];
cz q[3], q[12];
cz q[0], q[12];
rz(1.0243845267715532*pi) q[12];
h q[12];
cx q[12], q[11];
rz(0.5*pi) q[8];
h q[8];
cz q[8], q[13];
cz q[8], q[10];
cz q[8], q[9];
cz q[7], q[8];
cz q[6], q[8];
cz q[4], q[8];
cz q[3], q[8];
cz q[0], q[8];
rz(0.40678669238987286*pi) q[8];
h q[8];
cx q[8], q[12];
cz q[16], q[31];
cz q[16], q[30];
cz q[16], q[29];
cz q[16], q[28];
cz q[16], q[27];
cz q[16], q[25];
cz q[16], q[24];
cz q[16], q[22];
cz q[16], q[21];
cz q[16], q[19];
cz q[16], q[18];
cz q[15], q[16];
rz(0.5078965326558288*pi) q[16];
h q[16];
cz q[9], q[31];
cz q[9], q[30];
cz q[9], q[29];
cz q[9], q[28];
cz q[9], q[27];
cz q[9], q[25];
cz q[9], q[24];
cz q[9], q[22];
cz q[9], q[21];
cz q[9], q[19];
cz q[9], q[18];
cz q[9], q[16];
cz q[9], q[15];
cz q[9], q[13];
cz q[9], q[12];
cz q[9], q[10];
cz q[7], q[9];
cz q[6], q[9];
cz q[4], q[9];
cz q[3], q[9];
cz q[0], q[9];
rz(1.3707196367355947*pi) q[9];
h q[9];
cx q[9], q[8];
rz(0.5*pi) q[5];
h q[5];
cz q[5], q[10];
cz q[5], q[7];
cz q[5], q[6];
cz q[4], q[5];
cz q[3], q[5];
cz q[0], q[5];
rz(0.8382216731250708*pi) q[5];
h q[5];
cx q[5], q[9];
cz q[13], q[31];
cz q[13], q[30];
cz q[13], q[29];
cz q[13], q[28];
cz q[13], q[27];
cz q[13], q[25];
cz q[13], q[24];
cz q[13], q[22];
cz q[13], q[21];
cz q[13], q[19];
cz q[13], q[18];
cz q[13], q[16];
cz q[13], q[15];
cz q[12], q[13];
rz(0.6766796283480206*pi) q[13];
h q[13];
cz q[6], q[31];
cz q[6], q[30];
cz q[6], q[29];
cz q[6], q[28];
cz q[6], q[27];
cz q[6], q[25];
cz q[6], q[24];
cz q[6], q[22];
cz q[6], q[21];
cz q[6], q[19];
cz q[6], q[18];
cz q[6], q[16];
cz q[6], q[15];
cz q[6], q[13];
cz q[6], q[12];
cz q[6], q[10];
cz q[6], q[9];
cz q[6], q[7];
cz q[4], q[6];
cz q[3], q[6];
cz q[0], q[6];
rz(1.5210614243979172*pi) q[6];
h q[6];
cx q[6], q[5];
rz(0.5*pi) q[2];
h q[2];
cz q[2], q[7];
cz q[2], q[4];
cz q[2], q[3];
cz q[0], q[2];
rz(0.9495932910616952*pi) q[2];
h q[2];
cx q[2], q[6];
cz q[10], q[31];
cz q[10], q[30];
cz q[10], q[29];
cz q[10], q[28];
cz q[10], q[27];
cz q[10], q[25];
cz q[10], q[24];
cz q[10], q[22];
cz q[10], q[21];
cz q[10], q[19];
cz q[10], q[18];
cz q[10], q[16];
cz q[10], q[15];
cz q[10], q[13];
cz q[10], q[12];
cz q[9], q[10];
rz(0.8961257295192478*pi) q[10];
h q[10];
cz q[3], q[31];
cz q[3], q[30];
cz q[3], q[29];
cz q[3], q[28];
cz q[3], q[27];
cz q[3], q[25];
cz q[3], q[24];
cz q[3], q[22];
cz q[3], q[21];
cz q[3], q[19];
cz q[3], q[18];
cz q[3], q[16];
cz q[3], q[15];
cz q[3], q[13];
cz q[3], q[12];
cz q[3], q[10];
cz q[3], q[9];
cz q[3], q[7];
cz q[3], q[6];
cz q[3], q[4];
cz q[0], q[3];
rz(0.9970140246051811*pi) q[3];
h q[3];
cx q[3], q[2];
rz(0.5*pi) q[1];
h q[1];
cz q[1], q[4];
cz q[0], q[1];
rz(1.767296469852551*pi) q[1];
h q[1];
cx q[1], q[3];
cz q[7], q[31];
cz q[7], q[30];
cz q[7], q[29];
cz q[7], q[28];
cz q[7], q[27];
cz q[7], q[25];
cz q[7], q[24];
cz q[7], q[22];
cz q[7], q[21];
cz q[7], q[19];
cz q[7], q[18];
cz q[7], q[16];
cz q[7], q[15];
cz q[7], q[13];
cz q[7], q[12];
cz q[7], q[10];
cz q[7], q[9];
cz q[6], q[7];
rz(1.9976077650772237*pi) q[7];
h q[7];
cz q[0], q[31];
cz q[0], q[30];
cz q[0], q[29];
cz q[0], q[28];
cz q[0], q[27];
cz q[0], q[25];
cz q[0], q[24];
cz q[0], q[22];
cz q[0], q[21];
cz q[0], q[19];
cz q[0], q[18];
cz q[0], q[16];
cz q[0], q[15];
cz q[0], q[13];
cz q[0], q[12];
cz q[0], q[10];
cz q[0], q[9];
cz q[0], q[7];
cz q[0], q[6];
cz q[0], q[4];
cz q[0], q[3];
rz(0.04150389871880284*pi) q[0];
h q[0];
cx q[0], q[1];
cz q[26], q[30];
cz q[23], q[30];
cz q[20], q[30];
cz q[17], q[30];
cz q[14], q[30];
cz q[11], q[30];
cz q[8], q[30];
cz q[5], q[30];
cz q[4], q[31];
cz q[4], q[30];
cz q[4], q[29];
cz q[4], q[28];
cz q[4], q[25];
cz q[4], q[22];
cz q[4], q[19];
cz q[4], q[16];
cz q[4], q[13];
cz q[4], q[10];
cz q[4], q[7];
cz q[2], q[30];
cz q[1], q[30];
cz q[0], q[30];
cx q[30], q[4];
cz q[4], q[27];
cz q[4], q[24];
cz q[4], q[21];
cz q[4], q[18];
cz q[4], q[15];
cz q[4], q[12];
cz q[4], q[9];
cz q[4], q[6];
cz q[4], q[3];
cx q[30], q[4];
rz(0.04264128653349172*pi) q[4];
rz(1.0691158976036301*pi) q[30];
h q[4];
h q[30];
cz q[30], q[31];
cz q[29], q[31];
cz q[28], q[31];
cz q[26], q[31];
cz q[25], q[31];
cz q[23], q[31];
cz q[22], q[31];
cz q[20], q[31];
cz q[19], q[31];
cz q[17], q[31];
cz q[16], q[31];
cz q[14], q[31];
cz q[13], q[31];
cz q[11], q[31];
cz q[10], q[31];
cz q[8], q[31];
cz q[7], q[31];
cz q[5], q[31];
cz q[4], q[31];
cz q[2], q[31];
cz q[1], q[31];
rz(1.1947432964617688*pi) q[31];
h q[31];
cz q[29], q[31];
cz q[28], q[29];
cz q[26], q[29];
cz q[25], q[29];
cz q[23], q[29];
cz q[22], q[29];
cz q[20], q[29];
cz q[19], q[29];
cz q[17], q[29];
cz q[16], q[29];
cz q[14], q[29];
cz q[13], q[29];
cz q[11], q[29];
cz q[10], q[29];
cz q[8], q[29];
cz q[7], q[29];
cz q[5], q[29];
cz q[4], q[29];
cz q[2], q[29];
cz q[1], q[29];
rz(1.180402725970846*pi) q[29];
h q[29];
cz q[26], q[29];
cz q[26], q[28];
cz q[26], q[27];
cz q[25], q[26];
cz q[24], q[26];
cz q[22], q[26];
cz q[21], q[26];
cz q[19], q[26];
cz q[18], q[26];
cz q[16], q[26];
cz q[15], q[26];
cz q[13], q[26];
cz q[12], q[26];
cz q[10], q[26];
cz q[9], q[26];
cz q[7], q[26];
cz q[6], q[26];
cz q[4], q[26];
cz q[3], q[26];
cz q[0], q[26];
rz(0.30566352066325503*pi) q[26];
h q[26];
cx q[26], q[31];
cz q[27], q[31];
cz q[27], q[30];
cz q[24], q[27];
cz q[23], q[27];
cz q[21], q[27];
cz q[20], q[27];
cz q[18], q[27];
cz q[17], q[27];
cz q[15], q[27];
cz q[14], q[27];
cz q[12], q[27];
cz q[11], q[27];
cz q[9], q[27];
cz q[8], q[27];
cz q[6], q[27];
cz q[5], q[27];
cz q[3], q[27];
cz q[2], q[27];
cz q[1], q[27];
cz q[0], q[27];
rz(0.5027482684141187*pi) q[27];
h q[27];
cz q[28], q[31];
cz q[28], q[30];
cz q[27], q[28];
cz q[25], q[28];
cz q[23], q[28];
cz q[22], q[28];
cz q[20], q[28];
cz q[19], q[28];
cz q[17], q[28];
cz q[16], q[28];
cz q[14], q[28];
cz q[13], q[28];
cz q[11], q[28];
cz q[10], q[28];
cz q[8], q[28];
cz q[7], q[28];
cz q[5], q[28];
cz q[4], q[28];
cz q[2], q[28];
cz q[1], q[28];
rz(0.912609094189568*pi) q[28];
h q[28];
cx q[28], q[26];
cz q[23], q[26];
cz q[23], q[25];
cz q[23], q[24];
cz q[22], q[23];
cz q[21], q[23];
cz q[19], q[23];
cz q[18], q[23];
cz q[16], q[23];
cz q[15], q[23];
cz q[13], q[23];
cz q[12], q[23];
cz q[10], q[23];
cz q[9], q[23];
cz q[7], q[23];
cz q[6], q[23];
cz q[4], q[23];
cz q[3], q[23];
cz q[0], q[23];
rz(0.15224568768547989*pi) q[23];
h q[23];
cx q[23], q[28];
cz q[24], q[31];
cz q[24], q[30];
cz q[24], q[28];
cz q[24], q[27];
cz q[21], q[24];
cz q[20], q[24];
cz q[18], q[24];
cz q[17], q[24];
cz q[15], q[24];
cz q[14], q[24];
cz q[12], q[24];
cz q[11], q[24];
cz q[9], q[24];
cz q[8], q[24];
cz q[6], q[24];
cz q[5], q[24];
cz q[3], q[24];
cz q[2], q[24];
cz q[1], q[24];
cz q[0], q[24];
rz(1.9752509498037445*pi) q[24];
h q[24];
cz q[25], q[31];
cz q[25], q[30];
cz q[25], q[28];
cz q[25], q[27];
cz q[24], q[25];
cz q[22], q[25];
cz q[20], q[25];
cz q[19], q[25];
cz q[17], q[25];
cz q[16], q[25];
cz q[14], q[25];
cz q[13], q[25];
cz q[11], q[25];
cz q[10], q[25];
cz q[8], q[25];
cz q[7], q[25];
cz q[5], q[25];
cz q[4], q[25];
cz q[2], q[25];
cz q[1], q[25];
rz(0.7682288973843995*pi) q[25];
h q[25];
cx q[25], q[23];
cz q[20], q[23];
cz q[20], q[22];
cz q[20], q[21];
cz q[19], q[20];
cz q[18], q[20];
cz q[16], q[20];
cz q[15], q[20];
cz q[13], q[20];
cz q[12], q[20];
cz q[10], q[20];
cz q[9], q[20];
cz q[7], q[20];
cz q[6], q[20];
cz q[4], q[20];
cz q[3], q[20];
cz q[0], q[20];
rz(0.3885214244776012*pi) q[20];
h q[20];
cx q[20], q[25];
cz q[21], q[31];
cz q[21], q[30];
cz q[21], q[28];
cz q[21], q[27];
cz q[21], q[25];
cz q[21], q[24];
cz q[18], q[21];
cz q[17], q[21];
cz q[15], q[21];
cz q[14], q[21];
cz q[12], q[21];
cz q[11], q[21];
cz q[9], q[21];
cz q[8], q[21];
cz q[6], q[21];
cz q[5], q[21];
cz q[3], q[21];
cz q[2], q[21];
cz q[1], q[21];
cz q[0], q[21];
rz(0.3023040392851281*pi) q[21];
h q[21];
cz q[22], q[31];
cz q[22], q[30];
cz q[22], q[28];
cz q[22], q[27];
cz q[22], q[25];
cz q[22], q[24];
cz q[21], q[22];
cz q[19], q[22];
cz q[17], q[22];
cz q[16], q[22];
cz q[14], q[22];
cz q[13], q[22];
cz q[11], q[22];
cz q[10], q[22];
cz q[8], q[22];
cz q[7], q[22];
cz q[5], q[22];
cz q[4], q[22];
cz q[2], q[22];
cz q[1], q[22];
rz(0.18692074911730058*pi) q[22];
h q[22];
cx q[22], q[20];
cz q[17], q[20];
cz q[17], q[19];
cz q[17], q[18];
cz q[16], q[17];
cz q[15], q[17];
cz q[13], q[17];
cz q[12], q[17];
cz q[10], q[17];
cz q[9], q[17];
cz q[7], q[17];
cz q[6], q[17];
cz q[4], q[17];
cz q[3], q[17];
cz q[0], q[17];
rz(0.14221131567385709*pi) q[17];
h q[17];
cx q[17], q[22];
cz q[18], q[31];
cz q[18], q[30];
cz q[18], q[28];
cz q[18], q[27];
cz q[18], q[25];
cz q[18], q[24];
cz q[18], q[22];
cz q[18], q[21];
cz q[15], q[18];
cz q[14], q[18];
cz q[12], q[18];
cz q[11], q[18];
cz q[9], q[18];
cz q[8], q[18];
cz q[6], q[18];
cz q[5], q[18];
cz q[3], q[18];
cz q[2], q[18];
cz q[1], q[18];
cz q[0], q[18];
rz(0.7850584878931746*pi) q[18];
h q[18];
cz q[19], q[31];
cz q[19], q[30];
cz q[19], q[28];
cz q[19], q[27];
cz q[19], q[25];
cz q[19], q[24];
cz q[19], q[22];
cz q[19], q[21];
cz q[18], q[19];
cz q[16], q[19];
cz q[14], q[19];
cz q[13], q[19];
cz q[11], q[19];
cz q[10], q[19];
cz q[8], q[19];
cz q[7], q[19];
cz q[5], q[19];
cz q[4], q[19];
cz q[2], q[19];
cz q[1], q[19];
rz(0.6510232756644978*pi) q[19];
h q[19];
cx q[19], q[17];
cz q[14], q[17];
cz q[14], q[16];
cz q[14], q[15];
cz q[13], q[14];
cz q[12], q[14];
cz q[10], q[14];
cz q[9], q[14];
cz q[7], q[14];
cz q[6], q[14];
cz q[4], q[14];
cz q[3], q[14];
cz q[0], q[14];
rz(0.8300317954382969*pi) q[14];
h q[14];
cx q[14], q[19];
cz q[15], q[31];
cz q[15], q[30];
cz q[15], q[28];
cz q[15], q[27];
cz q[15], q[25];
cz q[15], q[24];
cz q[15], q[22];
cz q[15], q[21];
cz q[15], q[19];
cz q[15], q[18];
cz q[12], q[15];
cz q[11], q[15];
cz q[9], q[15];
cz q[8], q[15];
cz q[6], q[15];
cz q[5], q[15];
cz q[3], q[15];
cz q[2], q[15];
cz q[1], q[15];
cz q[0], q[15];
rz(1.7678729591223727*pi) q[15];
h q[15];
cz q[16], q[31];
cz q[16], q[30];
cz q[16], q[28];
cz q[16], q[27];
cz q[16], q[25];
cz q[16], q[24];
cz q[16], q[22];
cz q[16], q[21];
cz q[16], q[19];
cz q[16], q[18];
cz q[15], q[16];
cz q[13], q[16];
cz q[11], q[16];
cz q[10], q[16];
cz q[8], q[16];
cz q[7], q[16];
cz q[5], q[16];
cz q[4], q[16];
cz q[2], q[16];
cz q[1], q[16];
rz(1.5092953830597144*pi) q[16];
h q[16];
cx q[16], q[14];
cz q[11], q[14];
cz q[11], q[13];
cz q[11], q[12];
cz q[10], q[11];
cz q[9], q[11];
cz q[7], q[11];
cz q[6], q[11];
cz q[4], q[11];
cz q[3], q[11];
cz q[0], q[11];
rz(1.0919234137593572*pi) q[11];
h q[11];
cx q[11], q[16];
cz q[12], q[31];
cz q[12], q[30];
cz q[12], q[28];
cz q[12], q[27];
cz q[12], q[25];
cz q[12], q[24];
cz q[12], q[22];
cz q[12], q[21];
cz q[12], q[19];
cz q[12], q[18];
cz q[12], q[16];
cz q[12], q[15];
cz q[9], q[12];
cz q[8], q[12];
cz q[6], q[12];
cz q[5], q[12];
cz q[3], q[12];
cz q[2], q[12];
cz q[1], q[12];
cz q[0], q[12];
rz(0.7033052788641757*pi) q[12];
h q[12];
cz q[13], q[31];
cz q[13], q[30];
cz q[13], q[28];
cz q[13], q[27];
cz q[13], q[25];
cz q[13], q[24];
cz q[13], q[22];
cz q[13], q[21];
cz q[13], q[19];
cz q[13], q[18];
cz q[13], q[16];
cz q[13], q[15];
cz q[12], q[13];
cz q[10], q[13];
cz q[8], q[13];
cz q[7], q[13];
cz q[5], q[13];
cz q[4], q[13];
cz q[2], q[13];
cz q[1], q[13];
rz(0.3978950793576244*pi) q[13];
h q[13];
cx q[13], q[11];
cz q[8], q[11];
cz q[8], q[10];
cz q[8], q[9];
cz q[7], q[8];
cz q[6], q[8];
cz q[4], q[8];
cz q[3], q[8];
cz q[0], q[8];
rz(0.21370060491546639*pi) q[8];
h q[8];
cx q[8], q[13];
cz q[9], q[31];
cz q[9], q[30];
cz q[9], q[28];
cz q[9], q[27];
cz q[9], q[25];
cz q[9], q[24];
cz q[9], q[22];
cz q[9], q[21];
cz q[9], q[19];
cz q[9], q[18];
cz q[9], q[16];
cz q[9], q[15];
cz q[9], q[13];
cz q[9], q[12];
cz q[6], q[9];
cz q[5], q[9];
cz q[3], q[9];
cz q[2], q[9];
cz q[1], q[9];
cz q[0], q[9];
rz(1.6385739913401371*pi) q[9];
h q[9];
cz q[10], q[31];
cz q[10], q[30];
cz q[10], q[28];
cz q[10], q[27];
cz q[10], q[25];
cz q[10], q[24];
cz q[10], q[22];
cz q[10], q[21];
cz q[10], q[19];
cz q[10], q[18];
cz q[10], q[16];
cz q[10], q[15];
cz q[10], q[13];
cz q[10], q[12];
cz q[9], q[10];
cz q[7], q[10];
cz q[5], q[10];
cz q[4], q[10];
cz q[2], q[10];
cz q[1], q[10];
rz(1.2525742966227849*pi) q[10];
h q[10];
cx q[10], q[8];
cz q[5], q[8];
cz q[5], q[7];
cz q[5], q[6];
cz q[4], q[5];
cz q[3], q[5];
cz q[0], q[5];
rz(1.595172311838487*pi) q[5];
h q[5];
cx q[5], q[10];
cz q[6], q[31];
cz q[6], q[30];
cz q[6], q[28];
cz q[6], q[27];
cz q[6], q[25];
cz q[6], q[24];
cz q[6], q[22];
cz q[6], q[21];
cz q[6], q[19];
cz q[6], q[18];
cz q[6], q[16];
cz q[6], q[15];
cz q[6], q[13];
cz q[6], q[12];
cz q[6], q[10];
cz q[6], q[9];
cz q[3], q[6];
cz q[2], q[6];
cz q[1], q[6];
cz q[0], q[6];
rz(0.09379263877849948*pi) q[6];
h q[6];
cz q[7], q[31];
cz q[7], q[30];
cz q[7], q[28];
cz q[7], q[27];
cz q[7], q[25];
cz q[7], q[24];
cz q[7], q[22];
cz q[7], q[21];
cz q[7], q[19];
cz q[7], q[18];
cz q[7], q[16];
cz q[7], q[15];
cz q[7], q[13];
cz q[7], q[12];
cz q[7], q[10];
cz q[7], q[9];
cz q[6], q[7];
cz q[4], q[7];
cz q[2], q[7];
cz q[1], q[7];
rz(0.22796872372709961*pi) q[7];
h q[7];
cx q[5], q[7];
cz q[2], q[5];
cz q[2], q[4];
cz q[2], q[3];
cz q[0], q[2];
rz(0.15736265261535337*pi) q[2];
h q[2];
cx q[2], q[7];
cz q[3], q[31];
cz q[3], q[30];
cz q[3], q[28];
cz q[3], q[27];
cz q[3], q[25];
cz q[3], q[24];
cz q[3], q[22];
cz q[3], q[21];
cz q[3], q[19];
cz q[3], q[18];
cz q[3], q[16];
cz q[3], q[15];
cz q[3], q[13];
cz q[3], q[12];
cz q[3], q[10];
cz q[3], q[9];
cz q[3], q[7];
cz q[3], q[6];
cz q[1], q[3];
cz q[0], q[3];
rz(0.6014001132724069*pi) q[3];
h q[3];
cz q[4], q[31];
cz q[4], q[30];
cz q[4], q[28];
cz q[4], q[27];
cz q[4], q[25];
cz q[4], q[24];
cz q[4], q[22];
cz q[4], q[21];
cz q[4], q[19];
cz q[4], q[18];
cz q[4], q[16];
cz q[4], q[15];
cz q[4], q[13];
cz q[4], q[12];
cz q[4], q[10];
cz q[4], q[9];
cz q[4], q[7];
cz q[4], q[6];
cz q[3], q[4];
cz q[1], q[4];
rz(0.6384721779770908*pi) q[4];
h q[4];
cx q[4], q[2];
cz q[1], q[2];
cz q[0], q[1];
rz(0.6809186985418149*pi) q[1];
h q[1];
cx q[1], q[4];
cz q[0], q[31];
cz q[0], q[30];
cz q[0], q[28];
cz q[0], q[27];
cz q[0], q[25];
cz q[0], q[24];
cz q[0], q[22];
cz q[0], q[21];
cz q[0], q[19];
cz q[0], q[18];
cz q[0], q[16];
cz q[0], q[15];
cz q[0], q[13];
cz q[0], q[12];
cz q[0], q[10];
cz q[0], q[9];
cz q[0], q[7];
cz q[0], q[6];
cz q[0], q[4];
cz q[0], q[3];
rz(1.8172977616173367*pi) q[0];
h q[0];
cz q[29], q[31];
cz q[29], q[30];
cz q[28], q[29];
cz q[27], q[29];
cz q[25], q[29];
cz q[24], q[29];
cz q[22], q[29];
cz q[21], q[29];
cz q[19], q[29];
cz q[18], q[29];
cz q[16], q[29];
cz q[15], q[29];
cz q[13], q[29];
cz q[12], q[29];
cz q[10], q[29];
cz q[9], q[29];
cz q[7], q[29];
cz q[6], q[29];
cz q[4], q[29];
cz q[3], q[29];
cz q[1], q[29];
cz q[0], q[29];
rz(0.4576382915152854*pi) q[29];
h q[29];
cz q[29], q[30];
cz q[28], q[31];
cz q[27], q[30];
cz q[25], q[31];
cz q[24], q[30];
cz q[22], q[31];
cz q[21], q[30];
cz q[19], q[31];
cz q[18], q[30];
cz q[16], q[31];
cz q[15], q[30];
cz q[13], q[31];
cz q[12], q[30];
cz q[10], q[31];
cz q[9], q[30];
cz q[7], q[31];
cz q[6], q[30];
cz q[4], q[31];
cz q[3], q[30];
cz q[1], q[31];
cz q[0], q[30];
cx q[30], q[31];
cz q[31], q[26];
cz q[31], q[23];
cz q[31], q[20];
cz q[31], q[17];
cz q[31], q[14];
cz q[31], q[11];
cz q[31], q[8];
cz q[31], q[5];
cz q[31], q[2];
cx q[30], q[31];
rz(0.6794156872757274*pi) q[31];
rz(0.9900972617649084*pi) q[30];
h q[31];
h q[30];
cz q[27], q[31];
cz q[27], q[30];
cz q[26], q[27];
cz q[24], q[27];
cz q[23], q[27];
cz q[21], q[27];
cz q[20], q[27];
cz q[18], q[27];
cz q[17], q[27];
cz q[15], q[27];
cz q[14], q[27];
cz q[12], q[27];
cz q[11], q[27];
cz q[9], q[27];
cz q[8], q[27];
cz q[6], q[27];
cz q[5], q[27];
cz q[3], q[27];
cz q[2], q[27];
cz q[0], q[27];
rz(0.12850212138964892*pi) q[27];
h q[27];
cx q[27], q[29];
cz q[26], q[28];
cz q[25], q[26];
cz q[24], q[26];
cz q[22], q[26];
cz q[21], q[26];
cz q[19], q[26];
cz q[18], q[26];
cz q[16], q[26];
cz q[15], q[26];
cz q[13], q[26];
cz q[12], q[26];
cz q[10], q[26];
cz q[9], q[26];
cz q[7], q[26];
cz q[6], q[26];
cz q[4], q[26];
cz q[3], q[26];
cz q[1], q[26];
cz q[0], q[26];
rz(1.4502644948301011*pi) q[26];
h q[26];
cx q[26], q[27];
cz q[28], q[31];
cz q[28], q[30];
cz q[25], q[28];
cz q[23], q[28];
cz q[22], q[28];
cz q[20], q[28];
cz q[19], q[28];
cz q[17], q[28];
cz q[16], q[28];
cz q[14], q[28];
cz q[13], q[28];
cz q[11], q[28];
cz q[10], q[28];
cz q[8], q[28];
cz q[7], q[28];
cz q[5], q[28];
cz q[4], q[28];
cz q[2], q[28];
cz q[1], q[28];
rz(0.5855959525790181*pi) q[28];
h q[28];
cz q[24], q[31];
cz q[24], q[30];
cz q[24], q[28];
cz q[24], q[27];
cz q[23], q[24];
cz q[21], q[24];
cz q[20], q[24];
cz q[18], q[24];
cz q[17], q[24];
cz q[15], q[24];
cz q[14], q[24];
cz q[12], q[24];
cz q[11], q[24];
cz q[9], q[24];
cz q[8], q[24];
cz q[6], q[24];
cz q[5], q[24];
cz q[3], q[24];
cz q[2], q[24];
cz q[0], q[24];
rz(1.1310140397763349*pi) q[24];
h q[24];
cx q[24], q[26];
cz q[23], q[25];
cz q[22], q[23];
cz q[21], q[23];
cz q[19], q[23];
cz q[18], q[23];
cz q[16], q[23];
cz q[15], q[23];
cz q[13], q[23];
cz q[12], q[23];
cz q[10], q[23];
cz q[9], q[23];
cz q[7], q[23];
cz q[6], q[23];
cz q[4], q[23];
cz q[3], q[23];
cz q[1], q[23];
cz q[0], q[23];
rz(0.9841517508070547*pi) q[23];
h q[23];
cx q[23], q[24];
cz q[25], q[31];
cz q[25], q[30];
cz q[25], q[28];
cz q[25], q[27];
cz q[22], q[25];
cz q[20], q[25];
cz q[19], q[25];
cz q[17], q[25];
cz q[16], q[25];
cz q[14], q[25];
cz q[13], q[25];
cz q[11], q[25];
cz q[10], q[25];
cz q[8], q[25];
cz q[7], q[25];
cz q[5], q[25];
cz q[4], q[25];
cz q[2], q[25];
cz q[1], q[25];
rz(1.1151563773252884*pi) q[25];
h q[25];
cz q[21], q[31];
cz q[21], q[30];
cz q[21], q[28];
cz q[21], q[27];
cz q[21], q[25];
cz q[21], q[24];
cz q[20], q[21];
cz q[18], q[21];
cz q[17], q[21];
cz q[15], q[21];
cz q[14], q[21];
cz q[12], q[21];
cz q[11], q[21];
cz q[9], q[21];
cz q[8], q[21];
cz q[6], q[21];
cz q[5], q[21];
cz q[3], q[21];
cz q[2], q[21];
cz q[0], q[21];
rz(0.6061251213020694*pi) q[21];
h q[21];
cx q[21], q[23];
cz q[20], q[22];
cz q[19], q[20];
cz q[18], q[20];
cz q[16], q[20];
cz q[15], q[20];
cz q[13], q[20];
cz q[12], q[20];
cz q[10], q[20];
cz q[9], q[20];
cz q[7], q[20];
cz q[6], q[20];
cz q[4], q[20];
cz q[3], q[20];
cz q[1], q[20];
cz q[0], q[20];
rz(1.1017426178814147*pi) q[20];
h q[20];
cx q[20], q[21];
cz q[22], q[31];
cz q[22], q[30];
cz q[22], q[28];
cz q[22], q[27];
cz q[22], q[25];
cz q[22], q[24];
cz q[19], q[22];
cz q[17], q[22];
cz q[16], q[22];
cz q[14], q[22];
cz q[13], q[22];
cz q[11], q[22];
cz q[10], q[22];
cz q[8], q[22];
cz q[7], q[22];
cz q[5], q[22];
cz q[4], q[22];
cz q[2], q[22];
cz q[1], q[22];
rz(0.05079956410021208*pi) q[22];
h q[22];
cz q[18], q[31];
cz q[18], q[30];
cz q[18], q[28];
cz q[18], q[27];
cz q[18], q[25];
cz q[18], q[24];
cz q[18], q[22];
cz q[18], q[21];
cz q[17], q[18];
cz q[15], q[18];
cz q[14], q[18];
cz q[12], q[18];
cz q[11], q[18];
cz q[9], q[18];
cz q[8], q[18];
cz q[6], q[18];
cz q[5], q[18];
cz q[3], q[18];
cz q[2], q[18];
cz q[0], q[18];
rz(0.5244313222639005*pi) q[18];
h q[18];
cx q[18], q[20];
cz q[17], q[19];
cz q[16], q[17];
cz q[15], q[17];
cz q[13], q[17];
cz q[12], q[17];
cz q[10], q[17];
cz q[9], q[17];
cz q[7], q[17];
cz q[6], q[17];
cz q[4], q[17];
cz q[3], q[17];
cz q[1], q[17];
cz q[0], q[17];
rz(1.5269332548165768*pi) q[17];
h q[17];
cx q[17], q[18];
cz q[19], q[31];
cz q[19], q[30];
cz q[19], q[28];
cz q[19], q[27];
cz q[19], q[25];
cz q[19], q[24];
cz q[19], q[22];
cz q[19], q[21];
cz q[16], q[19];
cz q[14], q[19];
cz q[13], q[19];
cz q[11], q[19];
cz q[10], q[19];
cz q[8], q[19];
cz q[7], q[19];
cz q[5], q[19];
cz q[4], q[19];
cz q[2], q[19];
cz q[1], q[19];
rz(1.195673295925947*pi) q[19];
h q[19];
cz q[15], q[31];
cz q[15], q[30];
cz q[15], q[28];
cz q[15], q[27];
cz q[15], q[25];
cz q[15], q[24];
cz q[15], q[22];
cz q[15], q[21];
cz q[15], q[19];
cz q[15], q[18];
cz q[14], q[15];
cz q[12], q[15];
cz q[11], q[15];
cz q[9], q[15];
cz q[8], q[15];
cz q[6], q[15];
cz q[5], q[15];
cz q[3], q[15];
cz q[2], q[15];
cz q[0], q[15];
rz(1.2111551287875137*pi) q[15];
h q[15];
cx q[15], q[17];
cz q[14], q[16];
cz q[13], q[14];
cz q[12], q[14];
cz q[10], q[14];
cz q[9], q[14];
cz q[7], q[14];
cz q[6], q[14];
cz q[4], q[14];
cz q[3], q[14];
cz q[1], q[14];
cz q[0], q[14];
rz(0.2561932854497141*pi) q[14];
h q[14];
cx q[14], q[15];
cz q[16], q[31];
cz q[16], q[30];
cz q[16], q[28];
cz q[16], q[27];
cz q[16], q[25];
cz q[16], q[24];
cz q[16], q[22];
cz q[16], q[21];
cz q[16], q[19];
cz q[16], q[18];
cz q[13], q[16];
cz q[11], q[16];
cz q[10], q[16];
cz q[8], q[16];
cz q[7], q[16];
cz q[5], q[16];
cz q[4], q[16];
cz q[2], q[16];
cz q[1], q[16];
rz(0.8350182876785337*pi) q[16];
h q[16];
cz q[12], q[31];
cz q[12], q[30];
cz q[12], q[28];
cz q[12], q[27];
cz q[12], q[25];
cz q[12], q[24];
cz q[12], q[22];
cz q[12], q[21];
cz q[12], q[19];
cz q[12], q[18];
cz q[12], q[16];
cz q[12], q[15];
cz q[11], q[12];
cz q[9], q[12];
cz q[8], q[12];
cz q[6], q[12];
cz q[5], q[12];
cz q[3], q[12];
cz q[2], q[12];
cz q[0], q[12];
rz(1.5264811742873625*pi) q[12];
h q[12];
cx q[12], q[14];
cz q[11], q[13];
cz q[10], q[11];
cz q[9], q[11];
cz q[7], q[11];
cz q[6], q[11];
cz q[4], q[11];
cz q[3], q[11];
cz q[1], q[11];
cz q[0], q[11];
rz(0.5861947124099888*pi) q[11];
h q[11];
cx q[11], q[12];
cz q[13], q[31];
cz q[13], q[30];
cz q[13], q[28];
cz q[13], q[27];
cz q[13], q[25];
cz q[13], q[24];
cz q[13], q[22];
cz q[13], q[21];
cz q[13], q[19];
cz q[13], q[18];
cz q[13], q[16];
cz q[13], q[15];
cz q[10], q[13];
cz q[8], q[13];
cz q[7], q[13];
cz q[5], q[13];
cz q[4], q[13];
cz q[2], q[13];
cz q[1], q[13];
rz(1.7598303490358325*pi) q[13];
h q[13];
cz q[9], q[31];
cz q[9], q[30];
cz q[9], q[28];
cz q[9], q[27];
cz q[9], q[25];
cz q[9], q[24];
cz q[9], q[22];
cz q[9], q[21];
cz q[9], q[19];
cz q[9], q[18];
cz q[9], q[16];
cz q[9], q[15];
cz q[9], q[13];
cz q[9], q[12];
cz q[8], q[9];
cz q[6], q[9];
cz q[5], q[9];
cz q[3], q[9];
cz q[2], q[9];
cz q[0], q[9];
rz(0.6926943001600665*pi) q[9];
h q[9];
cx q[9], q[11];
cz q[8], q[10];
cz q[7], q[8];
cz q[6], q[8];
cz q[4], q[8];
cz q[3], q[8];
cz q[1], q[8];
cz q[0], q[8];
rz(1.1298537436853766*pi) q[8];
h q[8];
cx q[8], q[9];
cz q[10], q[31];
cz q[10], q[30];
cz q[10], q[28];
cz q[10], q[27];
cz q[10], q[25];
cz q[10], q[24];
cz q[10], q[22];
cz q[10], q[21];
cz q[10], q[19];
cz q[10], q[18];
cz q[10], q[16];
cz q[10], q[15];
cz q[10], q[13];
cz q[10], q[12];
cz q[7], q[10];
cz q[5], q[10];
cz q[4], q[10];
cz q[2], q[10];
cz q[1], q[10];
rz(1.2729822861350897*pi) q[10];
h q[10];
cz q[6], q[31];
cz q[6], q[30];
cz q[6], q[28];
cz q[6], q[27];
cz q[6], q[25];
cz q[6], q[24];
cz q[6], q[22];
cz q[6], q[21];
cz q[6], q[19];
cz q[6], q[18];
cz q[6], q[16];
cz q[6], q[15];
cz q[6], q[13];
cz q[6], q[12];
cz q[6], q[10];
cz q[6], q[9];
cz q[5], q[6];
cz q[3], q[6];
cz q[2], q[6];
cz q[0], q[6];
rz(0.8589843568632768*pi) q[6];
h q[6];
cx q[6], q[8];
cz q[5], q[7];
cz q[4], q[5];
cz q[3], q[5];
cz q[1], q[5];
cz q[0], q[5];
rz(0.047660592421191826*pi) q[5];
h q[5];
cx q[5], q[6];
cz q[7], q[31];
cz q[7], q[30];
cz q[7], q[28];
cz q[7], q[27];
cz q[7], q[25];
cz q[7], q[24];
cz q[7], q[22];
cz q[7], q[21];
cz q[7], q[19];
cz q[7], q[18];
cz q[7], q[16];
cz q[7], q[15];
cz q[7], q[13];
cz q[7], q[12];
cz q[7], q[10];
cz q[7], q[9];
cz q[4], q[7];
cz q[2], q[7];
cz q[1], q[7];
rz(0.0799184173799532*pi) q[7];
h q[7];
cz q[3], q[31];
cz q[3], q[30];
cz q[3], q[28];
cz q[3], q[27];
cz q[3], q[25];
cz q[3], q[24];
cz q[3], q[22];
cz q[3], q[21];
cz q[3], q[19];
cz q[3], q[18];
cz q[3], q[16];
cz q[3], q[15];
cz q[3], q[13];
cz q[3], q[12];
cz q[3], q[10];
cz q[3], q[9];
cz q[3], q[7];
cz q[3], q[6];
cz q[2], q[3];
cz q[0], q[3];
rz(0.6614386239642641*pi) q[3];
h q[3];
cx q[3], q[5];
cz q[2], q[4];
cz q[1], q[2];
cz q[0], q[2];
rz(0.6592261803119283*pi) q[2];
h q[2];
cx q[2], q[3];
cz q[4], q[31];
cz q[4], q[30];
cz q[4], q[28];
cz q[4], q[27];
cz q[4], q[25];
cz q[4], q[24];
cz q[4], q[22];
cz q[4], q[21];
cz q[4], q[19];
cz q[4], q[18];
cz q[4], q[16];
cz q[4], q[15];
cz q[4], q[13];
cz q[4], q[12];
cz q[4], q[10];
cz q[4], q[9];
cz q[4], q[7];
cz q[4], q[6];
cz q[1], q[4];
rz(0.6109198366856372*pi) q[4];
h q[4];
cz q[0], q[31];
cz q[0], q[30];
cz q[0], q[28];
cz q[0], q[27];
cz q[0], q[25];
cz q[0], q[24];
cz q[0], q[22];
cz q[0], q[21];
cz q[0], q[19];
cz q[0], q[18];
cz q[0], q[16];
cz q[0], q[15];
cz q[0], q[13];
cz q[0], q[12];
cz q[0], q[10];
cz q[0], q[9];
cz q[0], q[7];
cz q[0], q[6];
cz q[0], q[4];
cz q[0], q[3];
rz(0.7143635172690723*pi) q[0];
h q[0];
cx q[0], q[2];
cz q[1], q[31];
cz q[1], q[30];
cz q[1], q[28];
cz q[1], q[27];
cz q[1], q[25];
cz q[1], q[24];
cz q[1], q[22];
cz q[1], q[21];
cz q[1], q[19];
cz q[1], q[18];
cz q[1], q[16];
cz q[1], q[15];
cz q[1], q[13];
cz q[1], q[12];
cz q[1], q[10];
cz q[1], q[9];
cz q[1], q[7];
cz q[1], q[6];
cz q[1], q[4];
cz q[1], q[3];
rz(0.07856353445077492*pi) q[1];
h q[1];
cz q[30], q[31];
cz q[29], q[31];
cz q[29], q[30];
cz q[27], q[31];
cz q[27], q[30];
cz q[27], q[28];
cz q[24], q[25];
cz q[21], q[22];
cz q[18], q[19];
cz q[15], q[16];
cz q[12], q[13];
cz q[9], q[10];
cz q[6], q[7];
cz q[3], q[4];
cz q[0], q[1];
cx q[24], q[26];
cz q[26], q[31];
cz q[26], q[30];
cz q[26], q[28];
cz q[26], q[27];
cx q[24], q[26];
cx q[21], q[23];
cz q[23], q[31];
cz q[23], q[30];
cz q[23], q[28];
cz q[23], q[27];
cz q[23], q[25];
cz q[23], q[24];
cx q[21], q[23];
cx q[18], q[20];
cz q[20], q[31];
cz q[20], q[30];
cz q[20], q[28];
cz q[20], q[27];
cz q[20], q[25];
cz q[20], q[24];
cz q[20], q[22];
cz q[20], q[21];
cx q[18], q[20];
cx q[15], q[17];
cz q[17], q[31];
cz q[17], q[30];
cz q[17], q[28];
cz q[17], q[27];
cz q[17], q[25];
cz q[17], q[24];
cz q[17], q[22];
cz q[17], q[21];
cz q[17], q[19];
cz q[17], q[18];
cx q[15], q[17];
cx q[12], q[14];
cz q[14], q[31];
cz q[14], q[30];
cz q[14], q[28];
cz q[14], q[27];
cz q[14], q[25];
cz q[14], q[24];
cz q[14], q[22];
cz q[14], q[21];
cz q[14], q[19];
cz q[14], q[18];
cz q[14], q[16];
cz q[14], q[15];
cx q[12], q[14];
cx q[9], q[11];
cz q[11], q[31];
cz q[11], q[30];
cz q[11], q[28];
cz q[11], q[27];
cz q[11], q[25];
cz q[11], q[24];
cz q[11], q[22];
cz q[11], q[21];
cz q[11], q[19];
cz q[11], q[18];
cz q[11], q[16];
cz q[11], q[15];
cz q[11], q[13];
cz q[11], q[12];
cx q[9], q[11];
cx q[6], q[8];
cz q[8], q[31];
cz q[8], q[30];
cz q[8], q[28];
cz q[8], q[27];
cz q[8], q[25];
cz q[8], q[24];
cz q[8], q[22];
cz q[8], q[21];
cz q[8], q[19];
cz q[8], q[18];
cz q[8], q[16];
cz q[8], q[15];
cz q[8], q[13];
cz q[8], q[12];
cz q[8], q[10];
cz q[8], q[9];
cx q[6], q[8];
cx q[3], q[5];
cz q[5], q[31];
cz q[5], q[30];
cz q[5], q[28];
cz q[5], q[27];
cz q[5], q[25];
cz q[5], q[24];
cz q[5], q[22];
cz q[5], q[21];
cz q[5], q[19];
cz q[5], q[18];
cz q[5], q[16];
cz q[5], q[15];
cz q[5], q[13];
cz q[5], q[12];
cz q[5], q[10];
cz q[5], q[9];
cz q[5], q[7];
cz q[5], q[6];
cx q[3], q[5];
cx q[0], q[2];
cz q[2], q[31];
cz q[2], q[30];
cz q[2], q[28];
cz q[2], q[27];
cz q[2], q[25];
cz q[2], q[24];
cz q[2], q[22];
cz q[2], q[21];
cz q[2], q[19];
cz q[2], q[18];
cz q[2], q[16];
cz q[2], q[15];
cz q[2], q[13];
cz q[2], q[12];
cz q[2], q[10];
cz q[2], q[9];
cz q[2], q[7];
cz q[2], q[6];
cz q[2], q[4];
cz q[2], q[3];
cx q[0], q[2];
rz(0.8680696441863025*pi) q[31];
rz(0.2952403845705953*pi) q[30];
rz(1.6965113425582186*pi) q[29];
rz(1.4395705868809892*pi) q[28];
rz(1.489206481551121*pi) q[27];
rz(0.7137591687871383*pi) q[26];
rz(0.004992340437205736*pi) q[25];
rz(0.43753869835907366*pi) q[24];
rz(1.2307299424282319*pi) q[23];
rz(0.27165419233541155*pi) q[22];
rz(0.35780561714218034*pi) q[21];
rz(0.716127545558905*pi) q[20];
rz(1.1756317741293594*pi) q[19];
rz(0.10095534030799531*pi) q[18];
rz(0.8183874667561868*pi) q[17];
rz(1.8469338505694404*pi) q[16];
rz(1.0246683065470985*pi) q[15];
rz(1.0994597448491257*pi) q[14];
rz(1.62638136898549*pi) q[13];
rz(0.7013127825662663*pi) q[12];
rz(0.574188826468816*pi) q[11];
rz(1.6720439601063515*pi) q[10];
rz(1.4372056207645003*pi) q[9];
rz(0.06389823723829635*pi) q[8];
rz(1.4290616155586648*pi) q[7];
rz(0.1361945470759001*pi) q[6];
rz(0.20786750100097307*pi) q[5];
rz(1.6562728597649348*pi) q[4];
rz(1.0395939717507605*pi) q[3];
rz(1.1365456109579024*pi) q[2];
rz(1.381547649801333*pi) q[1];
rz(1.9541614518453634*pi) q[0];
h q[31];
h q[30];
h q[29];
h q[28];
h q[27];
h q[26];
h q[25];
h q[24];
h q[23];
h q[22];
h q[21];
h q[20];
h q[19];
h q[18];
h q[17];
h q[16];
h q[15];
h q[14];
h q[13];
h q[12];
h q[11];
h q[10];
h q[9];
h q[8];
h q[7];
h q[6];
h q[5];
h q[4];
h q[3];
h q[2];
h q[1];
h q[0];
rz(0.5*pi) q[31];
rz(0.5*pi) q[30];
rz(0.5*pi) q[29];
rz(0.5*pi) q[28];
rz(0.5*pi) q[27];
rz(0.5*pi) q[26];
rz(0.5*pi) q[25];
rz(0.5*pi) q[24];
rz(0.5*pi) q[23];
rz(0.5*pi) q[22];
rz(0.5*pi) q[21];
rz(0.5*pi) q[20];
rz(0.5*pi) q[19];
rz(0.5*pi) q[18];
rz(0.5*pi) q[17];
rz(0.5*pi) q[16];
rz(0.5*pi) q[15];
rz(0.5*pi) q[14];
rz(0.5*pi) q[13];
rz(0.5*pi) q[12];
rz(0.5*pi) q[11];
rz(0.5*pi) q[10];
rz(0.5*pi) q[9];
rz(0.5*pi) q[8];
rz(0.5*pi) q[7];
rz(0.5*pi) q[6];
rz(0.5*pi) q[5];
rz(0.5*pi) q[4];
rz(0.5*pi) q[3];
rz(0.5*pi) q[2];
rz(0.5*pi) q[1];
rz(0.5*pi) q[0];
