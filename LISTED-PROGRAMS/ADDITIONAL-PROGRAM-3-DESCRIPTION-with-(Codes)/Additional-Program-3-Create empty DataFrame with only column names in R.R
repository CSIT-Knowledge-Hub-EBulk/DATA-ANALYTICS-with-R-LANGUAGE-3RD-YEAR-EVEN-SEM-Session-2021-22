#Create empty DataFrame with only column names in R
"The basic syntax for creating a data frame is using data.frame().

Syntax: data.frame(input_data,nrow,ncol)

Parameter:

input_data may be values ot list or vector.
nrow specifies the number of rows
ncol specifies the number of columns."
"Steps -

Create an empty dataframe
Define the column names to a variable
Assign that variable to the dataframe.
Display data frame so created
We can assign column names to dataframe by using colnames()"
# created vector with 5 characters
columns= c("id","names","address","phone","aadhar no")

# pass this vector length to ncol parameter
# and nrow with 0
myData = data.frame(matrix(nrow = 0, ncol = length(columns)))

# assign column names
colnames(myData) = columns

# display
print(myData)
#If we specify nrow parameter with morethan 0, it will take NA as that many rows.
# created vector with 5 characters
columns= c("id","names","address","phone","aadhar no")

# pass this vector length to ncol parameter
# and nrow with 1
myData = data.frame(matrix(nrow=1, ncol = length(columns)))

# assign column names
colnames(myData) = columns

# display
print(myData)

# pass this vector length to ncol parameter and
# nrow with 6
myData = data.frame(matrix(nrow=6, ncol = length(columns)))

# assign column names
colnames(myData) = columns

# display
print(myData)
