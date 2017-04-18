function [ FIB_WEIGHT ] = fib( n, a, b )

P(1)=1;
P(2)=2;

for i=3:n
    P(i)=a*P(i-1)+b*P(i-2);
end

t=1:n;

bar(t,P);

FIB = P;

end

