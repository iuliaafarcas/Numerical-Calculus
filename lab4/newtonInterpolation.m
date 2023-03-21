function T = newtonInterpolation(values, functionValues, x)
  diffTable = dividedDiffTable(values, functionValues);
  n = length(values);
  T = diffTable(1, n);
  for i = (length(diffTable) - 1) : -1 : 1
    T = (x - values(i)) * T + diffTable(1, i);
  endfor
end