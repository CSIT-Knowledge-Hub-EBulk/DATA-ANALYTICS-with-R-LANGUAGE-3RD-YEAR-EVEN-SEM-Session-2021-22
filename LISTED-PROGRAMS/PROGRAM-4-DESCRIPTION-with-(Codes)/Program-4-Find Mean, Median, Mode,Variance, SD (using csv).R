# R program to import data into R

# Import the data using read.csv()
myData = read.csv("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-4-DESCRIPTION-with-(Codes)/CardioGoodFitness.csv",
                  stringsAsFactors=F)
# Print the first 6 rows
print(head(myData))
# Compute the mean value
mean = mean(myData$Age)
print(mean)
# Compute the median value
median = median(myData$Age)
print(median)
# Mode
mode = function(){
  return(sort(-table(myData$Age))[1])
}

mode()
# Compute the standard deviation value
STD = sd(myData$Age)
print(STD)
# Compute the Variance value
VAR_V = var(myData$Age)
print(VAR_V)