%diff table
function T=finiteDiffTable(size, f)
  T = zeros(size, size)
  %first column= values of f
  T(:, 1) = f
  for j=2:size
    for i=1:(size+1-j)
      T(i, j) = T(i+1, j-1) - T(i, j-1)
    endfor
  endfor  
end