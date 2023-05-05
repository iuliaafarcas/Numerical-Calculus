% Use appropriate Gaussian quadratures with n = 2 and 8 nodes, to approximate the following integrals;

% 1. integral from -inf to inf of exp(-x^2);
f1 = @(x) x.*0+1;
[I11, gn11, gc11] = gaussianQuadrature(f1, 2, 5);
[I12, gn12, gc12] = gaussianQuadrature(f1, 8, 5);
disp("Approximation of 1 with 2 nodes");
disp(I11);
disp("Approximation of 1 with 8 nodes");
disp(I12);

% 2. integral from -1 to 1 of sqrt(1-x^2);
f2 = @(x) x.*0+1;
[I21, gn21, gc21] = gaussianQuadrature(f2, 2, 3);
[I22, gn22, gc22] = gaussianQuadrature(f2, 8, 3);
disp("Approximation of 2 with 2 nodes");
disp(I21);
disp("Approximation of 2 with 8 nodes");
disp(I22);

% 3. integral from -1 to 1 of sin(x^2);
f3 = @(x) sin(x.^2);
[I31, gn31, gc31] = gaussianQuadrature(f3, 2, 1);
[I32, gn32, gc32] = gaussianQuadrature(f3, 8, 1);
disp("Approximation of 3 with 2 nodes");
disp(I31);
disp("Approximation of 3 with 8 nodes");
disp(I32);

% 4. integral from 0 to inf of x*exp(-x)sin(x);
f4 = @(x) sin(x);
[I41, gn41, gc41] = gaussianQuadrature(f4, 2, 4);
[I42, gn42, gc42] = gaussianQuadrature(f4, 8, 4);
disp("Approximation of 4 with 2 nodes");
disp(I41);
disp("Approximation of 4 with 8 nodes");
disp(I42);

% 5. integral from -1 to 1 of x^2 / sqrt(1-x^2);
f5 = @(x) x.^2;
[I51, gn51, gc51] = gaussianQuadrature(f5, 2, 2);
[I52, gn52, gc52] = gaussianQuadrature(f5, 8, 2);
disp("Approximation of 5 with 2 nodes");
disp(I51);
disp("Approximation of 5 with 8 nodes");
disp(I52);
