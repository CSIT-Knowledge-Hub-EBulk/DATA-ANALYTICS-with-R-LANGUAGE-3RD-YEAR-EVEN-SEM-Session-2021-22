#The Dataset
#The dataset mtcars(motor trend car road test) comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles. It comes pre-installed with dplyr package in R.
# Installing required package
install.packages("dplyr")

# Loading the package
library(dplyr)

# Importing excel file
str(mtcars)
#Principal Component Analysis with R language using dataset
# Loading Data
data(mtcars)

# Apply PCA using prcomp function
# Need to scale / Normalize as
# PCA depends on distance measure
my_pca <- prcomp(mtcars, scale = TRUE,
                 center = TRUE, retx = T)
names(my_pca)

# Summary
summary(my_pca)
my_pca

# View the principal component loading
# my_pca$rotation[1:5, 1:4]
my_pca$rotation

# See the principal components
dim(my_pca$x)
my_pca$x

# Plotting the resultant principal components
# The parameter scale = 0 ensures that arrows
# are scaled to represent the loadings
biplot(my_pca, main = "Biplot", scale = 0)

# Compute standard deviation
my_pca$sdev

# Compute variance
my_pca.var <- my_pca$sdev ^ 2
my_pca.var

# Proportion of variance for a scree plot
propve <- my_pca.var / sum(my_pca.var)
propve

# Plot variance explained for each principal component
plot(propve, xlab = "principal component",
     ylab = "Proportion of Variance Explained",
     ylim = c(0, 1), type = "b",
     main = "Scree Plot")

# Plot the cumulative proportion of variance explained
plot(cumsum(propve),
     xlab = "Principal Component",
     ylab = "Cumulative Proportion of Variance Explained",
     ylim = c(0, 1), type = "b")

# Find Top n principal component
# which will atleast cover 90 % variance of dimension
which(cumsum(propve) >= 0.9)[1]

# Predict mpg using first 4 new Principal Components
# Add a training set with principal components
train.data <- data.frame(disp = mtcars$disp, my_pca$x[, 1:4])

# Running a Decision tree algporithm
## Installing and loading packages
install.packages("rpart")
install.packages("rpart.plot")
library(rpart)
library(rpart.plot)

rpart.model <- rpart(disp ~ .,
                     data = train.data, method = "anova")

rpart.plot(rpart.model)
