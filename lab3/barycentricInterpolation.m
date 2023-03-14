function T=barycentricInterpolation(values, functionValues, x)
  xIndex = find(values==x);
  if (length(xIndex) != 0)
    T = functionValues(xIndex(1))
  else 
    weights = ones(1, length(values));
    for i = 1 : length(values)
      for j = 1 : length(values)
        if i != j
          weights(i) = weights(i) * (values(i) - values(j));
        endif
      endfor
      weights(i) = 1 / weights(i);
    endfor  
    
    numerator = 0;
    denominator = 0;
    for i = 1 : length(values)
      variable = weights(i) / (x - values(i));
      numerator = numerator + variable * functionValues(i);
      denominator = denominator + variable;
    endfor
    T = numerator / denominator;
  endif
end