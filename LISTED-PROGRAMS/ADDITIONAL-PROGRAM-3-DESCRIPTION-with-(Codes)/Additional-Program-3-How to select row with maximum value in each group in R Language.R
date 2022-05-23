# How to select row with maximum value in each group in R Language?
#Methods 1: Using R base.

#Step 1: Load the dataset into a variable (group). 
# Creating a dataset.
no <- c( 1 : 10)
subject <- c('A', 'A', 'B', 'B', 'B',
             'C', 'C', 'A', 'C', 'C')

mark <- c(2, 3, 5, 2, 5, 8, 17, 3, 5, 5)
group <- data.frame(roll = no, sub = subject,
                    marks = mark )

group
#Step 2: Sorted the marks in descending order for each group (A, B, C).
# Creating a dataset.
no <- c( 1 : 10)
subject <- c('A', 'A', 'B', 'B', 'B',
             'C', 'C', 'A', 'C', 'C')
mark <- c(2, 3, 5, 2, 5, 8, 17, 3, 5, 5)
group <- data.frame(roll = no, sub = subject,
                    marks = mark )

# sorting the sub and marks.
sorted_group <- group[order(group$sub, -group$marks),]

sorted_group
#Step 3: Remove the duplicate rows from the sorted subject column.
# Creating a dataset.
no <- c( 1 : 10)
subject <- c('A', 'A', 'B', 'B', 'B',
             'C', 'C', 'A', 'C', 'C')
mark <- c(2, 3, 5, 2, 5, 8, 17, 3, 5, 5)

group <- data.frame(roll = no, sub = subject,
                    marks = mark )

# sorting the sub and marks.
sorted_group <- group[order(group$sub, -group$marks),]

# removing duplicates from the sorted sub column
ans <- sorted_group[!duplicated(sorted_group$sub),]

ans
#Methods 2: Using dplyr package
#Step1: Load the dataset and library.
# Creating a dataset.
no <- c( 1 : 10)
subject <- c('A', 'A', 'B', 'B', 'B',
             'C', 'C', 'A', 'C', 'C')
mark <- c(2, 3, 5, 2, 5, 8, 17, 3, 5, 5)

group <- data.frame(roll = no, sub = subject,
                    marks = mark )

# loading library
library("dplyr")
#Step 2: Now group the data frame sub using group_ by verb (function) and select the row having maximum marks using which.max().

# Creating a dataset.
no <- c( 1 : 10)
subject <- c('A', 'A', 'B', 'B', 'B',
             'C', 'C', 'A', 'C', 'C')
mark <- c(2, 3, 5, 2, 5,
          8, 17, 3, 5, 5)

group <- data.frame(roll = no, sub = subject, 
                    marks = mark )

# loading library
library("dplyr")

group %>% group_by(sub) %>% slice(which.max(marks))