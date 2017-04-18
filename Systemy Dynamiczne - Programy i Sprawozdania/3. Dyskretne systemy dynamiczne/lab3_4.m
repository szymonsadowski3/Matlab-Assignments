clear; %wyczyszczenie przestrzeni roboczej
%--USER INPUT--%
a = -4; %lewy kraniec przedzia�u izolacji
b = -2; %prawy kraniec przedzia�u izolacji
eps = 0.001; %��dana dok�adno��
iterations_upper_bound = 10; %g�rny limit iteracji
%--USER INPUT--%

poly = @(x) x.^3 -2*(x.^2) - 11*x + 12; %funkcja, dla kt�rej szukamy pierwiastk�w

prim = @(x) 3*x.^2 - 4*x - 11; %pochodna
bis = @(x) 6*x - 4; %druga pochodna

disp('Wbis(-1)*W(-1) = '); %sprawdzenie dlaczego dla x0 = -1 nie spe�nia warunk�w dzia�ania algorytmu
disp(bis(-1)*poly(-1));

if(bis(a)*poly(a)>0) %wybranie poprawnego kra�ca przedzia�u
    x_0 = a;
else
    x_0 = b;
end;

x = x_0; %przyj�cie "punktu startowego"

for i=0:iterations_upper_bound
    if(abs(poly(x)) <= eps) %spe�niony jeden z warunk�w zako�czenia oblicze�
        break;
    end;
    x_next = x - poly(x)/prim(x); %wyznaczenie kolejnego przybli�enia pierwiastka
    if(abs(x_next - x) <= eps) %spe�niony jeden z warunk�w zako�czenia oblicze�
        x = x_next;
        break;
    end;
    x = x_next; %przyj�cie wyliczonego przybli�enia pierwiastka jako "punktu startowego dla liczenia kolejnego przybli�enia"
end;

format long %odpowiednie formatowanie
disp('Root = '); %i wy�wietlenie wynik�w
disp(double(x));
disp('poly(root) = ');
disp(double(poly(x)));