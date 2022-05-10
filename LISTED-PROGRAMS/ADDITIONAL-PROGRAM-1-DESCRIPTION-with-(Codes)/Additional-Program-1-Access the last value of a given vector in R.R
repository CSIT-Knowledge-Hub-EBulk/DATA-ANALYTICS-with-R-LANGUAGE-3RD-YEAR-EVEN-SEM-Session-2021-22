#Access the last value of a given vector in R
#Method 1: Using length function


vec1 <- c("John" , "Smith", "Tina" , "Brad" , "Emma") 

length(vec1)
#Now, let's use length() function to get the last element of the vector:


vec1 <- c("John" , "Smith", "Tina" , "Brad" , "Emma") 

length(vec1) 


# To Extract last element with length 

vec1[length(vec1)]
#Method 2: Using Tail() function
vec2 <- c(123 , 124 , 125 , 126, 128) 

print(vec2)
#Here we are passing n=1 so that it will display only the last element in the vector.


vec2 <- c(123 , 124 , 125 , 126) 

tail(vec2 , 1)
