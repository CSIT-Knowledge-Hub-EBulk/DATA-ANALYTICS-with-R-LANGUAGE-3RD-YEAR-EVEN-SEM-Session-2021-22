# Create 3 different vectors.
a1 <- c(3, 2, 8)
a2 <- c(6, 3, 2)
a3 <- c(5, 2, 4)

# Bind the 3 matrices row-wise
# using the rbind() function.
A <- rbind(a1, a2, a3)

# determinant of matrix
print(det(A))
