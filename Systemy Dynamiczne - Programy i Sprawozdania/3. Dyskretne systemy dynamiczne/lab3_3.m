K_0 = 100; %kapita� pocz�tkowy
m = 1; %liczba kapitalizacji w roku
n = 5; %czas trwania inwestycji
r = 0.3; %nominalna stopa procentowa

clf; %czyszczenie
hold on; %umo�liwienie nak�adania si� wykres�w

for i = 0:n %w p�tli z odpowiedniego wzoru wyliczany jest stan konta po i latach
        K_tmp = K_0*(1+r/m)^(m*i);
        scatter(i, K_tmp, 'r');
end

xlabel('Czas trwania inwestycji [1 div = 1 rok]'); %podpisuje o� x
ylabel('Stan konta [z�]'); %podpisuje o� y
%title(strcat('Kapitalizacja odsetek [l.kapitalizacji w roku=' , num2str(m) , '] [cz. trwania inwestycji=' , num2str(n) , '] [stopa proc.=' , num2str(r), ']')); %podpisanie wykresu
title('Kapitalizacja odsetek <czerwony = 1 w roku> <niebieski = 2 w roku> <zielony = 4 w roku> <zolty = 12 w roku>');
grid on; %w��czenie siatki

m = 2;

%wykres -> 2 kapitalizacje w roku 
for i = 0:n
        K_tmp = K_0*(1+r/m)^(m*i);
        scatter(i, K_tmp, 'b');
end

m = 4;

%wykres -> 4 kapitalizacje w roku 
for i = 0:n
        K_tmp = K_0*(1+r/m)^(m*i);
        scatter(i, K_tmp, 'g');
end

m = 12;

%wykres -> 12 kapitalizacji w roku 
for i = 0:n
        K_tmp = K_0*(1+r/m)^(m*i);
        scatter(i, K_tmp, 'y');
end