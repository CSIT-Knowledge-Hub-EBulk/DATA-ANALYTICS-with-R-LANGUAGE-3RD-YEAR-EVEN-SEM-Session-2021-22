#Step 1: Create a DataFrame
dataf <- data.frame(Name = c("Jon", "Bill", "Maria", "Tom", "Emma"),
                 Age = c(23,41,32,55,40))
print (dataf)
#Step 2: Use write.csv to Export the DataFrame
# row.names=TRUE if you want R to export the row names to the CSV file.
#write.csv(dataf,"C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-2-DESCRIPTION-with-(Codes)/people-info.csv", row.names = TRUE)
write.csv(dataf,"C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/PROGRAM-2-DESCRIPTION-with-(Codes)/people-info.csv", row.names = FALSE)
#Step 3: Run the code to Export the DataFrame to CSV
print(dataf)
