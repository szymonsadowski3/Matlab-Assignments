clear; %wyczyszczenie przestrzeni roboczej
%--USER INPUT--%
a = -4; %lewy kraniec przedzia³u izolacji
b = -2; %prawy kraniec przedzia³u izolacji
eps = 0.001; %¿¹dana dok³adnoœæ
iterations_upper_bound = 10; %górny limit iteracji
%--USER INPUT--%

poly = @(x) x.^3 -2*(x.^2) - 11*x + 12; %funkcja, dla której szukamy pierwiastków

prim = @(x) 3*x.^2 - 4*x - 11; %pochodna
bis = @(x) 6*x - 4; %druga pochodna

disp('Wbis(-1)*W(-1) = '); %sprawdzenie dlaczego dla x0 = -1 nie spe³nia warunków dzia³ania algorytmu
disp(bis(-1)*poly(-1));

if(bis(a)*poly(a)>0) %wybranie poprawnego krañca przedzia³u
    x_0 = a;
else
    x_0 = b;
end;

x = x_0; %przyjêcie "punktu startowego"

for i=0:iterations_upper_bound
    if(abs(poly(x)) <= eps) %spe³niony jeden z warunków zakoñczenia obliczeñ
        break;
    end;
    x_next = x - poly(x)/prim(x); %wyznaczenie kolejnego przybli¿enia pierwiastka
    if(abs(x_next - x) <= eps) %spe³niony jeden z warunków zakoñczenia obliczeñ
        x = x_next;
        break;
    end;
    x = x_next; %przyjêcie wyliczonego przybli¿enia pierwiastka jako "punktu startowego dla liczenia kolejnego przybli¿enia"
end;

format long %odpowiednie formatowanie
disp('Root = '); %i wyœwietlenie wyników
disp(double(x));
disp('poly(root) = ');
disp(double(poly(x)));