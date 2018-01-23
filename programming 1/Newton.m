function [p] = Newton(C, p)
p0 = 1000;
i = 0;
while i < 1000
    if abs(p - p0) < 10^(-15)
        return
    end
    p0 = p;
    p = p0 - (p0^4 + C(1)*p0^3 + C(2)*p0^2 + C(3)*p0 - 1)/(4*p0^3 + 3*C(1)*p0^2 + 2*C(2)*p0 +C(3));
    i = i + 1;
    
end

end