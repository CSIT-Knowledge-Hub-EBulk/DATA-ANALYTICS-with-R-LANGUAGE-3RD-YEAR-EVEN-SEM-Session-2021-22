#Read text File with Space as Delimiter in R
"The read.table() method in R can be used to read data from a text file into the data.table or a similar R object. In case the file is located within the same directory, the file-name is specified, else the complete path to the file is given in the workspace. Also, the header is an optional parameter, if TRUE, the header is read into the workspace else, omitted. 

Syntax:

read.table( path-of-the-file, header = T)
Example: Read TXT file with spaces as a delimiter"
# reading data from the text file
file_path <- "r_content.txt"

data_table <- read.table(file_path,
                         header = TRUE)

print("Contents of the text file")
print(data_table)
"The "sep" argument is used to specify the delimiter of the text file cell values. The "sep" argument of the data.table can also be used to read a text file containing data with single or multiple spaces as delimiters. The sep = "" is used to refer to any length whitespace as being the delimiter.

Syntax:

read.table(filepath, sep, header=T, na.strings, stringAsFactors)

Example: Read TXT file with spaces as a delimiter"
# reading data from the text file
file_path <- "r_content.txt"

data_table <- read.table(file_path, sep = "" , header = T ,
                         na.strings ="",
                         stringsAsFactors= F)

print("Contents of the text file")
print(data_table)
