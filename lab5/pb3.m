% Plot, in the same figure, the graphs of the function f:[-5, 5] -> R, 
% f(x) = sin(2x) and of the corresponding Hermite interpolation polynomial,
% considering 15 equidistant nodes in [-5, 5]

values = linspace(-5, 5, 15);
functionValues = sin(2 * values);
derivativeValues = 2*cos(2 * values);

x = -5 : 0.05 : 5;
n = length(x);
y1 = sin(2 * x);
y2 = zeros(1, n);

for i = 1:n
  y2(i) = hermiteInterpolation(values, functionValues, derivativeValues, x(i));
endfor

plot(x, y1, "g", x, y2, "b");
legend({"Function", "Hermite interpolation"});