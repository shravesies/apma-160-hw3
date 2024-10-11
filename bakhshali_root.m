function [S_root] = bakhshali_root(S, tol)
% Inputs:
% > S is a positive number: we want to compute its square root
% > tol is a postive number: we use this to stop the iteration whenever
%   |x^(k) - x^(k-1)| < tol
% Use initial condition y^(0) = S
y_0 = S;

for n = 1:5000 % large end number so I don't crash my laptop using a while loop
a = (S - (y_0)^2)/(2*y_0);
b = y_0 + a;
y_k1 = b - ((a^2)/(2*b));

    if abs(y_k1 - y_0) < tol
        break;
    end
y_0 = y_k1;
end

% Output:
% > S_root is the approximation to sqrt(S)
S_root = y_k1;

end