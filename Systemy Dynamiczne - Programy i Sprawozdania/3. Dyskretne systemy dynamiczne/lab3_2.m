clear; %czyszczenie przestrzeni roboczej

I = length('szymon') %liczba liter w imieniu
N = length('sadowski'); %liczba liter w nazwisku

WPC = 1; %warunek pocz¹tkowy

A = [0 1; -I -N]; %Macierz A dla bloku State-Space
B = [0; 1]; %Macierz B dla bloku State-Space
C = eye(2); %Macierz C dla bloku State-Space
D = [0; 0]; %Macierz D dla bloku State-Space

h=0.1; %okres próbkowania [s]

syms t; %utworzenie symbolicznej zmiennej
A_p = expm(h*A); %wyliczenie exponenty macierzy h*A, A-plus (dla bloku Discrete State-Space)
B_p = double(int(expm(A*t)*B,t,0,h)); %wyliczenie wektora B-plus (dla bloku Discrete State-Space) poprzez konwersjê ca³ki ze zmienn¹ symboliczn¹ do wartoœci o podwójnej precyzji 
C_p = C; %macierz C-plus (dla bloku Discrete State-Space)
D_p = D; %wektor D-plus (dla bloku Discrete State-Space)

open('model3_2'); %otwarcie modelu
sim('model3_2'); %symulacja modelu

clf; %wyczyszczenie okna

hold on; %umo¿liwienie na³o¿enia siê wykresów: ci¹g³ego i "schodkowego"

plot(x); %wykres "ci¹g³y"
plot(x_p); %wykres "schodkowy"

xlabel('t'); %podpisuje oœ x
ylabel('x(t)'); %podpisuje oœ y
title('Symulacja uk³adu dyskretno-ci¹g³ego'); %podpisanie wykresu
grid on; %w³¹czenie siatki