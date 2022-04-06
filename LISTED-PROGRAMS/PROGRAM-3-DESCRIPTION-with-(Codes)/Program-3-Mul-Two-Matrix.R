# R program to multiply two matrices

# Creating 1st Matrix
B = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)

# Creating 2nd Matrix
C = matrix(c(7, 8, 9, 10, 11, 12), nrow = 2, ncol = 3)

# Getting number of rows and columns
num_of_rows = nrow(B)
num_of_cols = ncol(B)

# Creating matrix to store results
prod = matrix(, nrow = num_of_rows, ncol = num_of_cols)

# Printing Original matrices
print(B)
print(C)

# Calculating product of matrices
for(row in 1:num_of_rows)
{
  for(col in 1:num_of_cols)
  {
    prod[row, col] <- B[row, col] * C[row, col]
  }
}

# Printing resultant matrix
print(prod)
