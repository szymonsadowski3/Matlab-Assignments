%ezplot('100*exp((-ksi*pi)/sqrt(1-ksi^2))',[0.35 0.5])
%ylabel('MO [%]'), xlabel('\xi')

%ezplot('atan(2*ksi/(sqrt(sqrt(1+4*ksi*ksi)-2*ksi*ksi)))',[0.4 0.41])
%ylabel('PM [%]'), xlabel('\xi')
%grid on
%[x,y] = ginput(2)

%2*ksi/(sqrt(sqrt(1+4*ksi*ksi)-2*ksi*ksi))

%ksi = 0.4037
%a = atand(2*ksi/(sqrt(sqrt(1+4*ksi*ksi)-2*ksi*ksi)))

%s = tf('s')
%margin(10/(s*(s+1)))

%T = 1/(2.5*sqrt(0.46))

a = 0.46
T = 0.59

s = tf('s')
G_c = (1/a)*((s+1/T)/(s+1/(T*a)))

s = tf('s')
G = 10/(s*(s+1))

Series = series(G_c,G)

Cloop1 = feedback(G,1)
Cloop2 = feedback(G_c*G,1)

step(Cloop1)
hold on
step(Cloop2)

%margin(25,39.5,0.4) 