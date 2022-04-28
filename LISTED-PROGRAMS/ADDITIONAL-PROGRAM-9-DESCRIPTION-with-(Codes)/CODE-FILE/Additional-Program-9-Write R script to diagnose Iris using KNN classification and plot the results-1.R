# Additional-Program-9: Write R script to diagnose Iris using KNN classification and plot the results.
df <- data(iris) ##load data
head(iris) ## see the structured
##Generate a random number that is 90% of the total number of rows in data set.
ran <- sample(1:nrow(iris), 0.9 * nrow(iris)) 

##the normalization function is created
nor <-function(x) { (x -min(x))/(max(x)-min(x))   }

##Run normalization on first 4 columns of data set because they are the predictors
iris_norm <- as.data.frame(lapply(iris[,c(1,2,3,4)], nor))

summary(iris_norm)
##extract training set
iris_train <- iris_norm[ran,] 
##extract testing set
iris_test <- iris_norm[-ran,] 
##extract 5th column of train dataset because it will be used as 'cl' argument in knn function.
iris_target_category <- iris[ran,5]
##extract 5th column if test dataset to measure the accuracy
iris_test_category <- iris[-ran,5]
##load the package class
library(class)
##run knn function
pr <- knn(iris_train,iris_test,cl=iris_target_category,k=13)

##create confusion matrix
tab <- table(pr,iris_test_category)

##this function divides the correct predictions by total number of predictions that tell us how accurate teh model is.

accuracy <- function(x){sum(diag(x)/(sum(rowSums(x)))) * 100}
accuracy(tab)
##because diamonds dataset is in ggplot2 package
library(ggplot2)
##load data
data(diamonds)

##store it as data frame
dia <- data.frame(diamonds)

##create a random number equal 90% of total number of rows
ran <- sample(1:nrow(dia),0.9 * nrow(dia))

##the normalization function is created
nor <-function(x) { (x -min(x))/(max(x)-min(x))   }

##normalization function is created
dia_nor <- as.data.frame(lapply(dia[,c(1,5,6,7,8,9,10)], nor))

##training dataset extracted
dia_train <- dia_nor[ran,]

##test dataset extracted
dia_test <- dia_nor[-ran,]
##the 2nd column of training dataset because that is what we need to predict about testing dataset
##also convert ordered factor to normal factor
dia_target <- as.factor(dia[ran,2])

##the actual values of 2nd couln of testing dataset to compaire it with values that will be predicted
##also convert ordered factor to normal factor
test_target <- as.factor(dia[-ran,2])

##run knn function
library(class)
pr <- knn(dia_train,dia_test,cl=dia_target,k=20)

##create the confucion matrix
tb <- table(pr,test_target)

##check the accuracy
accuracy <- function(x){sum(diag(x)/(sum(rowSums(x)))) * 100}
accuracy(tb)