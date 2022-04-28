#Additional Program-8-To perform Decision Tree operation and visualize for iris data set using r.
data("iris") # see dataset for classfication
#View(iris) # see dataset as table.
# 150 data for observation
summary(iris) # for observation
set.seed(555) # data partition
ind<-sample(2,nrow(iris),replace=TRUE,prob=c(0.8,0.2))
train<-iris[ind==1,]
test<-iris[ind==2,]
library(party) # for decision tree mode.
library(rpart) #
library(rpart.plot) # for decision tree plot drawing
tree<-rpart(Species ~ ., train)
rpart.plot(tree)