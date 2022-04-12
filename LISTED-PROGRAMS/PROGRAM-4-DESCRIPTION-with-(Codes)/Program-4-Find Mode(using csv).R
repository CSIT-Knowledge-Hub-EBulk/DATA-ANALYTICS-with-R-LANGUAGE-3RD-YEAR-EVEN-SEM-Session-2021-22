# R program to import data into R

# Import the data using read.csv()
myData = read.csv("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-4-DESCRIPTION-with-(Codes)/CardioGoodFitness.csv",
                  stringsAsFactors=F)
# Print the first 6 rows
print(head(myData))
# MODE
my_mode <- function(x) {                     # Create mode function 
  unique_x <- unique(x)
  tabulate_x <- tabulate(match(x, unique_x))
  unique_x[tabulate_x == max(tabulate_x)]
}
my_mode(myData$Age)   