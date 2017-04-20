figure()
ezplot('100*exp((-ksi*pi)/sqrt(1-ksi^2))',[0 1])
ylabel('MO [%]'), xlabel('\xi')
%odczytujemy ksi 0.4037

figure()
ezplot('atand(2*ksi/(sqrt(sqrt(1+4*ksi*ksi)-2*ksi*ksi)))',[0 1])
%odczytujemy PM 39.5

s = tf('s')
sys = 10/(s*(s+1))

[Gm,Pm,Wgm,Wpm] = margin(sys)

disp('Margin: ')

disp(Pm)
%Pm okolo 18

theta = 39.5 - 18

a = (1-sind(theta))/(1+sind(theta))

target = -10*log10(a)
%ok 3.3

figure()
bode(sys)
%dla wzmocnienia /target/ odczytujemy czestotliwosc ok 2.5

freq = 2.5

%przeksztalcony wzor na T
T = 1/(freq*sqrt(a))
%ok 0.59

s = tf('s')
kompensator = (1/a)*((s+1/T)/(s+1/(a*T)))

%zamkniety bez kompensacji
G_z = feedback(sys,1) 
figure()
step(G_z)
hold on
step(feedback(sys*kompensator,1))
step(feedback(sys*kompensator*kompensator,1))
step(feedback(sys*kompensator*kompensator*kompensator,1))

