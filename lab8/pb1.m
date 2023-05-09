% Approximate ln 2 with 3 correct decimals, using the composite rectangle, trapezoidal and
% Simpson's rule, with appropriate number of subintervals

actualValue = log(2);
integrand = @(x) 1/x;
n = 0;
diff = 1;
while (diff >= 0.001)
  rectangleApprox = rectangle(integrand, 1, 2, 8);
  diff = abs(rectangleApprox - actualValue);
  n = n + 1;
endwhile

n = 0;
diff = 1;
while (diff >= 0.001)
  trapezoidalApprox = trapezoidal(integrand, 1, 2, 20);
  diff = abs(trapezoidalApprox - actualValue);
  n = n + 1;
endwhile

n = 0;
diff = 1;
while (diff >= 0.001)
simpsonApprox = simpson(integrand, 1, 2, 8);
  diff = abs(simpsonApprox - actualValue);
  n = n + 1;
endwhile
disp("Actual value");
disp(actualValue);
disp("Rectangle Approx:");
disp(rectangleApprox);
disp("Trapezoidal Approx:");
disp(trapezoidalApprox);
disp("Simpson Approx:");
disp(simpsonApprox); 