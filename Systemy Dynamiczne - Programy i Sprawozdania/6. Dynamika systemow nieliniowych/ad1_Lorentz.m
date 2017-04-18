t_vec = [0,100];
global sigma b r 
sigma = 10; 
b = 8/3; 
r = 28; 
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
title('Trajektoria fazowe systemu Lorenza')