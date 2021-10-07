function [var] = Q2b(v, r_T, m, cov)
%Q2A Summary of this function goes here
%   Detailed explanation goes here

[w] = Q2a(v, r_T, m);

var = transpose(w) * cov * w;

end

