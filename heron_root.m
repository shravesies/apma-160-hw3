function [S_root] = heron_root(S, tol)
% Inputs:
% > S is a positive number: we want to compute its square root
% > tol is a postive number: we use this to stop the iteration whenever
%   |x^(k) - x^(k-1)| < tol

% Use initial condition x^(0) = S
x_0 = S;

for n = 1:5000 % using a large end value instead of while
x_k1 = (1/2)*(x_0 + (S/x_0));

    if abs(x_k1 - x_0) < tol
        break;
    end
x_0 = x_k1; % put the x we just found into the old x

end
% Output:
S_root = x_k1; % we make the previous iteration of x before the break as the final answer

end