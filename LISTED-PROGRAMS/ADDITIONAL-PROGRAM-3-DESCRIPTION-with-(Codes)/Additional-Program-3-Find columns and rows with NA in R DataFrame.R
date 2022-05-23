#Find columns and rows with NA in R DataFrame
"A data frame comprises cells, called data elements arranged in the form of a table of rows and columns. A data frame can have data elements belonging to different data types as well as missing values, denoted by NA. 

Approach

Declare data frame
Use function to get values to get NA values
Store position
Display result
The following in-built functions in R collectively can be used to find the rows and column pairs with NA values in the data frame. The is.na() function returns a logical vector of True and False values to indicate which of the corresponding elements are NA or not. This is followed by the application of which() function which indicates the position of the data elements. The following code snippet can be used to find such element index positions.

Syntax:

which(is.na(dataframe), arr.ind=TRUE)
"
# Example-1
# declaring data frame
data_frame = data.frame(
  col1 = c(1,NA),
  col2 = c(7:8),
  col3 = c(NA,NA))

# printing original data frame
print ("Original Data Frame")
print(data_frame)

# extracting positions of NA values
print ("Row and Col positions of NA values")
which(is.na(data_frame), arr.ind=TRUE)
"In case, we don't specify arr,ind=TRUE as an argument, then the element number counting row wise is returned. 

Example:"
# declaring data frame
data_frame = data.frame(
  col1 = c("A",NA,"B"),
  col2 = c(100:102),
  col3 = c(NA,NA,9))

# printing original data frame
print ("Original Data Frame")
print(data_frame)

# finding NA values beginning with row1 and col1 as the
# first element. Rows2 and col2 is second element.
print ("Row and Col positions of NA values")
which(is.na(data_frame))
"The missing values can also be individually be computed within a column, by accessing the specific column of the dataframe using the dataframe$colname as an argument in the above code snippet. In case no NA values are present in a specific column, integer(0) is returned as an output. 

Example:"
# declaring data frame
data_frame = data.frame(
  col1 = c("A",NA,"B"),
  col2 = c(100:102),
  col3 = c(NA,NA,9))

# printing original data frame
print ("Original Data Frame")
print(data_frame)

# extracting positions of NA values
print ("NA values in column 1")
which(is.na(data_frame$col1), arr.ind=TRUE)

# extracting positions of NA values
print ("NA values in column 2")
which(is.na(data_frame$col2), arr.ind=TRUE)
