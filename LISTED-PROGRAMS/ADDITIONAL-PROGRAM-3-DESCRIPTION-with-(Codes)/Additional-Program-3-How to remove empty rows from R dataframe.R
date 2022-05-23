#How to remove empty rows from R dataframe?
"Syntax:

data <- data[!apply(data == "", 1, all),]

Approach

Create dataframe
Select empty rows
Remove those rows
Copy the resultant dataframe
Display dataframe"
#Example 1:
gfg <- data.frame(a=c('i','','iii','iv','','vi','','viii','','x'),
                  b=c('I','','III','IV','','VI','','VIII','','X'),
                  c=c('1','','3','4','','6','','8','','10'),
                  d=c('a','','c','d','','f','','h','','j'))

print('Original dataframe:-')
gfg

gfg <- gfg[!apply(gfg == "", 1, all),]
print('Modified dataframe:-')
gfg
