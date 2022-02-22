#"Reading CSV Files CSV (Comma Separated Values) is a text file in which the values in columns are separated by a comma. For importing data in the R programming environment, we have to set our working directory with the setwd() function."

setwd("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-2-DESCRIPTION-with-(Codes)")
#"To read a csv file, we use the in-built function read.csv() that outputs the data from the file as a data frame."
#data <- read.csv("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-2-DESCRIPTION-with-(Codes)/iris.csv")
#print(data)
#data <- read.csv("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-2-DESCRIPTION-with-(Codes)/iris.csv", header = FALSE)
#print(data)
data <- read.csv("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-2-DESCRIPTION-with-(Codes)/iris.csv", header = FALSE,col.names = c("sepal length", "sepal width", "petal length", "petal width","class"))
print(data)
