% Consider the function f:[0,6]->R, f(x) = exp(sin(x)) and 13 equidistant 
% interpolation points. Plot the interpolation points, the function f and 
% the Newton interpolation polynomial N12f.

values = linspace(0, 6, 13);
functionValues = exp(sin(values));

x1 = 0 : 0.1 : 6;
y1 = exp(sin(x1));

y2 = zeros(1, length(x1));
for i = 1 : length(x1)
  y2(i) = newtonInterpolation(values, functionValues, x1(i));
endfor

plot(values, functionValues, "+b", x1, y1, "r", x1, y2, "g");
legend({"Interpolation points", "Function", "Newton interpolation"});