% Consider 10 random points in the plane [0, 3] x [0, 5] using Matlab function ginput. Plot the points and 
% the least squares polynomial of 2nd degree that best fits these points.

[X, Y] = ginput(10);
X = X * 3;
Y = Y * 5;

polynomial = polyfit(X, Y, 2);
x_val = linspace(min(X), max(X), 100);
y_val = polyval(polynomial, x_val);

plot(X, Y, "*", x_val, y_val, "r");
legend({"Points", "Second degree least squares polynomial"});