# To install the packages you need for the analysis, run this code (you only need to do this once):
install.packages("ggplot2")
install.packages("dplyr")
install.packages("broom")
install.packages("ggpubr")
#Next, load the packages into your R environment by running this code (you need to do this every time you restart R):
library(ggplot2)
library(dplyr)
library(broom)
library(ggpubr)
#Step 1: Load the data into R
My_Dataset = read.csv("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-7-DESCRIPTION-with-(Codes)/income.data.csv",
                      stringsAsFactors=F)
summary(My_Dataset)
#Step 2: Make sure your data meet the assumptions
#Simple regression
#1. Independence of observations (aka no autocorrelation)
# 2. Normality
hist(My_Dataset$happiness)
# 3. Linearity
plot(happiness ~ income, data = My_Dataset)
# 4. Homoscedasticity (aka homogeneity of variance)
# Step 3: Perform the linear regression analysis: Simple Regression
# Simple regression: income and happiness
Model <- lm(happiness ~ income, data = My_Dataset,pch=16)

summary(Model)
#Step 4: Check for homoscedasticity
#Simple regression
par(mfrow=c(2,2))
plot(Model)
par(mfrow=c(1,1))
# Step 5: Visualize the results with a graph
#Simple regression
# Follow 4 steps to visualize the results of your simple linear regression.
# 1. Plot the data points on a graph
Graph<-ggplot(My_Dataset, aes(x=income, y=happiness))+
  geom_point()
Graph
# 2. Add the linear regression line to the plotted data

Graph <- Graph + geom_smooth(method="lm", col="black")

Graph
# 3. Add the equation for the regression line.

Graph <- Graph +
  stat_regline_equation(label.x = 3, label.y = 7)
Graph
#4.  Make the graph ready for publication

Graph +
  theme_bw() +
  labs(title = "Reported happiness as a function of income",
       x = "Income (x$10,000)",
       y = "Happiness score (0 to 10)")
# Step 6: Report your results
#In addition to the graph, include a brief statement explaining the results of the regression model.