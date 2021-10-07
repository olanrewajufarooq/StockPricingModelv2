function [v_min] = Q2c(r_T, m, cov)
%Q2C Summary of this function goes here
%   Detailed explanation goes here

v0 = zeros(length(m)-2, 1);
func = @(v) Q2b(v, r_T, m, cov);

[~, v_min] = fminsearch(func, v0);
end

