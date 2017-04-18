function ret = VanDerPol(t,X)
global ep;
x1 = X(1);
x2 = X(2);
dx1dt = x2;
dx2dt = -x1 + ep*(x2*(1-x1.^2));
ret = [dx1dt; dx2dt];