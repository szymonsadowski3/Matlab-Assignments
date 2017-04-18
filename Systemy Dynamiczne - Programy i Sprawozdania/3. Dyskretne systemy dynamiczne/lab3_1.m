%---USER INPUT---%
WPC = 2; %warunek pocz¹tkowy x(0)
lambda = -1; %wartoœæ w³asna
%---USER INPUT---%

open('model3_1'); %otwiera model
sim('model3_1'); %przeprowadza symulacjê

plot(x); %rysuje wykres
axis([0, 10 , -128, 128]); %skaluje
xlabel('t'); %podpisuje oœ x
ylabel('x(t)'); %podpisuje oœ y
title(strcat('Rozwi¹zanie równania x(k+1) = ' , int2str(lambda) , '*x(k)')); %podpisanie wykresu
grid on; %w³¹czenie siatki