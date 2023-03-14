% Approximate sqrt(115) with Lagrange interpolation, using the known values for three given nodes

values = [100, 121, 144];
functionValues = [10, 11, 12];

approximation = barycentricInterpolation(values, functionValues, 115);
disp("The approximation of sqrt(115) is:");
disp(approximation);