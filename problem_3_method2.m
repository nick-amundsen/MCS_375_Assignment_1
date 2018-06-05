function [w2] = problem_3_method2(A,v,k)
%[w2] = problem_3_method2(A,v,k)
%   Input a matrix A, a vector v, and a scalar c to calculate w = Av in the
%   second method from problem 3.
w2 = v;
v = A*v;
for i = 2: k  
    w2 = w2 + i*v;
    v = A*v;
end
  
end

