clear;
X(1) = 0.5;
n=750;
lambda = 3.8

for i=2:n
    X(i)= lambda*X(i-1)*(1-X(i-1))
end

t=1:n;

plot(t,X,'o');