#Read Only Header of File in R
"Method 1: Using read.table method
The read.table() method in R is used to access the contents stored in the organized structure of the CSV file.

Syntax: read.table(path, head = TRUE, nrows, sep = ";")

Arguments:

path: The complete directory path where the file is stored
head: a logical value, indicator of whether the file contains the names of the variables as its first line or not.
nrows: the maximum number of rows to read into the working directory
"
# creating a data frame
data_frame1 <- data.frame(col1 = c(6:8),
                          col2 = letters[1:3],
                          col3 = c(1,4,NA))

# specifying data path
path <- "C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/ADDITIONAL-PROGRAM-4-DESCRIPTION-with-(Codes).csv"

# writing data to csv
write.csv2(data_frame1,				
           path,
           row.names = FALSE)
# reading
read.table(path,			
           head = TRUE,
           nrows = 1,
           sep = ";")[- 1, ]
"Method 2: Using colnames method
The read.csv2() method in R is used to read the CSV file from the specified path argument into a tabular structure.

Syntax: read.csv2(path)

Arguments :

path: The complete directory path where the file is stored

colnames() method in base R is used to gather the column names assigned to the tabular structure of the CSV file. It takes as argument the tabular structure read from the file.

Syntax: colnames(df)

Arguments :

df: The data frame to read the header of"
# creating a data frame
data_frame1 <- data.frame(col1 = c(6:8),
                          col2 = letters[1:3],
                          col3 = c(1,4,NA))

# specifying data path
path <- "C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/ADDITIONAL-PROGRAM-4-DESCRIPTION-with-(Codes).csv"

# writing data to csv
write.csv2(data_frame1,				
           path,
           row.names = FALSE)

# reading header
colnames(read.csv2(path))
