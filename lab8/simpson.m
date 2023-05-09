function I = simpson(f, a, b, n)
  m = n / 2;
  h = (b - a)/n;
  I = f(a);
  for i = 1 : m
    I = I + 4 * f(a + (2*i-1) * h);
  endfor
  for i = 1 : m - 1
    I = I + 2 * f(a + (2*i) * h);
  endfor
  I = I + f(b);
  I = (h / 3) * I;
end