e_param = 0.4; %parametr stojacy przy czynniku nieliniowym
T = 1000; %prawy kraniec odcinka na kt�rym rozwi�zujemy r�wnanie za pomoc� ode45
t = 0:0.2:T; %wektor czasu

figure(1) %1 wykres

hold on; %w��czenie nak�adania si� wykres�w

for param = -2:1:2 %p�tla po wartosciach pocz�tkowych
        sol = ode45(@(t,x) -x + e_param*x*x, [0 T], param); %rozwi�zanie r�wnania r�niczkowego (system nieliniowy)
        y = deval(sol, t); %ewaluacja
        plot(t,y,'r') %narysowanie wykresu rozwi�zania
        
        sol = ode45(@(t,x) -x, [0,T], param); %rozwi�zanie r�wnania r�niczkowego (linearyzacja w 0)
        y = deval(sol, t); %ewaluacja
        plot(t,y,'g') %narysowanie wykresu rozwi�zania
        
        sol = ode45(@(t,x) x - 1/e_param, [0 T], param); %rozwiazanie r�wnania r�niczkowego (linearyzacja w 1/e_param)
        y = deval(sol, t); %ewaluacja
        plot(t,y,'b') %narysowanie wykresu rozwi�zania
end;

axis([0 5 -10 5]) %poni�ej formatowanie wykresu
title('Przyklad nr. 1')
xlabel('t')
ylabel('x(t)')
legend('Rozwi�zanie bez linearyzacji', 'Linearyzacja dla punktu r�wnowagi 0', 'Linearyzacja dla punktu r�wnowagi 1/e_{param}')

%2 wykres
figure(2)

[x1, x2] = meshgrid(-.5:0.1:0.5, -.5:.1:.5); %"region zainteresowania"
x1dot = -x1; %1 r�wnanie systemu
x2dot = -x2.^2; %2 r�wnanie systemu
quiver(x1,x2,x1dot, x2dot, 1.2, 'LineWidth', 0.9); %narysowanie portretu fazowego systemu

title('Przyk�ad nr. 2 nieliniowy') %ponizej formatowanie portretu
xlabel('x1')
ylabel('x2')


%3 wykres
figure(3)

[x1, x2] = meshgrid(-1:0.2:1, -1:.2:1); %"region zainteresowania"
x1dot = x2; %1 r�wnanie systemu
x2dot = -2.*x1 -3.*(x1.^2)-x2; %2 r�wnanie systemu
quiver(x1,x2,x1dot, x2dot, 1.2,'k','Autoscale','off') %narysowanie portretu fazowego systemu

title('Przyklad nr. 3 nieliniowy') %ponizej formatowanie portretu
xlabel('x1')
ylabel('x2')
axis([-1 1 -1 1])

%4 wykres
figure(4)

[x1, x2] = meshgrid(-1:0.2:1, -1:.2:1); %"region zainteresowania"
x1dot = x2; %1 r�wnanie systemu
x2dot = -2.*x1 -1.*x2; %2 r�wnanie systemu
quiver(x1,x2,x1dot, x2dot, 1.2,'k','Autoscale','off') %narysowanie portretu fazowego systemu

title('Przyklad nr. 3 zlinearyzowany dla punktu (0,0)') %ponizej formatowanie portretu
xlabel('x1')
ylabel('x2')
axis([-1 1 -1 1])

%5 wykres
figure(5)

%narysowanie portretu systemu nieliniowego
[x1, x2] = meshgrid(-1:0.2:1, -1:.2:1); %"region zainteresowania"
x1dot = x2; %1 r�wnanie systemu
x2dot = -2.*x1 -3.*(x1.^2)-x2; %2 r�wnanie systemu
quiver(x1,x2,x1dot, x2dot, 1.2,'k','Autoscale','off') %narysowanie portretu fazowego systemu

hold on

%linearyzacja dla punktu (-2/3,0)
[z1, z2] = meshgrid(-1:0.2:1, -1:.2:1); %"region zainteresowania"
z1dot = z2; %1 r�wnanie systemu
z2dot = 2.*z1 + -1.*z2; %2 r�wnanie systemu
quiver(z1-2/3,z2,z1dot, z2dot, 1.2,'g','Autoscale','off') %narysowanie portretu fazowego systemu

title('Przyklad nr. 3 zlinearyzowany dla punktu (-2/3,0)') %ponizej formatowanie portretu
xlabel('z1')
ylabel('z2')
axis([-1 1 -1 1])

legend('Portret oryginalnego systemu', 'Linearyzacja dla punktu r�wnowagi (-2/3;0)')
