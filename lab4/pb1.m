% Using the data from the following table:
% x     1     1.5       2       3         4
% lg x  0   0.17609   0.30103  0.47712   0.60206
% approximate lg 2.5 and lg 3.25 using the Newton interpolation polynomial.
% Estimate the maximum interpolation error E = max|f(yi) - (N4f)(yi)| with
% yi = i/10, i = 10, 35


values = [1, 1.5, 2, 3, 4];
functionValues = [0, 0.17609, 0.30103, 0.47712, 0.60206];

approximation = newtonInterpolation(values, functionValues, 2.5);
disp("The approximation of lg 2.5 is");
disp(approximation);

approximation = newtonInterpolation(values, functionValues, 3.25);
disp("The approximation of lg 3.25 is");
disp(approximation);

error = -inf;
for i = 10 : 35
  currentError = abs(log10(i/10) - newtonInterpolation(values, functionValues, i/10));
  if (currentError > error)
    error = currentError;
  endif
endfor

disp("The maximum interpolation error is");
disp(error);