#Step 1: Create a DataFrame
set.seed(111)
x1<-LETTERS[1:20]
x2<-sample(0:5,20,replace=TRUE)
x3<-rnorm(20,1,0.40)
x4<-rpois(20,3)
df<-data.frame(x1,x2,x3,x4)
print(df)
#Step 2: Use write.txt to Export the DataFrame
# row.names=TRUE if you want R to export the row names to the txt file.
#write.txt(dataf,"C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-2-DESCRIPTION-with-(Codes)/info-x.txt", row.names = TRUE)
write.csv(df,"C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-2-DESCRIPTION-with-(Codes)/info-x.txt", row.names = FALSE)
#Step 3: Run the code to Export the DataFrame to txt
print(df)