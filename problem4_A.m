function [A] = problem4_A(n)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

v = 1:n;
v = v';

I = eye(n);

m = ((v')*v);

A = I-(2*(v*v'))/m(1);

end

