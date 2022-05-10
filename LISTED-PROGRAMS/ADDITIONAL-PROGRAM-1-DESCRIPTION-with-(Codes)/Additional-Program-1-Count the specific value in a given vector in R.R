#Count the specific value in a given vector in R
#Method 1: Naive method 
# declaring a vector 

vec = c(1,2,3,4,2,1,4,6) 


# printing original vector 

print("Original Vectors:") 

print(vec) 


# declaring count = 0  
count = 0 


# given value 
x = 4 


# looping over vector values 

for( i in vec){ 
  
  
  
  # check if the value is equal to x 
  
  if(vec[i]==x){ 
    
    
    
    # increment counter by 1  
    
    count= count + 1 
    
  } 
} 



print("Count given value in above vector:") 


# check which values are equal to the given  
# value and calculate sum of it 

print (count)
#Method 2: Using sum() method in R
# declaring a vector 

vec = c("a","g","a","y","s","a","abcs") 


# printing original vector 

print("Original Vectors:") 

print(vec) 



print("Count given value in above vector:") 


# check which values are equal to the given  
# value and calculate sum of it 

print(sum(vec=="a")) 
