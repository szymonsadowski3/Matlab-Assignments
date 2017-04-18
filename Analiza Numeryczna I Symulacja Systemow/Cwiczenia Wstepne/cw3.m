clear;

P(1)=1;
P(2)=2;
n=10;

for i=3:n
    P(i)=P(i-1)+P(i-2);
end

t=1:n;

bar(t,P);e