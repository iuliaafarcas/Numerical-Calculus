function T = dividedDiffTable(values, functionValues)
  T = zeros(length(values), length(values));
  T(:, 1) = functionValues(1, :);
  diff = 1;
  for j = 2:(length(values))
    for i = 1:(length(values)+1-j)
      if values(i) != values(i + diff)
        T(i, j) = (T(i+1, j-1) - T(i, j-1)) / (values(i+diff) - values(i));
      else
        T(i, j) = functionValues(1 + diff, i);
      endif
    endfor
    diff = diff + 1;
  endfor  
end