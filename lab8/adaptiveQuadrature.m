function I = adaptiveQuadrature(f, a, b, epsilon, met, m)
  I1 = met(f, a, b, m);
  I2 = met(f, a, b, 2*m);
  if abs(I1 - I2) < epsilon
    I = I2;
    return;
  else
    I = adaptiveQuadrature(f, a, (a+b)/2, epsilon, met, m) + adaptiveQuadrature(f, (a+b)/2, b, epsilon, met, m);
  endif
end