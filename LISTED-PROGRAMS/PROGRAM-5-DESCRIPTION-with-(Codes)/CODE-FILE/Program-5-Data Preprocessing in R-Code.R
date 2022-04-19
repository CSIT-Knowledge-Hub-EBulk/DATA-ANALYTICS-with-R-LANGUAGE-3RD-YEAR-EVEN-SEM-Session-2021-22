#Steps in data preprocessing
#Step 1: Importing the dataset
# Import the data using read.csv()
My_Dataset = read.csv("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-5-DESCRIPTION-with-(Codes)/Data.csv",
                  stringsAsFactors=F)
#view(MY_Dataset)
print(My_Dataset)
#Step 2: Handling the missing data
#Here are two techniques we can use to handle missing data:
#1.Delete the observation reporting the missing data:
#2.Replace the missing data with the average of the feature in which the data is missing:
My_Dataset$Age = ifelse(is.na(My_Dataset$Age),
                     ave(My_Dataset$Age, FUN = function (x)mean(x, na.rm = TRUE)),
                     My_Dataset$Age)

print(My_Dataset$Age)
My_Dataset$Salary = ifelse(is.na(My_Dataset$Salary),
                        ave(My_Dataset$Salary, FUN = function (x)mean(x, na.rm = TRUE)),
                        My_Dataset$Salary)
print(My_Dataset$Salary)
print(My_Dataset)
#View(My_Dataset)
#Step 3: Encoding categorical data
My_Dataset$Country = factor(My_Dataset$Country, 
                         levels = c('India','Sri lanka','China'), 
                         labels = c(1.0, 2.0 , 3.0 ))
print(My_Dataset$Country)
My_Dataset$Purchased = factor(My_Dataset$Purchased,
                           levels = c('No', 'Yes'),
                           labels = c(0, 1))
My_Dataset$Purchased[is.na(My_Dataset$Purchased)] <- 0
as.factor(My_Dataset$Purchased)
print(My_Dataset)
#Step 4: Splitting the dataset into the training and test set
library(caTools)# required library for data splition
set.seed(123)
split = sample.split(Dataset$Purchased, SplitRatio = 0.8)# returns true if observation goes to the Training set and false if observation goes to the test set.

#Creating the training set and test set separately
training_set = subset(Dataset, split == TRUE)
test_set = subset(Dataset, split == FALSE)
training_set
test_set
#Step 5: Feature scaling
#The most used one is the standardization and normalization technique.
training_set[, 2:3] = scale(training_set[, 2:3])
test_set[, 2:3] = scale(test_set[, 2:3])
training_set
test_set
#Our training and test set were successfully scaled.
#If we fail to do so, R will show us an error.

#Such as:
  
  # training_set = scale(training_set)# returns an error