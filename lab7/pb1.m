% The following table lists the temperatures of a room recorded during the time 
% interval [1:00; 7:00]
% Find the best liniar least squares function f(x) = ax + b that approximates the table. Use your result to
% predict the temperature of the room at 8:00. In the same figure, plot the points (Time, Temperature)
% and the least squares function

% Time        1:00  2:00  3:00  4:00  5:00  6:00  7:00
% Temperature 13    15    20    14    15    13    10

time = [1, 2, 3, 4, 5, 6, 7];
temperature = [13, 15, 20, 14, 15, 13, 10];

%computes a least squares polynomial
polynomial = polyfit(time, temperature, 1);

eight_approx = polyval(polynomial, 8);

disp("The coefficients of the polynomial found are");
disp(polynomial);

disp("The approximation of the temperature at 8:00 is");
disp(eight_approx);

x = linspace(1, 7, 100);
y = polyval(polynomial, x);

plot(time, temperature, "*", x, y, "r");