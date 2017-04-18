function blad = ident(X0)
K = X0(1);
T = X0(2);
n = X0(3);
%---------------------------------------- ------%
% tutaj kod, kt�ry b�dzie oblicza� %
% odpowied� skokow� obiektu symulowanego %
% o takiej samej d�ugo�ci jak odpowied� %
% obiektu rzeczywistego %
modelA = tf([0 K], [T 1]);
set(modelA,'outputDelay', n)
t = 0:59;
y_rzecz = step(modelA, t);
global y;
%load('C:\Users\student\Downloads\obiekt.mat');
%---------------------------------------- ------%
e = y_rzecz - y;
blad = sum(e.^2) / length(e);