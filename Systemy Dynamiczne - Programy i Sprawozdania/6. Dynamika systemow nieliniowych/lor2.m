function x = lor2(t,u) 

global sigma b r 
x = zeros(3,1); 
x(1) = -sigma*u(1) + sigma*u(2); 
x(2) = r*u(1) - u(2) - u(1)*u(3); 
x(3) = -b*u(3) + u(1)*u(2);