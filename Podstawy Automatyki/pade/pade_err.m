function blad = pade_err(X0)
theta = X0(1);
a = X0(2);
b = X0(3);
%---------------------------------------- ------%
% tutaj kod, który będzie obliczał %
% odpowiedź skokową obiektu symulowanego %
% o takiej samej długości jak odpowiedź %
% obiektu rzeczywistego %
modelA = zpk([], [-5 -5 -5 -5 -5 -5 -5 -5 -5 -5], 5^10);

[licz, mian] = pade(theta, 5);

tB = tf(licz, mian);

s = tf('s');

tC = 1/(a*s*s + b*s +1);

tSeries = tB*tC;

t = 0:0.01:5;

y_series = step(tSeries, t);

y_modelA = step(modelA, t);


%---------------------------------------- ------%
e = y_series - y_modelA;
blad = sum(e.^2) / length(e);
