%--1--
%PARAMETERS
M = 1000;
F = 1000;
alpha = 500;
c = 400;
ksi = alpha/(2*sqrt(c*M))

%SYS
licz = [0 0 1];
mian = [M alpha c];

%ZPK
[z, p, k] = tf2zp(licz, mian);
z
p
k

%STEP RESPONSE
sys = tf(licz, mian);
figure
step(sys)
title(['KSI = ', num2str(ksi)]);

%%--ENDOF1--
%PARAMETERS
M = 1000;
F = 1000;
alpha = 2*sqrt(c*M);
c = 400;
ksi = alpha/(2*sqrt(c*M))

licz = [0 0 1];
mian = [M alpha c];

sys = tf(licz, mian);

figure
step(sys)
title(['KSI = ', num2str(ksi)]);

%--ENDOF2--

stability = isstable(tf(licz, mian))


