figure

t_vec = [0,100];
global sigma b r 
sigma = 100; 
b = 50; 
r = 200; 
u0 = [1;1;1]; 
[t,u] = ode45(@lor2,t_vec,u0); 

x = u(:,1);
y = u(:,2);
z = u(:,3);

plot3(x,y,z);
view(100, 10)

xlabel('x1')
ylabel('x2')
zlabel('x3')
title('Trajektoria fazowa systemu Lorenza (sigma = 100; b = 50; r = 200')

%2--
figure

t_vec = [0,100];
sigma = 200; 
b = 50; 
r = 100; 
u0 = [1;2;3]; 
[t,u] = ode45(@lor2,t_vec,u0); 

x = u(:,1);
y = u(:,2);
z = u(:,3);

plot3(x,y,z);

xlabel('x1')
ylabel('x2')
zlabel('x3')
title('Trajektoria fazowa systemu Lorenza (sigma = 200; b = 50; r = 100)')