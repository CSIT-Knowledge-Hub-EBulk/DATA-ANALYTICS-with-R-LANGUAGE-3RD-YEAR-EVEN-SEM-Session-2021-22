#Sort DataFrame by column name in R
"Method 1: Using dplyr
dplyr is used to manipulate the DataFrame and names is used to set or get t the object name in R. To use dplyr, it needs to be installed explicitly.

Approach

Import library
Create data frame
Sort the DataFrame using sort function and pass the DataFrame name as an argument.
Syntax:

DataFrame %>% select(sort(names(DataFrame)))

Display sorted dataframe
Example:"
#Sort DataFrame by column name in R

# Creating a dataset.
z <- c(1,6,5,5,6)
x <- c(6,2,3,7,4)
y <- c(2,4,4,0,3)
a <- c(4,2,3,9,7)

dataframe <- data.frame(Banana = z,Orange=x,Mango=y,Apple=a)

# install dplyr package
install.packages("dplyr")

# loading library
library("dplyr")

# sorting
dataframe %>% select(sort(names(dataframe)))
dataframe
"Method 2: Using order
We can use the order function to sort the columns by column name.

Syntax:

order(names(dataframe))

Approach

Create dataframe
Pass the names of columns in order function
Save the sorted data
Display result
Example:"
#Sort DataFrame by column name in R

# Creating a dataset.
z <- c(1,6,5,5,6)
x <- c(6,2,3,7,4)
y <- c(2,4,4,0,3)
a <- c(4,2,3,9,7)

dataframe <- data.frame(Banana = z,Orange=x,Mango=y,Apple=a)

# sorting
dataframe[order(names(dataframe))]
