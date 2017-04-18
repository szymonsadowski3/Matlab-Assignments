clear

load('C:\Users\student\Downloads\obiekt.mat')

K = 2.18
T = 16.35
theta = 6.85

K = 30.1516
T1 = 14
T2 = 10
theta = 6.8954

%s = tf('s');
%sys1 = K*exp(-s*theta)/(T*s+1);
%H = ss(sys1);

modelA = tf([K], [T1*T2 T1+T2 + 1]);
set(modelA,'outputDelay', theta)
t = 0:59;
y_model = step(modelA, t);

figure()

plot(t, y, t, y_model);

e = y - y_model;
R = sum(e.^2)/length(e)

%hold o

%plot(y)