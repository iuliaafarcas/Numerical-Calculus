function T=hermiteInterpolation(values, functionValues, derivativeValues, x)
  values = repelem(values, 2);
  functionValues = repelem(functionValues, 2);
  derivativeValues = repelem(derivativeValues, 2);
  
  functionWithDerivatives = [functionValues; derivativeValues];
  diffTable = dividedDiffTable(values, functionWithDerivatives);
  
  n = length(values);
  T = diffTable(1, n);
  for i = (length(diffTable) - 1) : -1 : 1
    T = (x - values(i)) * T + diffTable(1, i);
  endfor
end