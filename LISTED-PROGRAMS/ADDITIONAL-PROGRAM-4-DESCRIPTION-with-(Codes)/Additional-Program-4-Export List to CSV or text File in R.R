#Export List to CSV or text File in R
"we will discuss how to export a list to CSV and text file using R Programming language. Exporting to both of these types of files can be done using capture.output() function. This function is mainly used to evaluate its arguments with the output being returned as a character string or sent to a file. By just changing the file name in the parameter user and change the format of the file in which he/she want to export the list.

Syntax: capture.output(., file = NULL, append = FALSE, type = c("output", "message"), split = FALSE)

Parameter:

.: Expressions to be evaluated.
file: A file name or a connection, or NULL to return the output as a character vector.
append: logical. If file a file name or unopened connection, append or overwrite?
type, split: are passed to sink(), see there.
Returns: This function will be return the file to user which is specified to the function as the parameter."
"In this approach user first need to create the list of any datatype and then need to call capture.output() function with the created list by the user and name of the file into which the user has to export the created list as the parameter of the function.

Exporting list to a CSV file
For this simply pass the destination of the file to created along with its name. It will create a CSV file and add a list to it."
gfg_list <- list(c("geeks"),c("for"), c("geeks"))

capture.output(gfg_list, file = "gfg_list.csv")
"Export list to a text file
For this simply pass the destination of the file to created along with its name. It will create a text file and add a list to it."
gfg_list <- list(c("geeks"),c("for"), c("geeks"))

capture.output(gfg_list, file = "gfg_list_txt.txt")
