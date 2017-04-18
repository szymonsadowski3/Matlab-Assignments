s = tf('s');
H_1 = 1/(4*s+1);
H_2 = 0.4*s/(0.4*s+1);
H_3 = s/(s^2+2*s+1);
H_4 = 1/(s^2+0.1*s+1);

figure(1)
clf
hold on
bode(H_1);
title('Dolnoprzepustowy G_D(S) = 1/(4*s+1)');
hold off

figure(2)
clf
hold on
bode(H_2);
title('Górnoprzepustowy G_G(S) = 0.4*s/(0.4*s+1)');
hold off

figure(3)
clf
hold on
bode(H_3);
title('Pasmowoprzepustowy G_P(S) = 0.4*s/(0.4*s+1)');
hold off

figure(4)
clf
hold on
bode(H_4);
title('Filtr drugiego rzêdu G_2(S) = 0.4*s/(0.4*s+1)');
hold off