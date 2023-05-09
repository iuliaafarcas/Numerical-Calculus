% Approximate integral from 0 to 1 (e ^(-x^2)) dx using adaptive quadratures

integrand = @(x) exp(- x^2);
rectangleRule = @(f, a, b, n) rectangle(f, a, b, n);
trapezoidalRule = @(f, a, b, n) trapezoidal(f, a, b, n);
simpsonRule = @(f, a, b, n) simpson(f, a, b, n);

rectangleQuadrature = adaptiveQuadrature(integrand, 0, 1, 0.001, rectangleRule, 8);
trapezoidalQuadrature = adaptiveQuadrature(integrand, 0, 1, 0.001, trapezoidalRule, 8);
simpsonQuadrature = adaptiveQuadrature(integrand, 0, 1, 0.001, simpsonRule, 8);

disp("Approximations:")
disp("Rectangle adaptive quadrature");
disp(rectangleQuadrature);
disp("Trapezoidal adaptive quadrature");
disp(trapezoidalQuadrature);
disp("Simpson adaptive quadrature");
disp(simpsonQuadrature);