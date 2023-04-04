% input data
t = [0 3 5 8 13];
d = [0 225 383 623 993];
v = [75 77 80 74 72];

% compute clamped cubic spline
s = spline(t, [75 d 72], 10);
epsilon=0.00001;
s2 = spline(t, [75 d 72], 10+epsilon);
viteza= (s2-s)/epsilon;


% display results
fprintf('Predicted position at t=10s: %.2f feet\n', s);
fprintf('Predicted speed at t=10s: %.2f feet/s\n', viteza);
