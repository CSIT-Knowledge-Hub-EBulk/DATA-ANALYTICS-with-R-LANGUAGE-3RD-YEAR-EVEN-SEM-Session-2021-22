#Remove rows with NA in one column of R DataFrame
#Method 1: Using drop_na()
# Creating dataframe
student=data.frame(name=c("Ram","Geeta","John","Paul",
                          "Cassie","Jim","Dwight")
                   ,maths=c(7,8,NA,9,10,8,9)
                   ,science=c(5,7,6,8,NA,7,8)
                   ,history=c(7,NA,7,7,NA,7,7))

print(student)

library(tidyr)
student %>% drop_na(maths)
#Method 2: Using is.na()
# Creating dataframe
student=data.frame(name=c("Ram","Geeta","John","Paul",
                          "Cassie","Jim","Dwight")
                   ,maths=c(7,8,NA,9,10,8,9)
                   ,science=c(5,7,6,8,NA,7,8)
                   ,history=c(7,NA,7,7,NA,7,7))

print(student)

student[!is.na(student$science),]
#Method 3:Using complete.cases() 
# Creating dataframe
student=data.frame(name=c("Ram","Geeta","John","Paul",
                          "Cassie","Jim","Dwight")
                   ,maths=c(7,8,NA,9,10,8,9)
                   ,science=c(5,7,6,8,NA,7,8)
                   ,history=c(7,NA,7,7,NA,7,7))

print(student)

student[complete.cases(student$history),]
