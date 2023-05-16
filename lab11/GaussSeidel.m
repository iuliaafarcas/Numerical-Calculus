function [x, nit] = GaussSeidel(A, b, x0, err, maxnit)
  nit = 0;
  x = x0;
  M = tril(A); % extract the lower triung part of the matrix
  N = -triu(A, 1); % same but upper
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