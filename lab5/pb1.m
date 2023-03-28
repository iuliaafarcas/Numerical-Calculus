% In the following table there are some data regarding a moving car. Use 
% Hermite interpolation to estimate position and speed of the car when the
% time is t = 10

% Time      0   3   5   8   13
% Distance  0   225 383 623 993
% Speed     75  77  80  74  72

values = [0, 3, 5, 8, 13];
functionValues = [0, 225, 383, 623, 993];
derivativeValues = [75, 77, 80, 74, 72];

distance = hermiteInterpolation(values, functionValues, derivativeValues, 10);
epsilon = 0.001;
% a= 10, h=epsilon
%x0=10 x= x0+epsilon, f(x)= distance, f(x0)= furtherValue
furtherValue = hermiteInterpolation(values, functionValues, derivativeValues, 10 + epsilon)
speed = (furtherValue - distance) / epsilon;

disp("Distance at t = 10")
disp(distance)
disp("Speed at t = 10")
disp(speed)