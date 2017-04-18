s = tf('s');
H_1 = 1/(s^2 + s + 2);
H_2 = s/(s^2 - 0.1*s + 1);

B1 = isstable(H_1)
B2 = isstable(H_2)

figure(1)
clf
hold on
nyquist(H_1);
title('G(S) = 1/(s^2 + s + 2)');
scatter(-1,0)
hold off