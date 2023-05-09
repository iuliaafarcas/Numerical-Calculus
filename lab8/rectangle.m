function I = rectangle(f, a, b, n)
  I = 0;
  h = (b - a) / n;
  for i = 0 : n - 1
    I = I + h * f(a + (i+1/2) * h);
  endfor
end