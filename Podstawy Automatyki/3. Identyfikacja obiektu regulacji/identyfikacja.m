K = 2.18
T = 16.35
theta = 6.85

K = 2.1516
T = 15.8018
theta = 6.8954

%s = tf('s');
%sys1 = K*exp(-s*theta)/(T*s+1);
%H = ss(sys1);

modelA = tf([0 K], [T 1]);
set(modelA,'outputDelay', theta)
t = 0:59;
y_model = step(modelA, t);

figure()

plot(t, y, t, y_model);

e = y - y_model;
R = sum(e.^2)/length(e)

%hold on

%load('C:\Users\student\Downloads\obiekt.mat')

%plot(y)