// Used Gate Set: ['id', 'rz', 'sx', 'x', 'cx', 'measure', 'barrier']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(3.5843617693883476) q[0];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(3.600724395181738) q[1];
cx q[0],q[1];
rz(-3.590989035479266) q[1];
cx q[0],q[1];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(3.585500121104351) q[2];
cx q[0],q[2];
rz(-3.5905190664497457) q[2];
cx q[0],q[2];
cx q[1],q[2];
rz(-3.590614347539703) q[2];
cx q[1],q[2];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(3.6037487859227357) q[3];
cx q[0],q[3];
rz(-3.590964941947161) q[3];
cx q[0],q[3];
cx q[1],q[3];
rz(-3.590706800542815) q[3];
cx q[1],q[3];
cx q[2],q[3];
rz(-3.590633261718937) q[3];
cx q[2],q[3];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(3.586009888753983) q[4];
cx q[0],q[4];
rz(-3.5908393558940053) q[4];
cx q[0],q[4];
cx q[1],q[4];
rz(-3.590788295147571) q[4];
cx q[1],q[4];
cx q[2],q[4];
rz(-3.590473694317137) q[4];
cx q[2],q[4];
cx q[3],q[4];
rz(-3.5910035694385347) q[4];
cx q[3],q[4];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(3.588580046482149) q[5];
cx q[0],q[5];
rz(-3.590953869894304) q[5];
cx q[0],q[5];
cx q[1],q[5];
rz(-3.5908365329761263) q[5];
cx q[1],q[5];
cx q[2],q[5];
rz(-3.590170327363818) q[5];
cx q[2],q[5];
cx q[3],q[5];
rz(-3.590977777276136) q[5];
cx q[3],q[5];
cx q[4],q[5];
rz(-3.5909679370086454) q[5];
cx q[4],q[5];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(3.598521949903909) q[6];
cx q[0],q[6];
rz(-3.5908558802668473) q[6];
cx q[0],q[6];
cx q[1],q[6];
rz(-3.59075877673313) q[6];
cx q[1],q[6];
cx q[2],q[6];
rz(-3.5907104314794744) q[6];
cx q[2],q[6];
cx q[3],q[6];
rz(-3.590881598426161) q[6];
cx q[3],q[6];
cx q[4],q[6];
rz(-3.5909078095316467) q[6];
cx q[4],q[6];
cx q[5],q[6];
rz(-3.590926086836676) q[6];
cx q[5],q[6];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(3.5854575821370234) q[7];
cx q[0],q[7];
rz(-3.5908603263288708) q[7];
cx q[0],q[7];
cx q[1],q[7];
rz(-3.5909432035202222) q[7];
cx q[1],q[7];
cx q[2],q[7];
rz(-3.59058140287192) q[7];
cx q[2],q[7];
cx q[3],q[7];
rz(-3.5908936609221174) q[7];
cx q[3],q[7];
cx q[4],q[7];
rz(-3.590984587392441) q[7];
cx q[4],q[7];
cx q[5],q[7];
rz(-3.590786614812891) q[7];
cx q[5],q[7];
cx q[6],q[7];
rz(-3.5908649255558043) q[7];
cx q[6],q[7];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(3.5830396613333533) q[8];
cx q[0],q[8];
rz(-3.59077053718631) q[8];
cx q[0],q[8];
cx q[1],q[8];
rz(-3.5909428004751627) q[8];
cx q[1],q[8];
cx q[2],q[8];
rz(-3.5909216505104684) q[8];
cx q[2],q[8];
cx q[3],q[8];
rz(-3.5908469558130958) q[8];
cx q[3],q[8];
cx q[4],q[8];
rz(-3.5908110142469307) q[8];
cx q[4],q[8];
cx q[5],q[8];
rz(-3.5908091424903072) q[8];
cx q[5],q[8];
cx q[6],q[8];
rz(-3.590819188782259) q[8];
cx q[6],q[8];
cx q[7],q[8];
rz(-3.590790017713702) q[8];
cx q[7],q[8];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(3.598651869544238) q[9];
cx q[0],q[9];
rz(-3.590671263558214) q[9];
cx q[0],q[9];
cx q[1],q[9];
rz(-3.590355020811853) q[9];
cx q[1],q[9];
cx q[2],q[9];
rz(-3.5906664168702584) q[9];
cx q[2],q[9];
cx q[3],q[9];
rz(-3.5915359976941903) q[9];
cx q[3],q[9];
cx q[4],q[9];
rz(-3.591151475519302) q[9];
cx q[4],q[9];
cx q[5],q[9];
rz(-3.59111121579994) q[9];
cx q[5],q[9];
cx q[6],q[9];
rz(-3.590992818863103) q[9];
cx q[6],q[9];
cx q[7],q[9];
rz(-3.590792419709348) q[9];
cx q[7],q[9];
cx q[8],q[9];
rz(-3.590788118581757) q[9];
cx q[8],q[9];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(3.528784557998666) q[10];
cx q[0],q[10];
rz(-3.5918193183139215) q[10];
cx q[0],q[10];
cx q[1],q[10];
rz(-3.590966956955529) q[10];
cx q[1],q[10];
cx q[2],q[10];
rz(-3.589717786695695) q[10];
cx q[2],q[10];
cx q[3],q[10];
rz(-3.5918687445500437) q[10];
cx q[3],q[10];
cx q[4],q[10];
rz(-3.591171103496594) q[10];
cx q[4],q[10];
cx q[5],q[10];
rz(-3.5917949853733346) q[10];
cx q[5],q[10];
cx q[6],q[10];
rz(-3.59107697780866) q[10];
cx q[6],q[10];
cx q[7],q[10];
rz(-3.591049375082685) q[10];
cx q[7],q[10];
cx q[8],q[10];
rz(-3.590199187533255) q[10];
cx q[8],q[10];
cx q[9],q[10];
rz(-3.5913252504507858) q[10];
cx q[9],q[10];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(3.593889560187804) q[11];
cx q[0],q[11];
rz(-3.590916543330204) q[11];
cx q[0],q[11];
cx q[1],q[11];
rz(-3.590936501649174) q[11];
cx q[1],q[11];
cx q[2],q[11];
rz(-3.5906811536822194) q[11];
cx q[2],q[11];
cx q[3],q[11];
rz(-3.590930432783565) q[11];
cx q[3],q[11];
cx q[4],q[11];
rz(-3.590873784342852) q[11];
cx q[4],q[11];
cx q[5],q[11];
rz(-3.590972377635374) q[11];
cx q[5],q[11];
cx q[6],q[11];
rz(-3.5908084531717606) q[11];
cx q[6],q[11];
cx q[7],q[11];
rz(-3.5908253597603648) q[11];
cx q[7],q[11];
cx q[8],q[11];
rz(-3.590864961598365) q[11];
cx q[8],q[11];
cx q[9],q[11];
rz(-3.5907834794517974) q[11];
cx q[9],q[11];
cx q[10],q[11];
rz(-3.5910086031078166) q[11];
cx q[10],q[11];
rz(pi/2) q[12];
rx(0.5*pi) q[12];
rz(pi/2) q[12];
rz(3.6015144352003023) q[12];
cx q[0],q[12];
rz(-3.5909712464546093) q[12];
cx q[0],q[12];
cx q[1],q[12];
rz(-3.5906163032378835) q[12];
cx q[1],q[12];
cx q[2],q[12];
rz(-3.59074789126033) q[12];
cx q[2],q[12];
cx q[3],q[12];
rz(-3.591111012991602) q[12];
cx q[3],q[12];
cx q[4],q[12];
rz(-3.5909189980118663) q[12];
cx q[4],q[12];
cx q[5],q[12];
rz(-3.590786963670275) q[12];
cx q[5],q[12];
cx q[6],q[12];
rz(-3.5909623106049016) q[12];
cx q[6],q[12];
cx q[7],q[12];
rz(-3.591080465344015) q[12];
cx q[7],q[12];
cx q[8],q[12];
rz(-3.5906200626715896) q[12];
cx q[8],q[12];
cx q[9],q[12];
rz(-3.5918554760733685) q[12];
cx q[9],q[12];
cx q[10],q[12];
rz(-3.5917547958457625) q[12];
cx q[10],q[12];
cx q[11],q[12];
rz(-3.590750148851076) q[12];
cx q[11],q[12];
rz(pi/2) q[13];
rx(0.5*pi) q[13];
rz(pi/2) q[13];
rz(3.5563996506888778) q[13];
cx q[0],q[13];
rz(-3.5905743015324707) q[13];
cx q[0],q[13];
cx q[1],q[13];
rz(-3.591904650382763) q[13];
cx q[1],q[13];
cx q[2],q[13];
rz(-3.59053874736216) q[13];
cx q[2],q[13];
cx q[3],q[13];
rz(-3.5905050793078055) q[13];
cx q[3],q[13];
cx q[4],q[13];
rz(-3.590732465341086) q[13];
cx q[4],q[13];
cx q[5],q[13];
rz(-3.5907545463259054) q[13];
cx q[5],q[13];
cx q[6],q[13];
rz(-3.591159290877641) q[13];
cx q[6],q[13];
cx q[7],q[13];
rz(-3.5906943893098324) q[13];
cx q[7],q[13];
cx q[8],q[13];
rz(-3.590851241461201) q[13];
cx q[8],q[13];
cx q[9],q[13];
rz(-3.5892778278825106) q[13];
cx q[9],q[13];
cx q[10],q[13];
rz(-3.5951640450445566) q[13];
cx q[10],q[13];
cx q[11],q[13];
rz(-3.5906273219567915) q[13];
cx q[11],q[13];
cx q[12],q[13];
rz(-3.589566579770254) q[13];
cx q[12],q[13];
rz(pi/2) q[14];
rx(0.5*pi) q[14];
rz(pi/2) q[14];
rz(3.7816069401685097) q[14];
cx q[0],q[14];
rz(-3.5902714644477376) q[14];
cx q[0],q[14];
cx q[1],q[14];
rz(-3.591523383456718) q[14];
cx q[1],q[14];
cx q[2],q[14];
rz(-3.5916374487085876) q[14];
cx q[2],q[14];
cx q[3],q[14];
rz(-3.5897158893288252) q[14];
cx q[3],q[14];
cx q[4],q[14];
rz(-3.590789346276864) q[14];
cx q[4],q[14];
cx q[5],q[14];
rz(-3.5893415938514512) q[14];
cx q[5],q[14];
cx q[6],q[14];
rz(-3.5903602374515002) q[14];
cx q[6],q[14];
cx q[7],q[14];
rz(-3.591401843171085) q[14];
cx q[7],q[14];
cx q[8],q[14];
rz(-3.591374020643985) q[14];
cx q[8],q[14];
cx q[9],q[14];
rz(-3.5909338307346887) q[14];
cx q[9],q[14];
cx q[10],q[14];
rz(-3.587907126114858) q[14];
cx q[10],q[14];
cx q[11],q[14];
rz(-3.590180753451979) q[14];
cx q[11],q[14];
cx q[12],q[14];
rz(-3.587736930907502) q[14];
cx q[12],q[14];
cx q[13],q[14];
rz(-3.5934229658014014) q[14];
cx q[13],q[14];
rz(pi/2) q[15];
rx(0.5*pi) q[15];
rz(pi/2) q[15];
rz(3.5908526196939796) q[15];
cx q[0],q[15];
rz(-3.5908526196939743) q[15];
cx q[0],q[15];
cx q[1],q[15];
rz(-3.5908526196939743) q[15];
cx q[1],q[15];
cx q[2],q[15];
rz(-3.5908526196939743) q[15];
cx q[2],q[15];
cx q[3],q[15];
rz(-3.5908526196939743) q[15];
cx q[3],q[15];
cx q[4],q[15];
rz(-3.5908526196939743) q[15];
cx q[4],q[15];
cx q[5],q[15];
rz(-3.5908526196939743) q[15];
cx q[5],q[15];
cx q[6],q[15];
rz(-3.5908526196939743) q[15];
cx q[6],q[15];
cx q[7],q[15];
rz(-3.5908526196939743) q[15];
cx q[7],q[15];
cx q[8],q[15];
rz(-3.5908526196939743) q[15];
cx q[8],q[15];
cx q[9],q[15];
rz(-3.5908526196939743) q[15];
cx q[9],q[15];
cx q[10],q[15];
rz(-3.5908526196939743) q[15];
cx q[10],q[15];
cx q[11],q[15];
rz(-3.5908526196939743) q[15];
cx q[11],q[15];
cx q[12],q[15];
rz(-3.5908526196939743) q[15];
cx q[12],q[15];
cx q[13],q[15];
rz(-3.5908526196939743) q[15];
cx q[13],q[15];
cx q[14],q[15];
rz(-3.5908526196939743) q[15];
cx q[14],q[15];
rz(pi/2) q[16];
rx(0.5*pi) q[16];
rz(pi/2) q[16];
rz(3.579992072217446) q[16];
cx q[0],q[16];
rz(-3.591187092367788) q[16];
cx q[0],q[16];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(3.025307928785379) q[0];
rx(0.5*pi) q[0];
rz(5*pi/2) q[0];
rz(1.7223361936010435) q[0];
cx q[1],q[16];
rz(-3.5906660771778345) q[16];
cx q[1],q[16];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(3.025307928785379) q[1];
rx(0.5*pi) q[1];
rz(5*pi/2) q[1];
rz(1.7301986652039352) q[1];
cx q[0],q[1];
rz(-1.7255206880766003) q[1];
cx q[0],q[1];
cx q[2],q[16];
rz(-3.590185353466645) q[16];
cx q[2],q[16];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(3.025307928785379) q[2];
rx(0.5*pi) q[2];
rz(5*pi/2) q[2];
rz(1.7228831875954178) q[2];
cx q[0],q[2];
rz(-1.7252948613544408) q[2];
cx q[0],q[2];
cx q[1],q[2];
rz(-1.7253406452569477) q[2];
cx q[1],q[2];
cx q[3],q[16];
rz(-3.5905135618162354) q[16];
cx q[3],q[16];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(3.025307928785379) q[3];
rx(0.5*pi) q[3];
rz(5*pi/2) q[3];
rz(1.7316519274503128) q[3];
cx q[0],q[3];
rz(-1.7255091107958886) q[3];
cx q[0],q[3];
cx q[1],q[3];
rz(-1.7253850702239883) q[3];
cx q[1],q[3];
cx q[2],q[3];
rz(-1.7253497337858303) q[3];
cx q[2],q[3];
cx q[4],q[16];
rz(-3.5910904774211962) q[16];
cx q[4],q[16];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(3.025307928785379) q[4];
rx(0.5*pi) q[4];
rz(5*pi/2) q[4];
rz(1.7231281381137464) q[4];
cx q[0],q[4];
rz(-1.7254487649327537) q[4];
cx q[0],q[4];
cx q[1],q[4];
rz(-1.725424229526644) q[4];
cx q[1],q[4];
cx q[2],q[4];
rz(-1.725273059407204) q[4];
cx q[2],q[4];
cx q[3],q[4];
rz(-1.7255276718482435) q[4];
cx q[3],q[4];
cx q[5],q[16];
rz(-3.5907633151483003) q[16];
cx q[5],q[16];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(3.025307928785379) q[5];
rx(0.5*pi) q[5];
rz(5*pi/2) q[5];
rz(1.7243631350150883) q[5];
cx q[0],q[5];
rz(-1.7255037905189186) q[5];
cx q[0],q[5];
cx q[1],q[5];
rz(-1.7254474084810483) q[5];
cx q[1],q[5];
cx q[2],q[5];
rz(-1.725127287323564) q[5];
cx q[2],q[5];
cx q[3],q[5];
rz(-1.7255152783518084) q[5];
cx q[3],q[5];
cx q[4],q[5];
rz(-1.7255105499650152) q[5];
cx q[4],q[5];
cx q[6],q[16];
rz(-3.590726953884231) q[16];
cx q[6],q[16];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(3.025307928785379) q[6];
rx(0.5*pi) q[6];
rz(5*pi/2) q[6];
rz(1.7291403593016608) q[6];
cx q[0],q[6];
rz(-1.725456705126086) q[6];
cx q[0],q[6];
cx q[1],q[6];
rz(-1.7254100455137455) q[6];
cx q[1],q[6];
cx q[2],q[6];
rz(-1.725386814940071) q[6];
cx q[2],q[6];
cx q[3],q[6];
rz(-1.725469063062999) q[6];
cx q[3],q[6];
cx q[4],q[6];
rz(-1.7254816578674737) q[6];
cx q[4],q[6];
cx q[5],q[6];
rz(-1.7254904403693525) q[6];
cx q[5],q[6];
cx q[7],q[16];
rz(-3.5908490945027394) q[16];
cx q[7],q[16];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(3.025307928785379) q[7];
rx(0.5*pi) q[7];
rz(5*pi/2) q[7];
rz(1.7228627470239073) q[7];
cx q[0],q[7];
rz(-1.7254588415213592) q[7];
cx q[0],q[7];
cx q[1],q[7];
rz(-1.7254986651763005) q[7];
cx q[1],q[7];
cx q[2],q[7];
rz(-1.7253248148811766) q[7];
cx q[2],q[7];
cx q[3],q[7];
rz(-1.7254748592617946) q[7];
cx q[3],q[7];
cx q[4],q[7];
rz(-1.7255185507083814) q[7];
cx q[4],q[7];
cx q[5],q[7];
rz(-1.72542342210222) q[7];
cx q[5],q[7];
cx q[6],q[7];
rz(-1.7254610515145241) q[7];
cx q[6],q[7];
cx q[8],q[16];
rz(-3.5904407642379557) q[16];
cx q[8],q[16];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(3.025307928785379) q[8];
rx(0.5*pi) q[8];
rz(5*pi/2) q[8];
rz(1.721700902103847) q[8];
cx q[0],q[8];
rz(-1.7254156965767433) q[8];
cx q[0],q[8];
cx q[1],q[8];
rz(-1.7254984715074864) q[8];
cx q[1],q[8];
cx q[2],q[8];
rz(-1.7254883086522752) q[8];
cx q[2],q[8];
cx q[3],q[8];
rz(-1.725452416800662) q[8];
cx q[3],q[8];
cx q[4],q[8];
rz(-1.7254351463731095) q[8];
cx q[4],q[8];
cx q[5],q[8];
rz(-1.7254342469677522) q[8];
cx q[5],q[8];
cx q[6],q[8];
rz(-1.725439074352194) q[8];
cx q[6],q[8];
cx q[7],q[8];
rz(-1.7254250572438736) q[8];
cx q[7],q[8];
cx q[9],q[16];
rz(-3.5907096471848132) q[16];
cx q[9],q[16];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(3.025307928785379) q[9];
rx(0.5*pi) q[9];
rz(5*pi/2) q[9];
rz(1.7292027875143232) q[9];
cx q[0],q[9];
rz(-1.7253679942035618) q[9];
cx q[0],q[9];
cx q[1],q[9];
rz(-1.725216035120449) q[9];
cx q[1],q[9];
cx q[2],q[9];
rz(-1.7253656653018992) q[9];
cx q[2],q[9];
cx q[3],q[9];
rz(-1.7257835111061675) q[9];
cx q[3],q[9];
cx q[4],q[9];
rz(-1.7255987427982618) q[9];
cx q[4],q[9];
cx q[5],q[9];
rz(-1.725579397437424) q[9];
cx q[5],q[9];
cx q[6],q[9];
rz(-1.7255225060456938) q[9];
cx q[6],q[9];
cx q[7],q[9];
rz(-1.7254262114365315) q[9];
cx q[7],q[9];
cx q[8],q[9];
rz(-1.7254241446842893) q[9];
cx q[8],q[9];
cx q[10],q[16];
rz(-3.5899508671966647) q[16];
cx q[10],q[16];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(3.025307928785379) q[10];
rx(0.5*pi) q[10];
rz(5*pi/2) q[10];
rz(1.6956305626199946) q[10];
cx q[0],q[10];
rz(-1.7259196506448502) q[10];
cx q[0],q[10];
cx q[1],q[10];
rz(-1.725510079035722) q[10];
cx q[1],q[10];
cx q[2],q[10];
rz(-1.7249098351739398) q[10];
cx q[2],q[10];
cx q[3],q[10];
rz(-1.7259434006457888) q[10];
cx q[3],q[10];
cx q[4],q[10];
rz(-1.7256081743171408) q[10];
cx q[4],q[10];
cx q[5],q[10];
rz(-1.7259079583249992) q[10];
cx q[5],q[10];
cx q[6],q[10];
rz(-1.7255629456015404) q[10];
cx q[6],q[10];
cx q[7],q[10];
rz(-1.725549682103867) q[10];
cx q[7],q[10];
cx q[8],q[10];
rz(-1.7251411550404891) q[10];
cx q[8],q[10];
cx q[9],q[10];
rz(-1.7256822440945292) q[10];
cx q[9],q[10];
cx q[11],q[16];
rz(-3.591186922724607) q[16];
cx q[11],q[16];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(3.025307928785379) q[11];
rx(0.5*pi) q[11];
rz(5*pi/2) q[11];
rz(1.7269144309539555) q[11];
cx q[0],q[11];
rz(-1.7254858545803977) q[11];
cx q[0],q[11];
cx q[1],q[11];
rz(-1.7254954448330948) q[11];
cx q[1],q[11];
cx q[2],q[11];
rz(-1.7253727465471116) q[11];
cx q[2],q[11];
cx q[3],q[11];
rz(-1.7254925286578968) q[11];
cx q[3],q[11];
cx q[4],q[11];
rz(-1.7254653082861744) q[11];
cx q[4],q[11];
cx q[5],q[11];
rz(-1.7255126837485528) q[11];
cx q[5],q[11];
cx q[6],q[11];
rz(-1.7254339157405048) q[11];
cx q[6],q[11];
cx q[7],q[11];
rz(-1.7254420395938814) q[11];
cx q[7],q[11];
cx q[8],q[11];
rz(-1.725461068833481) q[11];
cx q[8],q[11];
cx q[9],q[11];
rz(-1.72542191551716) q[11];
cx q[9],q[11];
cx q[10],q[11];
rz(-1.725530090597061) q[11];
cx q[10],q[11];
cx q[12],q[16];
rz(-3.5906544298218157) q[16];
cx q[12],q[16];
rz(pi/2) q[12];
rx(0.5*pi) q[12];
rz(3.025307928785379) q[12];
rx(0.5*pi) q[12];
rz(5*pi/2) q[12];
rz(1.7305782905336067) q[12];
cx q[0],q[12];
rz(-1.7255121402003013) q[12];
cx q[0],q[12];
cx q[1],q[12];
rz(-1.7253415849974025) q[12];
cx q[1],q[12];
cx q[2],q[12];
rz(-1.7254048148911147) q[12];
cx q[2],q[12];
cx q[3],q[12];
rz(-1.725579299985168) q[12];
cx q[3],q[12];
cx q[4],q[12];
rz(-1.725487034089427) q[12];
cx q[4],q[12];
cx q[5],q[12];
rz(-1.725423589733095) q[12];
cx q[5],q[12];
cx q[6],q[12];
rz(-1.7255078463989602) q[12];
cx q[6],q[12];
cx q[7],q[12];
rz(-1.7255646214112814) q[12];
cx q[7],q[12];
cx q[8],q[12];
rz(-1.7253433914581218) q[12];
cx q[8],q[12];
cx q[9],q[12];
rz(-1.7259370249563126) q[12];
cx q[9],q[12];
cx q[10],q[12];
rz(-1.725888646692303) q[12];
cx q[10],q[12];
cx q[11],q[12];
rz(-1.7254058996951893) q[12];
cx q[11],q[12];
cx q[13],q[16];
rz(-3.5885694446640537) q[16];
cx q[13],q[16];
rz(pi/2) q[13];
rx(0.5*pi) q[13];
rz(3.025307928785379) q[13];
rx(0.5*pi) q[13];
rz(5*pi/2) q[13];
rz(1.7089000026737855) q[13];
cx q[0],q[13];
rz(-1.7253214025877912) q[13];
cx q[0],q[13];
cx q[1],q[13];
rz(-1.7259606539029186) q[13];
cx q[1],q[13];
cx q[2],q[13];
rz(-1.72530431830939) q[13];
cx q[2],q[13];
cx q[3],q[13];
rz(-1.7252881403362068) q[13];
cx q[3],q[13];
cx q[4],q[13];
rz(-1.7253974025201704) q[13];
cx q[4],q[13];
cx q[5],q[13];
rz(-1.7254080127436333) q[13];
cx q[5],q[13];
cx q[6],q[13];
rz(-1.7256024981877562) q[13];
cx q[6],q[13];
cx q[7],q[13];
rz(-1.7253791064521515) q[13];
cx q[7],q[13];
cx q[8],q[13];
rz(-1.7254544761147939) q[13];
cx q[8],q[13];
cx q[9],q[13];
rz(-1.7246984287823994) q[13];
cx q[9],q[13];
cx q[10],q[13];
rz(-1.7275268388352492) q[13];
cx q[10],q[13];
cx q[11],q[13];
rz(-1.7253468796466607) q[13];
cx q[11],q[13];
cx q[12],q[13];
rz(-1.7248371781216763) q[13];
cx q[12],q[13];
cx q[14],q[16];
rz(-3.5891119969994882) q[16];
cx q[14],q[16];
rz(pi/2) q[14];
rx(0.5*pi) q[14];
rz(3.025307928785379) q[14];
rx(0.5*pi) q[14];
rz(5*pi/2) q[14];
rz(1.8171152696276422) q[14];
cx q[0],q[14];
rz(-1.7251758851134515) q[14];
cx q[0],q[14];
cx q[1],q[14];
rz(-1.7257774497878209) q[14];
cx q[1],q[14];
cx q[2],q[14];
rz(-1.7258322597440607) q[14];
cx q[2],q[14];
cx q[3],q[14];
rz(-1.7249089234624992) q[14];
cx q[3],q[14];
cx q[4],q[14];
rz(-1.7254247346090383) q[14];
cx q[4],q[14];
cx q[5],q[14];
rz(-1.724729069226443) q[14];
cx q[5],q[14];
cx q[6],q[14];
rz(-1.7252185417890977) q[14];
cx q[6],q[14];
cx q[7],q[14];
rz(-1.7257190479728273) q[14];
cx q[7],q[14];
cx q[8],q[14];
rz(-1.725705678857625) q[14];
cx q[8],q[14];
cx q[9],q[14];
rz(-1.7254941614211559) q[14];
cx q[9],q[14];
cx q[10],q[14];
rz(-1.724039787323487) q[14];
cx q[10],q[14];
cx q[11],q[14];
rz(-1.7251322972054213) q[14];
cx q[11],q[14];
cx q[12],q[14];
rz(-1.7239580061349609) q[14];
cx q[12],q[14];
cx q[13],q[14];
rz(-1.7266902257952306) q[14];
cx q[13],q[14];
cx q[15],q[16];
rz(-3.5908526196939743) q[16];
cx q[15],q[16];
rz(pi/2) q[15];
rx(0.5*pi) q[15];
rz(3.025307928785379) q[15];
rx(0.5*pi) q[15];
rz(5*pi/2) q[15];
rz(1.7254551383750092) q[15];
cx q[0],q[15];
rz(-1.7254551383750067) q[15];
cx q[0],q[15];
cx q[1],q[15];
rz(-1.7254551383750067) q[15];
cx q[1],q[15];
cx q[2],q[15];
rz(-1.7254551383750067) q[15];
cx q[2],q[15];
cx q[3],q[15];
rz(-1.7254551383750067) q[15];
cx q[3],q[15];
cx q[4],q[15];
rz(-1.7254551383750067) q[15];
cx q[4],q[15];
cx q[5],q[15];
rz(-1.7254551383750067) q[15];
cx q[5],q[15];
cx q[6],q[15];
rz(-1.7254551383750067) q[15];
cx q[6],q[15];
cx q[7],q[15];
rz(-1.7254551383750067) q[15];
cx q[7],q[15];
cx q[8],q[15];
rz(-1.7254551383750067) q[15];
cx q[8],q[15];
cx q[9],q[15];
rz(-1.7254551383750067) q[15];
cx q[9],q[15];
cx q[10],q[15];
rz(-1.7254551383750067) q[15];
cx q[10],q[15];
cx q[11],q[15];
rz(-1.7254551383750067) q[15];
cx q[11],q[15];
cx q[12],q[15];
rz(-1.7254551383750067) q[15];
cx q[12],q[15];
cx q[13],q[15];
rz(-1.7254551383750067) q[15];
cx q[13],q[15];
cx q[14],q[15];
rz(-1.7254551383750067) q[15];
cx q[14],q[15];
rz(pi/2) q[16];
rx(0.5*pi) q[16];
rz(3.025307928785379) q[16];
rx(0.5*pi) q[16];
rz(5*pi/2) q[16];
rz(1.720236492712368) q[16];
cx q[0],q[16];
rz(-1.7256158571944071) q[16];
cx q[0],q[16];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(9.302844749961256) q[0];
rx(0.5*pi) q[0];
rz(5*pi/2) q[0];
rz(-4.14595782923265) q[0];
cx q[1],q[16];
rz(-1.7253655020749163) q[16];
cx q[1],q[16];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(9.302844749961256) q[1];
rx(0.5*pi) q[1];
rz(5*pi/2) q[1];
rz(-4.164884143282274) q[1];
cx q[0],q[1];
rz(4.153623452153502) q[1];
cx q[0],q[1];
cx q[2],q[16];
rz(-1.725134507577102) q[16];
cx q[2],q[16];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(9.302844749961256) q[2];
rx(0.5*pi) q[2];
rz(5*pi/2) q[2];
rz(-4.147274537342219) q[2];
cx q[0],q[2];
rz(4.1530798486048655) q[2];
cx q[0],q[2];
cx q[1],q[2];
rz(4.1531900582896855) q[2];
cx q[1],q[2];
cx q[3],q[16];
rz(-1.725292216300694) q[16];
cx q[3],q[16];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(9.302844749961256) q[3];
rx(0.5*pi) q[3];
rz(5*pi/2) q[3];
rz(-4.168382394094562) q[3];
cx q[0],q[3];
rz(4.153595583658498) q[3];
cx q[0],q[3];
cx q[1],q[3];
rz(4.1532969967843885) q[3];
cx q[1],q[3];
cx q[2],q[3];
rz(4.153211935933329) q[3];
cx q[2],q[3];
cx q[4],q[16];
rz(-1.7255694323550452) q[16];
cx q[4],q[16];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(9.302844749961256) q[4];
rx(0.5*pi) q[4];
rz(5*pi/2) q[4];
rz(-4.147864175139422) q[4];
cx q[0],q[4];
rz(4.153450320843574) q[4];
cx q[0],q[4];
cx q[1],q[4];
rz(4.153391259924207) q[4];
cx q[1],q[4];
cx q[2],q[4];
rz(4.153027367588573) q[4];
cx q[2],q[4];
cx q[3],q[4];
rz(4.153640263286444) q[4];
cx q[3],q[4];
cx q[5],q[16];
rz(-1.7254122262860034) q[16];
cx q[5],q[16];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(9.302844749961256) q[5];
rx(0.5*pi) q[5];
rz(5*pi/2) q[5];
rz(-4.150837023931209) q[5];
cx q[0],q[5];
rz(4.15358277684178) q[5];
cx q[0],q[5];
cx q[1],q[5];
rz(4.153447055632294) q[5];
cx q[1],q[5];
cx q[2],q[5];
rz(4.152676469248459) q[5];
cx q[2],q[5];
cx q[3],q[5];
rz(4.153610430020577) q[5];
cx q[3],q[5];
cx q[4],q[5];
rz(4.153599047984759) q[5];
cx q[4],q[5];
cx q[6],q[16];
rz(-1.7253947541877108) q[16];
cx q[6],q[16];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(9.302844749961256) q[6];
rx(0.5*pi) q[6];
rz(5*pi/2) q[6];
rz(-4.162336619948816) q[6];
cx q[0],q[6];
rz(4.153469434247122) q[6];
cx q[0],q[6];
cx q[1],q[6];
rz(4.153357116578938) q[6];
cx q[1],q[6];
cx q[2],q[6];
rz(4.153301196614439) q[6];
cx q[2],q[6];
cx q[3],q[6];
rz(4.153499181915136) q[6];
cx q[3],q[6];
cx q[4],q[6];
rz(4.15352949976389) q[6];
cx q[4],q[6];
cx q[5],q[6];
rz(4.153550640748187) q[6];
cx q[5],q[6];
cx q[7],q[16];
rz(-1.7254534444710863) q[16];
cx q[7],q[16];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(9.302844749961256) q[7];
rx(0.5*pi) q[7];
rz(5*pi/2) q[7];
rz(-4.147225333390167) q[7];
cx q[0],q[7];
rz(4.153474576915982) q[7];
cx q[0],q[7];
cx q[1],q[7];
rz(4.153570439265391) q[7];
cx q[1],q[7];
cx q[2],q[7];
rz(4.153151951867367) q[7];
cx q[2],q[7];
cx q[3],q[7];
rz(4.153513134357096) q[7];
cx q[3],q[7];
cx q[4],q[7];
rz(4.153618307142596) q[7];
cx q[4],q[7];
cx q[5],q[7];
rz(4.153389316315506) q[7];
cx q[5],q[7];
cx q[6],q[7];
rz(4.153479896747556) q[7];
cx q[6],q[7];
cx q[8],q[16];
rz(-1.725257236041461) q[16];
cx q[8],q[16];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(9.302844749961256) q[8];
rx(0.5*pi) q[8];
rz(5*pi/2) q[8];
rz(-4.1444285739302105) q[8];
cx q[0],q[8];
rz(4.153370719654207) q[8];
cx q[0],q[8];
cx q[1],q[8];
rz(4.153569973071428) q[8];
cx q[1],q[8];
cx q[2],q[8];
rz(4.153545509340545) q[8];
cx q[2],q[8];
cx q[3],q[8];
rz(4.1534591115142945) q[8];
cx q[3],q[8];
cx q[4],q[8];
rz(4.153417538641012) q[8];
cx q[4],q[8];
cx q[5],q[8];
rz(4.15341537361847) q[8];
cx q[5],q[8];
cx q[6],q[8];
rz(4.153426993958562) q[8];
cx q[6],q[8];
cx q[7],q[8];
rz(4.1533932523811625) q[8];
cx q[7],q[8];
cx q[9],q[16];
rz(-1.7253864380754664) q[16];
cx q[9],q[16];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(9.302844749961256) q[9];
rx(0.5*pi) q[9];
rz(5*pi/2) q[9];
rz(-4.162486895335244) q[9];
cx q[0],q[9];
rz(4.153255891882313) q[9];
cx q[0],q[9];
cx q[1],q[9];
rz(4.152890100376163) q[9];
cx q[1],q[9];
cx q[2],q[9];
rz(4.153250285817644) q[9];
cx q[2],q[9];
cx q[3],q[9];
rz(4.154256112142408) q[9];
cx q[3],q[9];
cx q[4],q[9];
rz(4.153811343220057) q[9];
cx q[4],q[9];
cx q[5],q[9];
rz(4.153764775627433) q[9];
cx q[5],q[9];
cx q[6],q[9];
rz(4.15362782831608) q[9];
cx q[6],q[9];
cx q[7],q[9];
rz(4.153396030720319) q[9];
cx q[7],q[9];
cx q[8],q[9];
rz(4.153391055694147) q[9];
cx q[8],q[9];
cx q[10],q[16];
rz(-1.7250218336296401) q[16];
cx q[10],q[16];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(9.302844749961256) q[10];
rx(0.5*pi) q[10];
rz(5*pi/2) q[10];
rz(-4.081672807375805) q[10];
cx q[0],q[10];
rz(4.154583823299131) q[10];
cx q[0],q[10];
cx q[1],q[10];
rz(4.153597914377397) q[10];
cx q[1],q[10];
cx q[2],q[10];
rz(4.152153024728413) q[10];
cx q[2],q[10];
cx q[3],q[10];
rz(4.1546409936139055) q[10];
cx q[3],q[10];
cx q[4],q[10];
rz(4.1538340464992904) q[10];
cx q[4],q[10];
cx q[5],q[10];
rz(4.15455567788524) q[10];
cx q[5],q[10];
cx q[6],q[10];
rz(4.153725173244321) q[10];
cx q[6],q[10];
cx q[7],q[10];
rz(4.153693245736656) q[10];
cx q[7],q[10];
cx q[8],q[10];
rz(4.152709851215216) q[10];
cx q[8],q[10];
cx q[9],q[10];
rz(4.154012345123342) q[10];
cx q[9],q[10];
cx q[11],q[16];
rz(-1.725615775678475) q[16];
cx q[11],q[16];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(9.302844749961256) q[11];
rx(0.5*pi) q[11];
rz(5*pi/2) q[11];
rz(-4.15697842966357) q[11];
cx q[0],q[11];
rz(4.15353960196976) q[11];
cx q[0],q[11];
cx q[1],q[11];
rz(4.153562687348445) q[11];
cx q[1],q[11];
cx q[2],q[11];
rz(4.15326733158614) q[11];
cx q[2],q[11];
cx q[3],q[11];
rz(4.153555667615922) q[11];
cx q[3],q[11];
cx q[4],q[11];
rz(4.153490143525053) q[11];
cx q[4],q[11];
cx q[5],q[11];
rz(4.153604184366725) q[11];
cx q[5],q[11];
cx q[6],q[11];
rz(4.153414576297829) q[11];
cx q[6],q[11];
cx q[7],q[11];
rz(4.153434131802518) q[11];
cx q[7],q[11];
cx q[8],q[11];
rz(4.153479938437248) q[11];
cx q[8],q[11];
cx q[9],q[11];
rz(4.1533856897075605) q[11];
cx q[9],q[11];
cx q[10],q[11];
rz(4.153646085628583) q[11];
cx q[10],q[11];
cx q[12],q[16];
rz(-1.725359905356694) q[16];
cx q[12],q[16];
rz(pi/2) q[12];
rx(0.5*pi) q[12];
rz(9.302844749961256) q[12];
rx(0.5*pi) q[12];
rz(5*pi/2) q[12];
rz(-4.165797966386947) q[12];
cx q[0],q[12];
rz(4.1536028759531085) q[12];
cx q[0],q[12];
cx q[1],q[12];
rz(4.153192320405706) q[12];
cx q[1],q[12];
cx q[2],q[12];
rz(4.153344525575552) q[12];
cx q[2],q[12];
cx q[3],q[12];
rz(4.153764541043183) q[12];
cx q[3],q[12];
cx q[4],q[12];
rz(4.153542441249751) q[12];
cx q[4],q[12];
cx q[5],q[12];
rz(4.153389719831695) q[12];
cx q[5],q[12];
cx q[6],q[12];
rz(4.153592540038812) q[12];
cx q[6],q[12];
cx q[7],q[12];
rz(4.1537292072050205) q[12];
cx q[7],q[12];
cx q[8],q[12];
rz(4.153196668865658) q[12];
cx q[8],q[12];
cx q[9],q[12];
rz(4.154625646238754) q[12];
cx q[9],q[12];
cx q[10],q[12];
rz(4.154509191482022) q[12];
cx q[10],q[12];
cx q[11],q[12];
rz(4.153347136884518) q[12];
cx q[11],q[12];
cx q[13],q[16];
rz(-1.7243580406925287) q[16];
cx q[13],q[16];
rz(pi/2) q[13];
rx(0.5*pi) q[13];
rz(9.302844749961256) q[13];
rx(0.5*pi) q[13];
rz(5*pi/2) q[13];
rz(-4.113614619366369) q[13];
cx q[0],q[13];
rz(4.1531437378935046) q[13];
cx q[0],q[13];
cx q[1],q[13];
rz(4.154682525155043) q[13];
cx q[1],q[13];
cx q[2],q[13];
rz(4.153102613113071) q[13];
cx q[2],q[13];
cx q[3],q[13];
rz(4.153063669964324) q[13];
cx q[3],q[13];
cx q[4],q[13];
rz(4.153326682730778) q[13];
cx q[4],q[13];
cx q[5],q[13];
rz(4.153352223353567) q[13];
cx q[5],q[13];
cx q[6],q[13];
rz(4.153820383084941) q[13];
cx q[6],q[13];
cx q[7],q[13];
rz(4.153282640965455) q[13];
cx q[7],q[13];
cx q[8],q[13];
rz(4.153464068635661) q[13];
cx q[8],q[13];
cx q[9],q[13];
rz(4.151644133382221) q[13];
cx q[9],q[13];
cx q[10],q[13];
rz(4.158452600188213) q[13];
cx q[10],q[13];
cx q[11],q[13];
rz(4.153205065532138) q[13];
cx q[11],q[13];
cx q[12],q[13];
rz(4.151978126775388) q[13];
cx q[12],q[13];
cx q[14],q[16];
rz(-1.7246187447130388) q[16];
cx q[14],q[16];
rz(pi/2) q[14];
rx(0.5*pi) q[14];
rz(9.302844749961256) q[14];
rx(0.5*pi) q[14];
rz(5*pi/2) q[14];
rz(-4.374107277499388) q[14];
cx q[0],q[14];
rz(4.1527934524415295) q[14];
cx q[0],q[14];
cx q[1],q[14];
rz(4.154241521512341) q[14];
cx q[1],q[14];
cx q[2],q[14];
rz(4.154373458452431) q[14];
cx q[2],q[14];
cx q[3],q[14];
rz(4.152150830083024) q[14];
cx q[3],q[14];
cx q[4],q[14];
rz(4.153392475743926) q[14];
cx q[4],q[14];
cx q[5],q[14];
rz(4.151717890172182) q[14];
cx q[5],q[14];
cx q[6],q[14];
rz(4.152896134356373) q[14];
cx q[6],q[14];
cx q[7],q[14];
rz(4.154100938353829) q[14];
cx q[7],q[14];
cx q[8],q[14];
rz(4.154068756606707) q[14];
cx q[8],q[14];
cx q[9],q[14];
rz(4.153559597956376) q[14];
cx q[9],q[14];
cx q[10],q[14];
rz(4.150058670727844) q[14];
cx q[10],q[14];
cx q[11],q[14];
rz(4.152688528891046) q[14];
cx q[11],q[14];
cx q[12],q[14];
rz(4.149861809418123) q[14];
cx q[12],q[14];
cx q[13],q[14];
rz(4.156438729495495) q[14];
cx q[13],q[14];
cx q[15],q[16];
rz(-1.7254551383750067) q[16];
cx q[15],q[16];
rz(pi/2) q[15];
rx(0.5*pi) q[15];
rz(9.302844749961256) q[15];
rx(0.5*pi) q[15];
rz(5*pi/2) q[15];
rz(-4.153465662809282) q[15];
cx q[0],q[15];
rz(4.153465662809276) q[15];
cx q[0],q[15];
cx q[1],q[15];
rz(4.153465662809276) q[15];
cx q[1],q[15];
cx q[2],q[15];
rz(4.153465662809276) q[15];
cx q[2],q[15];
cx q[3],q[15];
rz(4.153465662809276) q[15];
cx q[3],q[15];
cx q[4],q[15];
rz(4.153465662809276) q[15];
cx q[4],q[15];
cx q[5],q[15];
rz(4.153465662809276) q[15];
cx q[5],q[15];
cx q[6],q[15];
rz(4.153465662809276) q[15];
cx q[6],q[15];
cx q[7],q[15];
rz(4.153465662809276) q[15];
cx q[7],q[15];
cx q[8],q[15];
rz(4.153465662809276) q[15];
cx q[8],q[15];
cx q[9],q[15];
rz(4.153465662809276) q[15];
cx q[9],q[15];
cx q[10],q[15];
rz(4.153465662809276) q[15];
cx q[10],q[15];
cx q[11],q[15];
rz(4.153465662809276) q[15];
cx q[11],q[15];
cx q[12],q[15];
rz(4.153465662809276) q[15];
cx q[12],q[15];
cx q[13],q[15];
rz(4.153465662809276) q[15];
cx q[13],q[15];
cx q[14],q[15];
rz(4.153465662809276) q[15];
cx q[14],q[15];
rz(pi/2) q[16];
rx(0.5*pi) q[16];
rz(9.302844749961256) q[16];
rx(0.5*pi) q[16];
rz(5*pi/2) q[16];
rz(-4.140903490032907) q[16];
cx q[0],q[16];
rz(4.153852540499052) q[16];
cx q[0],q[16];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(12.657511165971695) q[0];
rx(0.5*pi) q[0];
rz(5*pi/2) q[0];
cx q[1],q[16];
rz(4.153249892902377) q[16];
cx q[1],q[16];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(12.657511165971695) q[1];
rx(0.5*pi) q[1];
rz(5*pi/2) q[1];
cx q[2],q[16];
rz(4.152693849633773) q[16];
cx q[2],q[16];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(12.657511165971695) q[2];
rx(0.5*pi) q[2];
rz(5*pi/2) q[2];
cx q[3],q[16];
rz(4.153073481508052) q[16];
cx q[3],q[16];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(12.657511165971695) q[3];
rx(0.5*pi) q[3];
rz(5*pi/2) q[3];
cx q[4],q[16];
rz(4.153740787969587) q[16];
cx q[4],q[16];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(12.657511165971695) q[4];
rx(0.5*pi) q[4];
rz(5*pi/2) q[4];
cx q[5],q[16];
rz(4.153362366070792) q[16];
cx q[5],q[16];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(12.657511165971695) q[5];
rx(0.5*pi) q[5];
rz(5*pi/2) q[5];
cx q[6],q[16];
rz(4.1533203077415415) q[16];
cx q[6],q[16];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(12.657511165971695) q[6];
rx(0.5*pi) q[6];
rz(5*pi/2) q[6];
cx q[7],q[16];
rz(4.153461585292791) q[16];
cx q[7],q[16];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(12.657511165971695) q[7];
rx(0.5*pi) q[7];
rz(5*pi/2) q[7];
cx q[8],q[16];
rz(4.15298927804059) q[16];
cx q[8],q[16];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(12.657511165971695) q[8];
rx(0.5*pi) q[8];
rz(5*pi/2) q[8];
cx q[9],q[16];
rz(4.153300289436872) q[16];
cx q[9],q[16];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(12.657511165971695) q[9];
rx(0.5*pi) q[9];
rz(5*pi/2) q[9];
cx q[10],q[16];
rz(4.152422624168985) q[16];
cx q[10],q[16];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(12.657511165971695) q[10];
rx(0.5*pi) q[10];
rz(5*pi/2) q[10];
cx q[11],q[16];
rz(4.15385234427626) q[16];
cx q[11],q[16];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(12.657511165971695) q[11];
rx(0.5*pi) q[11];
rz(5*pi/2) q[11];
cx q[12],q[16];
rz(4.153236420644277) q[16];
cx q[12],q[16];
rz(pi/2) q[12];
rx(0.5*pi) q[12];
rz(12.657511165971695) q[12];
rx(0.5*pi) q[12];
rz(5*pi/2) q[12];
cx q[13],q[16];
rz(4.150824761025407) q[16];
cx q[13],q[16];
rz(pi/2) q[13];
rx(0.5*pi) q[13];
rz(12.657511165971695) q[13];
rx(0.5*pi) q[13];
rz(5*pi/2) q[13];
cx q[14],q[16];
rz(4.151452320197049) q[16];
cx q[14],q[16];
rz(pi/2) q[14];
rx(0.5*pi) q[14];
rz(12.657511165971695) q[14];
rx(0.5*pi) q[14];
rz(5*pi/2) q[14];
cx q[15],q[16];
rz(4.153465662809276) q[16];
cx q[15],q[16];
rz(pi/2) q[15];
rx(0.5*pi) q[15];
rz(12.657511165971695) q[15];
rx(0.5*pi) q[15];
rz(5*pi/2) q[15];
rz(pi/2) q[16];
rx(0.5*pi) q[16];
rz(12.657511165971695) q[16];
rx(0.5*pi) q[16];
rz(5*pi/2) q[16];