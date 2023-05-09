% The vapor pressure P of the water (in bars) as a function of temperature T (in oC) is:
% T 0       10      20      30      40      60      80      100
% P 0.0061  0.0123  0.0234  0.0424  0.0738  0.1992  0.4736  1.0133

% a) Obtain the best linear least squares polynomial and use it to approximate the pressure P at T = 45o

T = [0, 10, 20, 30, 40, 60, 80, 100];
P = [0.0061, 0.0123, 0.0234, 0.0424, 0.0738, 0.1992, 0.4736, 1.0133];

T_approx = 45;

polynomial_1 = polyfit(T, P, 1);
P_approx_1 = polyval(polynomial_1, T_approx);

disp("The linear least squares polynomial has the following coefficients");
disp(polynomial_1);
disp("The approximation of the pressure with this polynomial at 45o is");
disp(P_approx_1);

% b) Obtain other two least squares approximations for the given data, for 2 different degrees of the polynomials.
% Find their values for T = 45o

polynomial_2 = polyfit(T, P, 2);
polynomial_3 = polyfit(T, P, 3);

P_approx_2 = polyval(polynomial_2, T_approx);
P_approx_3 = polyval(polynomial_3, T_approx);

disp("The least squares polynomial of second degree has the following coefficients");
disp(polynomial_2);
disp("The approximation of the pressure with this polynomial at 45o is");
disp(P_approx_2);
disp("The least squares polynomial of third degree has the following coefficients");
disp(polynomial_3);
disp("The approximation of the pressure with this polynomial at 45o is");
disp(P_approx_3);

% c) Compute in all three cases the approximation errors, knowing that the exact value is P(45) = 0.095848
P_value = 0.095848;
P_error_1 = abs(P_value - P_approx_1);
P_error_2 = abs(P_value - P_approx_2);
P_error_3 = abs(P_value - P_approx_3);

disp("The errors of the polynomials, in the order first, second, third, are");
disp(P_error_1);
disp(P_error_2);
disp(P_error_3);

% d) Plot the interpolation points, the 3 least squares approximations and the interpolation polynomial in the same figure.

x = linspace(0, 100, 1000);
y_1 = polyval(polynomial_1, x);
y_2 = polyval(polynomial_2, x);
y_3 = polyval(polynomial_3, x);

y_interpolation = zeros(1, length(x));
for i = 1:length(x)
  y_interpolation(i) = barycentricInterpolation(T, P, x(i));
endfor

plot(T, P, "*", x, y_1, "r", x, y_2, "g", x, y_3, "b", x, y_interpolation, "y");
legend({"Interpolation points", "First order least squares", "Second order least squares", "Third order least squares", "Interpolation polynomial"});




