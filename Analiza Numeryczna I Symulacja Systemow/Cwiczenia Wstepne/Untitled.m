P=100;
r=0.04;
n=20;

for i=2:n
    P(i)=(1+r)*P(i-1)
end

t=1:n;

bar(t,P);