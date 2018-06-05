function [ y, yp ] = horner( c,x )
%[y , yp] horner (c,x)
%   Uses Horner's method and synthetic division

y = c(1)*ones(size(x));
yp = zeros(size(x));

for i = 2: length(c)
    yp = yp.*x + y;
    y = y.*x + c(i);
end

end

