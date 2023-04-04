% Consider the function f(x) = sin(x) defined on [0, 2pi] and the nodes 0, pi/2, pi, 3pi/2, 2pi

% a) display the value of the function, the value of the cubic natural spline and the value of 
% cubic clamped spline function at x = pi/4

values = [0, pi/2, pi, 3*pi/2, 2*pi];
functionValues = sin(values);

x = pi/4;
y = sin(x);

naturalSplineFunction = spline(values, functionValues);
clampedSplineFunction = spline(values, [cos(0) functionValues cos(2*pi)]);

%csape for nat
% myNaturalSpline = mySpline(values, functionValues, x);
naturalSpline = ppval(naturalSplineFunction, x);
clampedSpline = ppval(clampedSplineFunction, x);

disp("Function value")
disp(y)

disp("Cubic natural spline")
disp(naturalSpline)

% disp("Cubic clamped spline homemade function")
% disp(myNaturalSpline)

disp("Cubic clamped spline")
disp(clampedSpline)

% b) plot the graphs of the function, the cubic natural spline and the cubic clamped spline
% function in the same figure

x1 = linspace(0, 2*pi, 20);
y1 = sin(x1);
naturalSplineValues = ppval(naturalSplineFunction, x1);
clampedSplineValues = ppval(clampedSplineFunction, x1);

% plot(x1, y1, "b", x1, naturalSplineValues, "r", x1, naturalSplineHomemadeValues, "c", x1, clampedSplineValues, "g");
% legend({"Function", "Natural Spline", "Clamped Spline Homemade", "Clamped Spline"});

plot(x1, y1, "b", x1, naturalSplineValues, "r", x1, clampedSplineValues, "g");
legend({"Function", "Natural Spline", "Clamped Spline"});