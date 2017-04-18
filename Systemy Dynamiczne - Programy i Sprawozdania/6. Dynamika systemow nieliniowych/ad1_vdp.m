t_vec = [0 40];

global ep;
ep = 0.1;

figure
for k = -3:3
    for l = -3:3
        X_0 = [k;l];
        [t,X] = ode45(@VanDerPol, t_vec, X_0);

        x = X(:,1);
        y = X(:,2);

        hold on
        plot(x,y)
        plot(x(1),y(1),'ro')
        xlabel('x')
        ylabel('y')
    end
end

xlabel('x1')
ylabel('x2')
title('Trajektorie oscylatora Van der Pola')