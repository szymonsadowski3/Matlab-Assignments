clear

k = 1;
T = 1;
Td = 1;
T1 = 1;
T2 = 1;
ksi = 1;
Ti = 1;

licz = [0,0,k];
mian = [T1*T2 ,T1+T2 ,1];

LICZNIKI{1} = [0,0,k];
LICZNIKI{2} = [0,0,k];
LICZNIKI{3} = [0,0,k];
LICZNIKI{4} = [0,0,k];
LICZNIKI{5} = [0,Td,0];

MIANOWNIKI{1} = [0,T,1];
MIANOWNIKI{2} = [T1*T2 ,T1+T2 ,1]
MIANOWNIKI{3} = [T^2 ,2*ksi*T ,1]
MIANOWNIKI{4} = [T*Ti , Ti , 0]
MIANOWNIKI{5} = [0,T,1]

TITLES = {'inercyjny I rzedu'; 'inercyjny II rzędu'; 'całkujący idealny'; 'różniczkujący idealny'; 'inercyjny I rzędu z opoznieniem'};
CELL_TITLES = cellstr(TITLES)


for k = 1:length(LICZNIKI)
    figure(k);
    subplot(1 ,4, 1);
    step(LICZNIKI(k), MIANOWNIKI(k));
    subplot(1 ,4, 2);
    impulse(LICZNIKI(k), MIANOWNIKI(k));
    %suptitle(CELL_TITLES(k));
    %text(.75,1.25,CELL_TITLES(k))
    theta = 20;
    n = 5;

    [licz_op, mian_op] = pade(theta, n)
    licz_iner = LICZNIKI{k}; mian_iner = MIANOWNIKI{k};

    [licz, mian] = series(licz_op, mian_op, licz_iner, mian_iner);
   
    subplot(1 ,4, 3);
    step(licz, mian);
    subplot(1 ,4, 4);
    impulse(licz, mian);
end