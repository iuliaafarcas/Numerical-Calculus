% Approximate integral from 0 to 2*pi (dx / (2+cosx)) (whose exact value is 2pi/sqrt(3)) using Romberg's method 
% for the composite trapezoidal rule

value = 2*pi / sqrt(3);
integrand = @(x) 1 / (2 + cos(x));

rombergApprox = romberg(integrand, 0, 2*pi, 0.001);

disp("Exact value");
disp(value);
disp("Romberg Approximation");
disp(rombergApprox);