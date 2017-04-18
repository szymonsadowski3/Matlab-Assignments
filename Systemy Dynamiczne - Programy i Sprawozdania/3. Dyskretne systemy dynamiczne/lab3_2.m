clear; %czyszczenie przestrzeni roboczej

I = length('szymon') %liczba liter w imieniu
N = length('sadowski'); %liczba liter w nazwisku

WPC = 1; %warunek pocz�tkowy

A = [0 1; -I -N]; %Macierz A dla bloku State-Space
B = [0; 1]; %Macierz B dla bloku State-Space
C = eye(2); %Macierz C dla bloku State-Space
D = [0; 0]; %Macierz D dla bloku State-Space

h=0.1; %okres pr�bkowania [s]

syms t; %utworzenie symbolicznej zmiennej
A_p = expm(h*A); %wyliczenie exponenty macierzy h*A, A-plus (dla bloku Discrete State-Space)
B_p = double(int(expm(A*t)*B,t,0,h)); %wyliczenie wektora B-plus (dla bloku Discrete State-Space) poprzez konwersj� ca�ki ze zmienn� symboliczn� do warto�ci o podw�jnej precyzji 
C_p = C; %macierz C-plus (dla bloku Discrete State-Space)
D_p = D; %wektor D-plus (dla bloku Discrete State-Space)

open('model3_2'); %otwarcie modelu
sim('model3_2'); %symulacja modelu

clf; %wyczyszczenie okna

hold on; %umo�liwienie na�o�enia si� wykres�w: ci�g�ego i "schodkowego"

plot(x); %wykres "ci�g�y"
plot(x_p); %wykres "schodkowy"

xlabel('t'); %podpisuje o� x
ylabel('x(t)'); %podpisuje o� y
title('Symulacja uk�adu dyskretno-ci�g�ego'); %podpisanie wykresu
grid on; %w��czenie siatki