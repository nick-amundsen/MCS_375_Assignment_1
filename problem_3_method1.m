function [w1] = problem_3_method1(A,v,k)
%[w1] = problem_3_method1(A,v,k)
%   Input a matrix A, a vector v, and a scalar c to calculate w = Av in the
%   first method from problem 3.

B = eye(size(v));

  % calculating powers of matricies by A(A^3) etc and outputting B
  for i = 2: k  
    B = B + i*A;
    A = A*A;
  end
  
  w1 = B*v;

end

