#Mean, Median,mode, Maximum, Minimum and Sorting
x <- c(1.4, 5.66, 7.13, 9.21)
#The max() and min() functions return the maximum and minimum of a vector:
print(max(x))
print(min(x))
#The mean() and median() mode() functions return the mean and median:
print(mean(x))
print(median(x))
print(mode(x))
#The sort() function sorts the vector in increasing order:
print(sort(x))
#There are other optional parameters we can set in these functions. Use, e.g., ?sort in the R console to pull up a help page. For example, we can sort the vector in decreasing order using
print(sort(x, decreasing=TRUE))
#Example1
# Square root
# R code to calculate square root of a number

x1 <- 16
x2 <- 18

# Using sqrt() Function
print(sqrt(x1))
print(sqrt(x2))
#Example2
# R code to calculate square root of a number

x1 <- 8.34526
x2 <- -18

# Using sqrt() Function
print(sqrt(x1))
#print(sqrt(x2))
# Using sum()
x <- c(1.4, 5.66, 7.13, 9.21)
y <- c(1.4, 5.66, 7.13, 9.21)
print(sum(x,y))
