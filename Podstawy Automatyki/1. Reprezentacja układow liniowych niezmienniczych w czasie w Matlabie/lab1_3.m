obiekt = zpk(-1/4,[0 -5 -1/10], 4/5)

[A1,B1,C1,D1] = zp2ss(-1/4,[0 -5 -1/10], 4/5)

[A2,B2,C2,D2] = tf2ss([4/5 1/5],[1 51/10 1/2 0])

figure
step(A1,B1,C1,D1);

figure
step(A2,B2,C2,D2);