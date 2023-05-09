function I = trapezoidal(f, a, b, n)
  h = (b - a) / n;
  I = 0;
  for i = 0 : n - 1
    I = I + (f(a + h * i) + f(a + h * (i + 1))) * (h / 2);
  endfor
end