function T = aitkens(values, functionValues, x)
  P = zeros(length(values), length(values));
  P(:, 1) = functionValues;
  for i = 2 : length(values)
    for j = 2 : i
      P(i, j) = ((x - values(j-1)) * P(i, j-1) - (x - values(i)) * P (j-1, j-1)) / (values(i) - values(j-1));
    endfor
  endfor
  T = P(length(values), length(values));
end