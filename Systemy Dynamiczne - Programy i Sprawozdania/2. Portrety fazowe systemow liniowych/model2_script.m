clear; %usuwa zmienne w przestrzeni roboczej
open('m2'); %otwiera model

%----INPUT----%
J=[0 0;0 0]; %Macierz J do wpisania przez u�ytkownika skryptu
P = [4 3; 3 3]; %Macierz P do wpisania przez u�ytkownika skryptu
%----INPUT----%

iterations = 8; %ilo�� krok�w dla p�tli (czyli bok kwadratu z kt�rego wybierane b�d� warto�ci pocz�tkowe)
hold on; %umo�liwienie nak�adania si� kolejnych rysowanych trajektorii

xlabel('x_1'); %podpisanie osi odci�tych
ylabel('x_2');  %podpisanie osi rz�dnych

for i = -iterations/2:iterations/2, %p�tla zewn�trzna
    for j = -iterations/2:iterations/2, %p�tla zagnie�d�ona (dzia�aniem obu p�tli jest wybieranie punkt�w z kwadratu o boku r�wnym "iterations" i zaczepionym w (0,0)
        WPC = [i j]; %przypisanie aktualnej warto�ci wektora WPC z kwadratu
        A = P*J*inv(P); %obliczenie macierzy A ze wzoru na posta� Jordana
        sim('m2'); %odpalenie symulacji
        plot(x(:,1),x(:,2),'r'); %rysowanie wykresu na kolor czerwony
        title('Portret fazowy') %podpisanie wykresu
        axis([-iterations/2, iterations/2 , -iterations/2, iterations/2]); %skalowanie wykresu
    end
end