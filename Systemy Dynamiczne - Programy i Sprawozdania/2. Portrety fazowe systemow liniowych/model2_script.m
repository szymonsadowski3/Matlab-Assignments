clear; %usuwa zmienne w przestrzeni roboczej
open('m2'); %otwiera model

%----INPUT----%
J=[0 0;0 0]; %Macierz J do wpisania przez u¿ytkownika skryptu
P = [4 3; 3 3]; %Macierz P do wpisania przez u¿ytkownika skryptu
%----INPUT----%

iterations = 8; %iloœæ kroków dla pêtli (czyli bok kwadratu z którego wybierane bêd¹ wartoœci pocz¹tkowe)
hold on; %umo¿liwienie nak³adania siê kolejnych rysowanych trajektorii

xlabel('x_1'); %podpisanie osi odciêtych
ylabel('x_2');  %podpisanie osi rzêdnych

for i = -iterations/2:iterations/2, %pêtla zewnêtrzna
    for j = -iterations/2:iterations/2, %pêtla zagnie¿d¿ona (dzia³aniem obu pêtli jest wybieranie punktów z kwadratu o boku równym "iterations" i zaczepionym w (0,0)
        WPC = [i j]; %przypisanie aktualnej wartoœci wektora WPC z kwadratu
        A = P*J*inv(P); %obliczenie macierzy A ze wzoru na postaæ Jordana
        sim('m2'); %odpalenie symulacji
        plot(x(:,1),x(:,2),'r'); %rysowanie wykresu na kolor czerwony
        title('Portret fazowy') %podpisanie wykresu
        axis([-iterations/2, iterations/2 , -iterations/2, iterations/2]); %skalowanie wykresu
    end
end