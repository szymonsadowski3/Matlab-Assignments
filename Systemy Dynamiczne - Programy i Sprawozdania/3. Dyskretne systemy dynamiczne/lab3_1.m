%---USER INPUT---%
WPC = 2; %warunek pocz�tkowy x(0)
lambda = -1; %warto�� w�asna
%---USER INPUT---%

open('model3_1'); %otwiera model
sim('model3_1'); %przeprowadza symulacj�

plot(x); %rysuje wykres
axis([0, 10 , -128, 128]); %skaluje
xlabel('t'); %podpisuje o� x
ylabel('x(t)'); %podpisuje o� y
title(strcat('Rozwi�zanie r�wnania x(k+1) = ' , int2str(lambda) , '*x(k)')); %podpisanie wykresu
grid on; %w��czenie siatki