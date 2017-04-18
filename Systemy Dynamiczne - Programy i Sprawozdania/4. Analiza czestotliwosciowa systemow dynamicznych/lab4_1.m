clear
amp_vec = [10 10 10 10 10 20 40 80];
freq_vec = [0.2 0.2 0.2 5 10 1 1 1];
ph_vec = [0 pi/4 pi/2 pi/2 pi/2 pi/2 pi/2 pi/2];
open('model4_1');

for i = 1:8
    amp = amp_vec(i);
    freq = freq_vec(i);
    ph = ph_vec(i);
    sim('model4_1');
    figure(i)
    clf
    plot(x)
    xlabel('Czas [s]')
    ylabel('Amplituda')
    title(strcat('Sygna³ o Amp = ' , num2str(amp) , ';Freq = ', num2str(freq), ';Phase = ', num2str(ph)));
    axis([-1 30 -10 25])
    if(i>3)
        axis([-1 30 -22 30]);
        if(i==8)
            axis([-1 30 -30 50]);
        end
    end
end

figure(9)
clf
s = tf('s');
G_s = (3*s+3)/(s^2 + 2*s + 21);
bode(G_s)
title('Bode G(S) = (3s+3)/(s^2+2s+21)');