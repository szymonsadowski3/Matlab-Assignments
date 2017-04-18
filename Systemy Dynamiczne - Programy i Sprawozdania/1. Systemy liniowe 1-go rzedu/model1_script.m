clear               %czyœci przestrzeñ robocz¹
open('RC');         %otwiera model
WPC = 4;            %ustawia parametr WPC (warunek pocz¹tkowy kondensatora)
R = 20;             %ustawia parametr R (opór)
C = 0.1;            %ustawia parametr C (pojemnoœæ)
K = -1/(R*C);       %oblicza i ustawia parametr K (odwrotnoœæ sta³ej czasowej wziêta ze znakiem minus)
sim('RC');          %za³¹cza symulacjê modelu
plot(tout, x)       %rysuje wartoœci wyliczone dziêki modelowi do okna o najni¿szym niewykorzystanym numerze
xlabel('t [1s]')    %podpisuje oœ x
ylabel('x(t) [1V]') %podpisuje oœ y
title('Wykres zale¿noœci napiêcia od czasu w uk³adzie RC') %nanosi tytu³ na wykres
grid on             %za³¹cza w³aœciwoœæ "siatka"