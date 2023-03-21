% To investigate the relationship between yield of potatoes, y, and level of
% fertilizer, x, an experimenter divided a field into 5 plots of equal size and
% applied differing amounts of fertilizer to each. The recorded data are given
% in the table (in pounds)
% x   1   2   3   4   5
% y   22  23  25  30  28

% a) According to Newton interpolation polynomial, approximate how many pounds 
% of potatoes are expected from a plot to which 2.5 pounds of fertilizer had been
% applied

values = [1, 2, 3, 4, 5];
functionValues = [22, 23, 25, 30, 28];

approximation = newtonInterpolation(values, functionValues, 2.5);
disp("The approximation of pounds of potatoes from a plot with 2.5 pounds of fertilizer is")
disp(approximation)

% b) Plot the data given in the table and the corresponding Newton interpolation polynomial

x = 1 : 0.1 : 5;
y = zeros(1, length(x));

for i = 1 : length(x)
  y(i) = newtonInterpolation(values, functionValues, x(i));
endfor

plot(values, functionValues, "b+", x, y, "r");
