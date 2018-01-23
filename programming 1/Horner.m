function [fx] = Horner(A,p0)
%HORNER Summary of this function goes here
%   Detailed explanation goes here
y = 1;
z = 1;
i = 3;
while i > 0
    y = p0 * y + A(i);
    z = p0 * z + y;
    i = i-1;
end
y = y * p0 - 1;
fx = [y;z];
end

