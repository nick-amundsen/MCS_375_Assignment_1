function [ a,r ] = problem_2_errors( p, n )
%[ a,r ] = problem_2_errors( k, n )
%   Generates the absolute errors, and then uses those to get the relative
%   errors

a = ones(1,n);
r = ones(1,n);
X = 1^p;


for i = 1: n
    a(i) = abs(X - ((i^(p+1))/(p+1)));
    r(i) = 100*(a(i) / X);
    X = X + (i+1)^p;
end

   
