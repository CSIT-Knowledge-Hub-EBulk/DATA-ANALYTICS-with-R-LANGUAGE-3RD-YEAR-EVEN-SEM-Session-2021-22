# R program for matrix addition
# using '+' operator

# Creating 1st Matrix
B = matrix(c(1, 2 + 3i, 5.4, 3, 4, 5), nrow = 2, ncol = 3)

# Creating 2nd Matrix
C = matrix(c(2, 0i, 0.1, 3, 4, 5), nrow = 2, ncol = 3)

# Printing the resultant matrix
print(B + C)
