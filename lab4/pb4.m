% Approximate sqrt(115) with precision epsilon=10^-3 using Aitken's algorithm

values = [100, 121, 144];
functionValues = [10, 11, 12];

approximation = aitkens(values, functionValues, 115);
disp("The approximation of sqrt(115) is");
disp(approximation);

error = abs(sqrt(115) - approximation);
disp("And the error is");
disp(error);