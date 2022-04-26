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
My_Dataset = read.csv("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/ADDITIONAL-PROGRAM-7-DESCRIPTION-with-(Codes)/heart.data.csv",
                      stringsAsFactors=F)
summary(My_Dataset)
#Step 2: Make sure your data meet the assumptions
#Multiple regression
#1. Independence of observations (aka no autocorrelation)
cor(My_Dataset$biking, My_Dataset$smoking)
# 2. Normality
hist(My_Dataset$heart.disease)
# 3. Linearity
plot(heart.disease ~ biking, data=My_Dataset)
# Homoscedasticity
# Step 3: Perform the linear regression analysis: Multiple Regression
#Multiple regression: biking, smoking, and heart disease
Model<-lm(heart.disease ~ biking + smoking, data = My_Dataset)

summary(Model)
#Step 4: Check for homoscedasticity
#Multiple regression
par(mfrow=c(2,2))
plot(Model)
par(mfrow=c(1,1))
# Step 5: Visualize the results with a graph
#Multiple regression
# There are 7 steps to follow.
# 1. Create a new dataframe with the information needed to plot the model
plotting.data<-expand.grid(
  biking = seq(min(My_Dataset$biking), max(My_Dataset$biking), length.out=30),
  smoking=c(min(My_Dataset$smoking), mean(My_Dataset$smoking), max(My_Dataset$smoking)))
# 2. Predict the values of heart disease based on your linear model
plotting.data$predicted.y <- predict.lm(heart.disease.lm, newdata=plotting.data)
# 3.Round the smoking numbers to two decimals
plotting.data$smoking <- round(plotting.data$smoking, digits = 2)
# 4. Change the 'smoking' variable into a factor
plotting.data$smoking <- as.factor(plotting.data$smoking)
# 5. Plot the original data
heart.plot <- ggplot(My_Dataset, aes(x=biking, y=heart.disease)) +
  geom_point()

heart.plot
# 6.Add the regression lines
heart.plot <- heart.plot +
  geom_line(data=plotting.data, aes(x=biking, y=predicted.y, color=smoking), size=1.25)

heart.plot
# 7. Make the graph ready for publication
heart.plot <-
  heart.plot +
  theme_bw() +
  labs(title = "Rates of heart disease (% of population) \n as a function of biking to work and smoking",
       x = "Biking to work (% of population)",
       y = "Heart disease (% of population)",
       color = "Smoking \n (% of population)")

heart.plot

heart.plot + annotate(geom="text", x=30, y=1.75, label=" = 15 + (-0.2*biking) + (0.178*smoking)")
# Step 6: Report your results
#In addition to the graph, include a brief statement explaining the results of the regression model.