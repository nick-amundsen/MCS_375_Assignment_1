function [w3] = problem_3_method3(A,v,k)
%[w3] = problem_3_method3(A,v,k)
%   Input a matrix A, a vector v, and a scalar c to calculate w = Av in the
%   third method from problem 3.
w3 = v*k ;

for i = 1: k-1  
    w3 = A*w3 + v*(k-i);
end

end

