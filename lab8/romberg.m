function I = romberg(f, b, a, epsilon)
  h = b-a;
  k = 1;
  rombergTable = zeros(1000, 1000);
  rombergTable(1, 1) = h/2 * (f(a) + f(b));
  done = false;
  while(!done)
    k = k + 1;
    currentSum = 0;
    for i = 1 : 2^(k-2)
      term = a + (i-1/2) * (h / (2^(k-2)));
      currentSum += f(term);
    endfor
    rombergTable(k, 1) = 1/2 * (rombergTable(k-1, 1) + (h/(2^(k-2))) * currentSum);
    for j = 2 : k
      rombergTable(k, j) = (4^(j-1) * rombergTable(k, j-1) - rombergTable(k-1, j-1)) / (4^(j-1) - 1);
    endfor
    if (abs(rombergTable(k-1, k-1) - rombergTable(k, k)) < epsilon)
      done = true;
    endif
  endwhile
  I = rombergTable(k, k);
end