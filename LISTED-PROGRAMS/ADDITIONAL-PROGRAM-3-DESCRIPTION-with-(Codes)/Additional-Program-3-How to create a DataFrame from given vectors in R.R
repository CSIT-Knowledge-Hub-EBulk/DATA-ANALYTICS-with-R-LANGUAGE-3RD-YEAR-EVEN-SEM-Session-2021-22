#How to create a DataFrame from given vectors in R ?
"Syntax:

data.frame(vectors)"
#Creating dataframe from given 4 vectors.
# creating a vector with some value
id = c(1, 2, 3)

# creating another vector with some value
name = c("karthik" , "nikhil" , "sravan")

# creating another vector with some value
branch = c("IT" , "CSE" , "IT")

# creating another vector with some value.
favourite_subject = c("SE" ,"DAA" , "OS")

# passing the vectors into data.frame() function
# as parameters
df1=data.frame(id, name, branch, favourite_subject)

# printing the data frame.
print(df1)
