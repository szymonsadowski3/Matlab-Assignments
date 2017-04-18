r=4.5;
R=109;
h_0=.13;
g=9.81;

k=(r*r*sqrt(2*g))/(R*R);

open('waterTank3.slx')
sim('waterTank3.slx')

ha = (sqrt(h_0) - k*tout/2).^2;

E=sqrt(sum((ha-simout.Data).^2)/240); %length(tout)-1