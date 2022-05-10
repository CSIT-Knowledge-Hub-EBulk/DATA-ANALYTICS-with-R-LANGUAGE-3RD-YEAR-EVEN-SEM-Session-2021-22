#Find product of vector elements in R
#Method 1: Using iteration

# declaring a floating point vector  

vec <- c(1.1,2,3.2,4) 

size = length(vec) 


# initializing product as 1 
prod = 1 


# looping over the vector elements 

for(i in 1:size) 
  
{ 
  
  # multiplying the vector element at ith index  
  
  # with the product till now 
  
  prod = vec[i]*prod 
  
} 

print("Product of vector elements:") 


# in-built application of prod function 

print(prod)
#Method 2: Using prod()
# declaring a integer vector  

vec <- c(1,2,3,4) 

print("Product of vector elements:") 


# in-built application of prod function 

print(prod(vec))
