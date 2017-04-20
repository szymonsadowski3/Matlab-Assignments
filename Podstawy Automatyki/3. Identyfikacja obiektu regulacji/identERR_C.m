function blad = ident(X0)
global nn;
K = X0(1);
T = X0(2);
%---------------------------------------- ------%
% tutaj kod, który bêdzie oblicza³ %
% odpowiedŸ skokow¹ obiektu symulowanego %
% o takiej samej d³ugoœci jak odpowiedŸ %
% obiektu rzeczywistego %
s = tf('s');
modelC = K/((T*s+1)^nn);
t = 0:59;
y_rzecz = step(modelC, t);
global y;
load('obiekt.mat');
%---------------------------------------- ------%
e = y_rzecz - y;
blad = sum(e.^2) / length(e);