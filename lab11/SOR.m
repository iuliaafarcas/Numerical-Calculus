function [x, nit] = SOR(A, b, x0, err, maxnit)
  nit = 0;
  x = x0;
  MJ = diag(diag(A)); % create a diagonal matrix from the diag el of A
  NJ = MJ - A;
  TJ = inv(MJ) * NJ;
  omega = 2 / (1 + sqrt(1 - max(abs(eig(TJ)))^2));
  M = diag(diag(A)) / omega + tril(A, -1);
  N = ((1-omega)/omega * diag(diag(A)) - triu(A, 1));
  T = inv(M) * N;
  c = inv(M) * b;
  alpha = norm(T, inf);
  for i = 1:maxnit
    nit = nit+1;
    x_copy = x;
    x = T * x_copy + c;
    error = max(abs(x_copy .- x));
    if (error <= (1-alpha) / alpha * err)
      break;
    endif
  endfor
end