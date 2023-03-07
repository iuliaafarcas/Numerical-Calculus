function T = dividedDiffTable(values, functionValues)
  T = zeros(length(values), length(values))
  T(:, 1) = functionValues
  diff = 1;
  for j = 2:(length(values))
    for i = 1:(length(values)+1-j)
      T(i, j) = (T(i+1, j-1) - T(i, j-1)) / (values(i+diff) - values(i))
    endfor
    diff = diff + 1;
  endfor  
end