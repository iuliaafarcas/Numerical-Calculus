% Implement a Matlab routine (or separate routines for each case) that, for the 5 cases in
% the table (Laguerre, Chebyshev of the 1st kind, Chebyshev of the 2nd kind, Legendre and
% Hermite), computes the nodes, the coefficients and the approximate value of the integral,
% for a Gaussian quadrature, in the form

function [I, gn, gc] = gaussianQuadrature(f, n, caseNo)
  alpha = zeros(1, n);
  beta = zeros(1, n);
  switch(caseNo)
    case 1 % Legendre
      beta = [2, (4-([1:n-1]).^(-2)).^(-1)];
    case 2 % Chebyshev1
      beta = [pi, 1/2, ones(1, n-2) .* 1/4]; 
    case 3 % Chebyshev2
      beta = [pi/2, ones(1, n-1) .* 1/4]; 
    case 4 % Laguerre
      a = input("a=");
      k = 1:n-1;
      alpha = [a+1, 2*k+a+1];
      beta = [gamma(1+a), k.*(k+a)];
    case 5 % Hermite
      beta = [sqrt(pi), [1:n-1] ./ 2];
  endswitch
  J = diag(alpha) + diag(sqrt(beta(2:n)), -1) + diag(sqrt(beta(2:n)), 1);
  [v, d] = eig(J);
  gn = diag(d);
  gc = beta(1) * v(1, :).^2; %eig for cols
  I = gc * f(gn);
end