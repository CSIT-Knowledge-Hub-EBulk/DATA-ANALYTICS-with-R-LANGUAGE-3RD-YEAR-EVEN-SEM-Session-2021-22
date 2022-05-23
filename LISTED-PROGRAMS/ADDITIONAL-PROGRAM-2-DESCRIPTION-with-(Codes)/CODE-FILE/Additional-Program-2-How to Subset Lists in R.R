# How to Subset Lists in R?
# Method 1: Extract One List Item
# create list of elements
list1=list(1,2,3,4,5)

# display
print(list1)

# get 1 st element
print(list1[[1]])

# get 2 nd element
print(list1[[2]])

# get 3 rd element
print(list1[[3]])

# get 4 th element
print(list1[[4]])
# Method 2: Extract Multiple List Items
# create list of elements
list1=list(1,2,3,4,5)

# get 1,2,3 element
print(list1[c(1, 2,3)])
# Method 3: Extract Multiple List Items with slice operator
# create list
data=list(a=c(1:3),b=c(5:8),"SHWETA")

# get elements from 1 to 3
print(data[c(1:3)])
# Method 4: Using sapply() function
# create list
data=list(a=c(1:3),b=c(5:8),"SHWETA")

# get elements of index 1 and 2
sapply(data,"[",c(1,2))
