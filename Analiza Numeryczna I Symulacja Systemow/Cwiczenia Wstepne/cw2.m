P=100;
r=0.04;
n=20;
s=0.03;

for i=2:n
    P(i)=(1+r-s)*P(i-1)
end

t=1:n;

bar(t,P);