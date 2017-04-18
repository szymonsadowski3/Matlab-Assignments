function [ YOUNGSTERS, ADULTS ] = population( m1, d1, rm, sm, rd, sd, n )

M(1) = m1;
D(1) = d1;

for i=2:n
    M(i)=(11/12)*(1-sm)*M(i-1)+rd*D(i-1)
    D(i)=(1/12)*(1-sm)*M(i-1)+(1-sd)*D(i-1)
end

YOUNGSTERS = M;
ADULTS = D;

end

