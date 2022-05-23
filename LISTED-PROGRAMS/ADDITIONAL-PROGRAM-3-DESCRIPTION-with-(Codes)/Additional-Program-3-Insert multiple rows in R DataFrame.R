#Insert multiple rows in R DataFrame
"To create a data frame we need to use vectors. We need to create vectors with some values and pass the vectors into data.frame() function as parameter. Thus, a data frame is created. Let us see an example that demonstrates the above statement."
# Example-1
# here num and branches are the vectors, ans those
# are passed into data.frame() as parameters .
dataframe = data.frame(num=c(1:3),branches=c("IT","CSE","ECE"))

# In this example we created vectors inside the
# data frame() function and assigned values to vectors.
print(dataframe)
# Example-2
# creating a data frame
df1 = data.frame(num = c( 1 : 3),
                 branch = c("IT", "CSE", "ECE"))

# creating another data frame
df2 = data.frame(num = c( 4 : 6),
                 branch = c("EEE", "Mechanical", "civil"))

# selecting 1-2 rows , all columns from df1
new_row = df2[c(1, 2, 3),]
# we can access data from a data frame through indexing .
# since it is a 2 dimensional one we can access data
# by row number and column number .
# here c(1,2,3) represents row numbers and we left column
# numbers as empty . then all columns are accessed .


# new_row is appended to the df1
df1 = rbind(df1, new_row)

#printing updated data frame
print(df1)
# Example 3: Adding rows from 3 dataframe. 
# creating one data frame
df1 = data.frame(num = c( 1 : 3 ),
                 branch = c("IT", "CSE", "ECE"))

# creating another data frame
df2=data.frame(num = c( 4 : 6 ),
               branch = c("Chemical", "Petroleum", "Food Technology"))

df3=data.frame(num = c( 7 : 9 ),
               branch = c("EEE", "Mechanical", "Civil"))

# here we accessing 1-3 rows and all columns
# from df2 and storing in new_row variable
new_row=df2[c(1, 2, 3),]

# here also we are accessing 1-3 rows and all
# columns and storing in new_row2 variable
new_row2=df3[c(1, 2, 3),]

# passing data frame1 i.e., df1 and the new_row .
df1=rbind(df1, new_row)

# passing data frame1 i.e., df1 and new_row2
df1=rbind(df1, new_row2)

# Here values in new_row will be appended with df1 .
# if we pass df2,new_row ,
# the data in the nw_row will be appended with df2
print(df1) # printing df1
