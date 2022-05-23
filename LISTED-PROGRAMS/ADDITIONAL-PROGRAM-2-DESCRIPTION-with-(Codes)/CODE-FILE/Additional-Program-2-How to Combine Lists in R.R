#How to Combine Lists in R
#Method 1: Using c() function
"We can combine lists by appending the lists using c() function.

Syntax:

c(list1,list2,list3,..,list n)

Where lists is the multiple lists"
# create list1
list1=list(names=c('sravan','bobby','ojaswi'),
           marks=c(100,89,76))

# create list2
list2=list(names=c('rohith','gnanesh','satwik'),
           marks=c(96,89,70))

# create list3
list3=list(names=c('vijay','gopal','harsha'),
           marks=c(100,89,76))

# create list4
list4=list(names=c('ramya','khyathi','ramya preethi'),
           marks=c(96,89,70))


# combine lists using c() function
final_list=c(list1,list2,list3,list4)

# display list
print(final_list)
#Method 2 : Using append() function
"By using append() function we can combine lists

Syntax:

append(list1,list2,list3,.,listn)"
# create list1
list1=list(names=c('sravan','bobby','ojaswi'),
           marks=c(100,89,76))

# create list2
list2=list(names=c('rohith','gnanesh','satwik'),
           marks=c(96,89,70))

# combine lists using append() function
final_list=append(list1,list2)

# display list
print(final_list)
# #Method 2 : Using mapply() function
# create list1
list1=list(names=c('sravan','bobby','ojaswi'),
           marks=c(100,89,76))

# create list2
list2=list(names=c('rohith','gnanesh','satwik'),
           marks=c(96,89,70))

# combine lists using append() function
final_list=append(list1,list2)

# display list
print(final_list)
#Method 4 : Using map() function
"map() function works similar to mapply() to combine multiple lists into one.

Syntax:

Map(c,list1,list2,..,listn)"
# create list1
list1=list(names=c('sravan','bobby','ojaswi'),
           marks=c(100,89,76))

# create list2
list2=list(names=c('rohith','gnanesh','satwik'),
           marks=c(96,89,70))

# create list3
list3=list(names=c('vijay','gopal','harsha'),
           marks=c(100,89,76))

# create list4
list4=list(names=c('ramya','khyathi','ramya preethi'),
           marks=c(96,89,70))

# combine lists using Map() function
final_list=Map(c,list2,list3,list4)

# display list
print(final_list)
