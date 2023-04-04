% There are given 5 arbitrary points, using Matlab function ginput. Plot the points
% and the graph of cubic natural spline function that passes through all the given points

[x, y, _] = ginput(5);
values = linspace(min(x), max(x), 50);
functionValues = ppval(spline(x, y), values);

plot(values, functionValues, "b", x, y, "+r");
