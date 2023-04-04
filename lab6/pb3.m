% input data
t = [0 3 5 8 13];
d = [0 225 383 623 993];
v = [75 77 80 74 72];

% compute clamped cubic spline
s = spline(t, [0 v 0]);

% evaluate spline at t = 10s
d_pred = ppval(s, 10);
v_pred = ppval(fnder(s), 10);

% display results
fprintf('Predicted position at t=10s: %.2f feet\n', d_pred);
fprintf('Predicted speed at t=10s: %.2f feet/s\n', v_pred);