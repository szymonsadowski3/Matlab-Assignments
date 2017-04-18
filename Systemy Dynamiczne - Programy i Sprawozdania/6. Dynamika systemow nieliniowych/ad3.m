a = 4; %parametr
T = 20; %prawy kraniec odcinka na kt�rym rozwiazujemy r�wnanie za pomoca ode45
t = 0:0.2:T; %wektor czasu

figure %wykres

hold on; %wlaczenie nakladania sie wykres�w

for param = -2:1:2 %petla po wartosciach poczatkowych
        sol = ode45(@(t,x) a*x - x^3, [0 T], param); %rozwiazanie r�wnania r�zniczkowego (system nieliniowy)
        y = deval(sol, t); %ewaluacja
        plot(t,y,'r') %narysowanie wykresu rozwiazania
end;

xlabel('x1')
ylabel('x2')
title('x^{prim} = ax - x^3')

figure %wykres

x = 0:.1:20;
y_1 = 0*x;
y_2 = sqrt(x);
y_3 = -sqrt(x);
hold on
plot(x, y_1, 'r')
plot(x, y_2, 'g')
plot(x, y_3, 'b')

xlabel('a')
ylabel('punkty r�wnowagi')
title('Wartosci punkt�w r�wnowagi')
legend('1-szy punkt r�wnowagi', '2-gi punkt r�wnowagi', '3-ci punkt r�wnowagi')