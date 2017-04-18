licz = [0 0 1]
mian = [5 6 1]

rlocus(licz, mian,[0:0.1:8])
sgrid

licz = [0 0.5 1]
mian = [5 6 1]

rlocus(licz, mian,[0:0.1:8])
sgrid

licz = [0 0 1]
mian = [5/2 8 6.5 1]

rlocus(licz, mian,[0:0.1:40])
sgrid
%[K,bieguny] = rlocfind(licz, mian)

licz = [0 0 1]
mian = [0.2 1.2 1 0]

s = tf('s')
G = 1/(s*(s+1)*(0.2*s+1))

%figure()
%step(G)
%rlocus(G,[0:0.1:8])
%line([0 -1],[0 1])
%axis(-1,0)
%sgrid

%pause
%[K,bieguny] = rlocfind(licz, mian)
%[K,bieguny] = rlocfind(licz, mian)

figure()
s = tf('s')
G = 0.4127/(s*(s+1)*(0.2*s+1))
sys_zamk = feedback(G, 1)
step(sys_zamk)
 ---------


licz = [0 0 1]
mian = [5 6 1]

rlocus(licz, mian,[0:0.1:8])
sgrid

licz = [0 0.5 1]
mian = [5 6 1]

rlocus(licz, mian,[0:0.1:8])
sgrid

licz = [0 0 1]
mian = [5/2 8 6.5 1]

rlocus(licz, mian,[0:0.1:40])
sgrid
%[K,bieguny] = rlocfind(licz, mian)

licz = [0 0 1]
mian = [0.2 1.2 1 0]

s = tf('s')
G = 1/(s*(s+1)*(0.2*s+1))

%figure()
%step(G)
%rlocus(G,[0:0.1:8])
%line([0 -1],[0 1])
%axis(-1,0)
%sgrid

%pause
%[K,bieguny] = rlocfind(licz, mian)
%[K,bieguny] = rlocfind(licz, mian)

figure()
s = tf('s')
G = 1/(s*(s+1)*(0.2*s+1))
sys_zamk = feedback(G, 1)
step(sys_zamk)

s = tf('s')
G_c = (s+1)/(0.1*s+1)
sys = series(G_c, G);
%figure()
%step(sys)

%rlocus(sys)
%line([0 -2],[0 2])
%axis(-1,0)
%sgrid

%pause
%[K,bieguny] = rlocfind(sys)


figure()
sys_zamk = feedback(1.62*sys, 1)
step(sys_zamk)