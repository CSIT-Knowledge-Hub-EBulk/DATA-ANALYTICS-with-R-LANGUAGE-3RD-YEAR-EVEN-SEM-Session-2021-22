#Save and Load RData Workspace Files in R
"Method 1: Using save.image and load method
The save.image method in R is used to save the current workspace files. It is an extended version of the save method in R which is used to create a list of all the declared data objects and save them into the workspace. These files can then later be read into the corresponding saved data objects using the load() method. 

Syntax:

save.image(file = ".RData")

Arguments : 

file - name of the file where the R object is saved to or read from.

Example: Saving R data workspace files"
# creating data objects
obj1 <- c(1:5)		
obj2 <- FALSE					
obj3 <- "R-LANGUAGE!!"

# saving all data to the path
save.image("saveworkspace.RData")
"These files can be loaded into the workspace using load() function.

Syntax: 

Load(path)
Example: Loading R data workspace files "
# loading the workspace
load("saveworkspace.RData")
"Method 2: Using saveRDS and readRDS method
The saveRDS and readRDS methods available in base R are basically used to provide a means to save a single R object to a connection, mostly a type of file object, and then to restore the object. The restored object may belong to a different name. This approach is different from the save and load approach, which saves and restores one or more named objects into an environment. It is used to save a single object into the workspace. 

Syntax:

saveRDS(object, file = "")

Arguments : 

object - R object to serialize.
file - name of the file where the R object is saved to or read from.
Syntax: 

readRDS(file)
Example: Saving and loading R data workspace  

"
# creating data objects
obj1 <- c(1:5)		
obj2 <- FALSE					
obj3 <- "R-LANGUAGE!!"

# saving all data to the path
saveRDS(obj1, file = "saveworkspaceobj1.RData")
print("Data object1")

# loading the workspace
readRDS("saveworkspaceobj1.RData")
"Method 3: Using the save and load method
The save method in R writes an external representation of R objects to the specified file. These R objects can be retrieved back from t

orkspace using the load method.  
Syntax:

save(objects, file)

Arguments :

objects- The list of the objects to be saved
file - the file name for the R objects to be saved and read from
Example: Saving and loading R data workspace 

"
# creating data objects
obj1 <- c(1:5)		
obj2 <- FALSE					
obj3 <- "R-LANGUAGE!!"

# saving all data to the path
save(obj1, obj3, file ="tempworkspaceobj.RData")

load("tempworkspaceobj.RData")
