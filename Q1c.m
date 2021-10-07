function [delta0n] = Q1c(mu, sigma, rho, S0, K, T, n)
%Q1A Summary of this function goes here
%   Detailed explanation goes here

r_n = rho*T/n;
u_n = exp( sigma * sqrt(T/n) );
d_n = exp( - sigma * sqrt(T/n) );

fu = callnperiod(u_n, d_n, r_n, S0, K, n-1);
fd = callnperiod(d_n, u_n, r_n, S0, K, n-1);

delta0n = abs(fu - fd)/( S0*(u_n - d_n) );

end

