# How to Append Values to List in R?
#Method 1: Append a Single Value to a List
# create a list of integers
list1 = list(c(1, 2, 3, 4, 5))

# display
print(list1)

print("---------")

# add element 12 to the list using length()
list1[[length(list1)+1]] = 12

# display
list1
#Method 2: Append Multiple Values to a List
# create list1
list1 = list(c(1, 2, 3, 4, 5), 223)

# create a vector to append these values to list
values = c(100, 200, 300)

# append values to list
for (i in values){
  list1[[length(list1)+1]] = i
}

# display final list
list1
# Method 3: Using append() function
# create list1
list1 = list(c(1, 2, 3, 4, 5), 223)

# create a vector to append these values to list
values = c(100, 200, 300)

# display final list
append(list1, values)
