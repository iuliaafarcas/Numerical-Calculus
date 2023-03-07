% for x0 = 2, x1 = 4, x2 = 6, x3 = 8 and f0 = 4, f1 = 8, f2 = 14, f3 = 16 construct the divided differences table

values = [2, 4, 6, 8]
initialValues = [4, 8, 14, 16]

table = dividedDiffTable(values, initialValues)

disp(table)