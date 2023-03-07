% generate the finite differences table for h = 0.23, xi = 1 + ih, i = 0, 6 and f(x) = sqrt(5x^2+1)

f = @(x) sqrt(5*x^2+1)
h = 0.25
table = zeros(7, 7)
for i = 0:6
  table(i+1, 1) = f(1 + i * h);
endfor
table = finiteDiffTable(7, table)
disp(table)