#Read SPSS sav File into R
"Method 1: Using read_sav() Function of haven Package:
To read SPSS files in R we use the read_sav() function. To do so we firstly install the haven package using:

#install.packages("haven")
Then, import haven package in R code and using read_sav() function read SPSS files.

Syntax:

read_sav("FileName.sav")

Example: Reading SPSS file"
# import haven library package
install.packages("haven")
library("haven")

# Use read_sav() function to read SPSS file
dataframe <- read_sav("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/ADDITIONAL-PROGRAM-4-DESCRIPTION-with-(Codes)/SPSS.sav")	
dataframe
"Method 2: Using read.spss() Function of foreign Package
To read SPSS files in R we use read_spss() function. To do so we firstly install foreign package using:

#install.packages("foreign")
Then, import foreign package in R code and using read_spss() function read SPSS files.

Syntax:

read_spss("FileName.sav", to.data.frame = BOOLEAN)

Example: Reading SPSS file 

"
# import foreign package
install.packages("foreign")
library("foreign")

# Read SPSS file using read.spss() function
dataframe <- read.spss("C:/Users/DELL/OneDrive/Documents/R-Lang/LISTED-PROGRAMS/ADDITIONAL-PROGRAM-4-DESCRIPTION-with-(Codes)/SPSS.sav", to.data.frame = TRUE)
dataframe
