#Select Random Element from List in R
"We can select a Random element from a list by using the sample() function. sample() function is used to get the random element from the data structure

Syntax:
  
  sample(1:length(list), n)"
#Example: R program to create a list of numbers and return one  random element
# create a list of integers
list1=list(1:10,23,45,67,8)

# get the random element from the list
list1[[sample(1:length(list1), 1)]]
#Example: R program to create a list of numbers and return one  random element
# create a vector of integers
vec=c(1,2,3,4,5)

# create a variable
data="Hello SHWETA"

# pass the vector and variable to list
list1=list(vec,data)

# get the random element from the list
list1[[sample(1:length(list1), 1)]]

