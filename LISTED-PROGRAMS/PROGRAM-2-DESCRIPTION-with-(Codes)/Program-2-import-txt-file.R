#"Reading CSV Files txt file is a text file in which the values in columns are separated by a comma. For importing data in the R programming environment, we have to set our working directory with the setwd() function."
# Read a txt file, named "iris.txt"
#my_data <- read.delim("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-2-DESCRIPTION-with-(Codes)/iris.txt")
#print(my_data)
#my_data <- read.delim("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-2-DESCRIPTION-with-(Codes)/iris.txt",header = FALSE, sep = ",")
#print(my_data)
my_data <- read.delim("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-2-DESCRIPTION-with-(Codes)/iris.txt",header = FALSE, sep = ",",col.names = c("sepal length", "sepal width", "petal length", "petal width","class"))
print(my_data)