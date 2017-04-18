a = 4; %parametr
T = 20; %prawy kraniec odcinka na którym rozwiazujemy równanie za pomoca ode45
t = 0:0.2:T; %wektor czasu

figure %wykres

hold on; %wlaczenie nakladania sie wykresów

for param = -2:1:2 %petla po wartosciach poczatkowych
        sol = ode45(@(t,x) a*x - x^3, [0 T], param); %rozwiazanie równania rózniczkowego (system nieliniowy)
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
ylabel('punkty równowagi')
title('Wartosci punktów równowagi')
legend('1-szy punkt równowagi', '2-gi punkt równowagi', '3-ci punkt równowagi')