% The table below contains the population of the USA from 1930 to 1980
% Approximate the population in 1955 and 1995
% 1930    1940    1950    1960    1970    1980
% 123203  131669  150697  179323  203212  226505


values = [1930, 1940, 1950, 1960, 1970, 1980];
functionValues = [123203, 131669, 150697, 179323, 203212, 226505];

approximation = barycentricInterpolation(values, functionValues, 1955);
disp("The approximate population in 1955 is")
disp(approximation)

approximation = barycentricInterpolation(values, functionValues, 1995);
disp("The approximate population in 1995 is")
disp(approximation)