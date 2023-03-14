% Plot the graphics of the function f:[0, 10] -> R, f(x) = (1 + cos(pi * x)) / (1 + x) and of the Lagrange interpolation polynomial that interpolates the function f at 21 equally spaced points in the interval

x1 = 0 : 0.1 : 10;
y1 = (1 + cos(pi * x1)) ./ (1 + x1);

values = 0 : 0.5 : 10;
functionValues = (1 + cos(pi * values)) ./ (1 + values);

y2 = zeros(1, length(y1));

count = 1;
for i = 0 : 0.1 : 10
  y2(count) = barycentricInterpolation(values, functionValues, i);
  count = count+1;
endfor

plot(x1, y1, "r", x1, y2, "b");
legend({"Function", "Interpolation"});