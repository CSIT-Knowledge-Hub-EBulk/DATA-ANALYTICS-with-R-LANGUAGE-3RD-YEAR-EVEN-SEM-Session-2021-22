# R program for Matrix Transpose

# create a matrix of 2 rows
# using matrix() method.
M <- matrix(1:6, nrow = 2)

# print the matrix
print(M)

# create another matrix
M2 <- M

# Loops for Matrix Transpose
for (i in 1:nrow(M2))
{
  # iterate over each row
  for (j in 1:ncol(M2))
  {
    # iterate over each column
    # assign the correspondent elements
    # from row to column and column to row.
    M2[i, j] <- M[j, I]
  }
}

# print the transposed matrix
print(M2)
