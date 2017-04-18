clear               %czy�ci przestrze� robocz�
open('RC');         %otwiera model
WPC = 4;            %ustawia parametr WPC (warunek pocz�tkowy kondensatora)
R = 20;             %ustawia parametr R (op�r)
C = 0.1;            %ustawia parametr C (pojemno��)
K = -1/(R*C);       %oblicza i ustawia parametr K (odwrotno�� sta�ej czasowej wzi�ta ze znakiem minus)
sim('RC');          %za��cza symulacj� modelu
plot(tout, x)       %rysuje warto�ci wyliczone dzi�ki modelowi do okna o najni�szym niewykorzystanym numerze
xlabel('t [1s]')    %podpisuje o� x
ylabel('x(t) [1V]') %podpisuje o� y
title('Wykres zale�no�ci napi�cia od czasu w uk�adzie RC') %nanosi tytu� na wykres
grid on             %za��cza w�a�ciwo�� "siatka"