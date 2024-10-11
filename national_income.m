function [M_vals] = national_income(M0, M1, alpha, beta, g, max_iters, tol)

% Inputs:
% > M0 and M1 are the initial conditions at time t^(0) and t^(1)
% > alpha, beta, and g are the constants defining the model
% > max_iters is the maximum number of times the iteration is applied
% > tol is a positive number used for a stopping criteria

M_vals = zeros(1, max_iters + 1);

M_vals(1) = M0;
M_vals(2) = M1;

for k = 2:max_iters + 1
    
    Ck = alpha*M_vals(k);
    Ck_minus1 = alpha*M_vals(k-1);

    Ik = beta*(Ck - Ck_minus1);

    M_vals(k + 1) = Ck + Ik + g;

    if abs(M_vals(k+1) - M_vals(k)) < tol
        break;
    end

end

M_vals = M_vals(1:k+1); 


% Output:
% > M_vals is a row vector containing the generated values
%   [M0, M1, M2, ..., MN]. Note that M0 and M1 are included.


end