G1 = zpk([],[-1 -1 -1],10);
G2 = zpk([],-2,3);
R2 = pidstd(1, 1);
R2 = pidtune(G2, R2, 2);
sys_pod = feedback(G2*R2,1);

R1 = pidstd(1,1);
R1 = pidtune(G1*sys_pod,R1,0.2);

TR1 = tf(R1)
TR2 = tf(R2)

sys_nad = feedback(G1*R1*sys_pod,1);

step(sys_nad)

G_z2y = G1/(1+G2*R2+G1*G2*R1*R2)

step(G_z2y)

R = pidstd(1,1);
R = pidtune(G2*G1,R,0.5)

Tr = tf(R)
