% With f(x) = ln(x), calculate f(1.5) by cubic interpolation using f(1) = 0,
% f(2) = 0.6931, f'(1) = 1, f'(2) = 0.5. Find the absolute approximation error

values = [1, 2];
functionValues = [0, 0.6931];
derivativeValues = [1, 0.5];

value = hermiteInterpolation(values, functionValues, derivativeValues, 1.5);
approxError = abs(log(1.5) - value);
disp("The approximation of f(1.5) is")
disp(value)
disp("And the absolute approximation error is")
disp(approxError)