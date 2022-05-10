#Count number of vector values in range with R
# declaring a integer point vector 

vec <- c(1,12,3,14,-1,-3)

# specifying the range to check the element in
min_range = -2
max_range = 8

# computing the size of the vector

size = length(vec)

# declaring sum =0 as the count of elements in range 
sum = 0 

# looping over the vector elements

for(i in 1:size)
  
{
  
  
  
  # check if elements lies in the range provided
  
  if(vec[i]>=min_range && vec[i]<=max_range)
    
    
    
    # incrementing count of sum if condition satisfied
    
    sum =sum+1
  
  
  
}


print ("Sum of elements in range : ")

print (sum)
#However, if any of the elements of the vector is NA, then sum() method returns NA as the output. It can be ignored by specifying na.rm=TRUE.

# declaring a integer point vector 

vec <- c(1,12,3,14,NA,-3,0.1)

# specifying the range to check the element in
min_range = -2
max_range = 8

print ("Sum of elements in specified range without ignoring NA: ")

# and operator check if the element is less than
# max range and greater than min range 

sum(vec>min_range & vec<max_range)


print ("Sum of elements in specified range ignoring NA: ")

sum(vec>min_range & vec<max_range,na.rm=TRUE)