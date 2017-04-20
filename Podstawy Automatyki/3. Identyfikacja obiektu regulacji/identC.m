clear

load('obiekt.mat')

%INIT_PARAMS--
K = 2
T = 2
n = 2
%--

s = tf('s');
modelC = K/((T*s+1)^n);
t = 0:59;
y_model = step(modelC, t);

figure()

plot(t, y, t, y_model);

title(sprintf('Initial Guess: K=%f T=%f N=%d',K,T,n))

for k = 1:5
    global nn
    best = Inf
    best_params = NaN
    best_expon = 0
    nn = k
    [parametry, blad] = fminsearch('identERR_C',[K,T]);
    if (best>=blad)
        best = blad
        best_params = parametry
        best_expon = k
    end
end

figure

s = tf('s');
modelC_minimized = best_params(1)/((best_params(2)*s+1)^best_expon);
y_model_minimized = step(modelC_minimized, t);
plot(t, y, t, y_model_minimized);

title(sprintf('Optimized: K=%f T=%f N=%d',best_params(1),best_params(2),best_expon))