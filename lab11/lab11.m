% Use all three methods to solve the linear systems from Lab 10

n1 = 4;
n2 = 7;

firstSystemMatrix = zeros(n1, n1);
firstSystemResults = zeros(n1, 1);

firstSystemMatrix(1, 1) = 5;
firstSystemMatrix(1, 2) = -1;
firstSystemResults(1) = 4;
for i = 2 : n1-1
  firstSystemMatrix(i, i-1) = -1;
  firstSystemMatrix(i, i) = 5;
  firstSystemMatrix(i, i+1) = -1;
  firstSystemResults(i) = 3;
endfor
firstSystemMatrix(n1, n1-1) = -1;
firstSystemMatrix(n1, n1) = 5;
firstSystemResults(n1) = 4;

[x1J, nit1J] = Jacobi(firstSystemMatrix, firstSystemResults, zeros(size(firstSystemResults)), 0.0001, 30);
[x1G, nit1G] = GaussSeidel(firstSystemMatrix, firstSystemResults, zeros(size(firstSystemResults)), 0.0001, 30);
[x1S, nit1S] = SOR(firstSystemMatrix, firstSystemResults, zeros(size(firstSystemResults)), 0.0001, 30);
disp("The solution of the first system with n");
disp(n1);
disp("Using Jacobi");
disp(x1J);
disp(nit1J);
disp("Using Gauss Seidel");
disp(x1G);
disp(nit1G);
disp("Using SOR");
disp(x1S);
disp(nit1S);

secondSystemMatrix = zeros(n2, n2);
secondSystemResults = [3;2;2;ones(n2-6, 1);2;2;3];

for i = 1 : n2
  if (i >= 4)
    secondSystemMatrix(i, i-3) = -1;
  endif
  if (i >= 2)
    secondSystemMatrix(i, i-1) = -1;
  endif
  secondSystemMatrix(i, i) = 5;
  if (i <= n2 - 1)
    secondSystemMatrix(i, i+1) = -1;
  endif
  if (i <= n2 - 3)
    secondSystemMatrix(i, i+3) = -1;
  endif
endfor

[x2J, nit2J] = Jacobi(secondSystemMatrix, secondSystemResults, zeros(size(secondSystemResults)), 0.0001, 30);
[x2G, nit2G] = GaussSeidel(secondSystemMatrix, secondSystemResults, zeros(size(secondSystemResults)), 0.0001, 30);
[x2S, nit2S] = SOR(secondSystemMatrix, secondSystemResults, zeros(size(secondSystemResults)), 0.0001, 30);


disp("The solution of the second system with n");
disp(n2);
disp("Using Jacobi");
disp(x2J);
disp(nit2J);
disp("Using Gauss Seidel");
disp(x2G);
disp(nit2G);
disp("Using SOR");
disp(x2S);
disp(nit2S);
