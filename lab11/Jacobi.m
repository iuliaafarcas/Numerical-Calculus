function [x, nit] = Jacobi(A, b, x0, err, maxnit)
  nit = 0;
  x = x0;
  M = diag(diag(A));
  N = M - A;
  T = inv(M) * N;
  c = inv(M) * b;
  alpha = norm(T, inf); % compute the infinity form of T
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