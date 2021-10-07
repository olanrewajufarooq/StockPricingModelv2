function [w] = Q2a(v, r_T, m)
%Q2A Summary of this function goes here
%   Detailed explanation goes here

n = length(m);

A = [ 1, 1; m(n-1), m(n)];
B = [ 1 - sum(v); r_T - dot(v, m(1:n-2)) ];

X = linsolve(A, B);

w = [reshape(v, [], 1); reshape(X, [], 1)];
end

