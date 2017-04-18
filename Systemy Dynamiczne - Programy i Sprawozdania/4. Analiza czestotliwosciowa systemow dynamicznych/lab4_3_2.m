open('model4_3');
%1----

a1=2;
w1=0.001/(2*pi);
p1=1;
a2 = 0;
w2 = 0;
p2 = 0;
a3 = 0;
w3 = 0;
p3 = 0;
a4 = 0;
w4 = 0;
p4 = 0;
a5 = 0;
w5 = 0;
p5 = 0;

sim('model4_3');

figure(1); 
clf;
plot(low);
title('LowPass1');
ylabel('Amplituda[dB]')
figure(2);
clf
plot(high);
title('HighPass1');
ylabel('Amplituda[dB]')
figure(3);
clf
plot(band);
title('BandPass1');
ylabel('Amplituda[dB]')
figure(4);
clf
plot(sec);
title('SecOrder1');
ylabel('Amplituda[dB]')

%2----
a2=3;
w2=1/(2*pi);
p2=5;
a1 = 0;
a3 = 0;
a4 = 0;
a5 = 0;

sim('model4_3');

figure(5);
clf
plot(low);
title('LowPass2');
ylabel('Amplituda[dB]')
figure(6);
clf
plot(high);
title('HighPass2');
ylabel('Amplituda[dB]')
figure(7);
clf
plot(band);
title('BandPass2');
ylabel('Amplituda[dB]')
figure(8);
clf
plot(sec);
title('SecOrder2');
ylabel('Amplituda[dB]')

%3----
a3=1;
w3=30/(2*pi);
p3=2;
a1 = 0;
a2 = 0;
a4 = 0;
a5 = 0;

sim('model4_3');

figure(9);
clf
plot(low);
title('LowPass3');
ylabel('Amplituda[dB]')
figure(10);
clf
plot(high);
title('HighPass3');
ylabel('Amplituda[dB]')
figure(11);
clf
plot(band);
title('BandPass3');
ylabel('Amplituda[dB]')
figure(12);
clf
plot(sec);
title('SecOrder3');
ylabel('Amplituda[dB]')

%4----
a4=2;
w4=0.01/(2*pi);
p4=1;
a1 = 0;
a2 = 0;
a3 = 0;
a5 = 0;

sim('model4_3');

figure(13);
clf
plot(low);
title('LowPass4');
ylabel('Amplituda[dB]')
figure(14);
clf
plot(high);
title('HighPass4');
ylabel('Amplituda[dB]')
figure(15);
clf
plot(band);
title('BandPass4');
ylabel('Amplituda[dB]')
figure(16);
clf
plot(sec);
title('SecOrder4');
ylabel('Amplituda[dB]')

%5----
a5=4;
w5=5/(2*pi);
p5=0;

a1 = 0;
a2 = 0;
a3 = 0;
a4 = 0;

sim('model4_3');

figure(17);
clf
plot(low);
title('LowPass5');
ylabel('Amplituda[dB]')
figure(18);
clf
plot(high);
title('HighPass5');
ylabel('Amplituda[dB]')
figure(19);
clf
plot(band);
title('BandPass5');
ylabel('Amplituda[dB]')
figure(20);
clf
plot(sec);
title('SecOrder5');
ylabel('Amplituda[dB]')

%sum---
a1=2;
w1=0.001;
p1=1;
a2=3;
w2=1;
p2=5;
a3=1;
w3=30;
p3=2;
a4=2;
w4=0.01;
p4=1;
a5=4;
w5=5;
p5=0;

sim('model4_3');

figure(21);
clf
plot(low);
title('Sum LowPass');
ylabel('Amplituda[dB]')
figure(22);
clf
plot(high);
title('Sum HighPass');
ylabel('Amplituda[dB]')
figure(23);
clf
plot(band);
title('Sum BandPass');
ylabel('Amplituda[dB]')
figure(24);
clf
plot(sec);
title('Sum SecOrder');
ylabel('Amplituda[dB]')
