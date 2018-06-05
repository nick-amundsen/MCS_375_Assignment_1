function  c  = problem_1_coefficients(n)
% c = problem_1(n) 
%   Generate coefficients for use with horner's method

c = ones(1,n+1);

for i = 1: n
    c(i+1) = ((-1)^i)*(factorial(n)/(factorial(i)*factorial(n-i)));
end

%c0 is always going to be 1 no matter what n is

end

