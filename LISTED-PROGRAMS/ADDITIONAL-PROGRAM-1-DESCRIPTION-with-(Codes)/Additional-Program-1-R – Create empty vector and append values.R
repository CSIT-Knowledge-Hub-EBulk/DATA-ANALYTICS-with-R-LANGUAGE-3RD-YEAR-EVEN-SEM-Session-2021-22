#R - Create empty vector and append values

# create an empty vector a

a=c()

# display it

print(a)
#A nested empty vector can also be created in R programming language.

# create an empty nested
# vector a

a=c(c(),c())

# display it

print(a)
#Adding values to an empty vector
#Method 1: Using range

# create an empty vector a

a=c()

# display it

print(a)

# adding numbers from 1 to 
# 20 to a vector
a=1:20

# display a

print(a)
# Method 2: Using another vector

# create an empty vector a

a=c()

# display it

print(a)

# adding names to vector which 
# is empty

a=c('sravan','bobby','rohith','gnnaesh','gajji')

# display a

print(a)
# Method 3: Using index

# create an empty numeric
# vector a

a=c()

# display it

print(a)

# create an empty numeric
# vector b

b=c()

# display it

print(b)

# create an empty numeric
# vector d

d=c()

# display it

print(d)

# include numeric data into 
# vector a insert value 10 
# at location 1
a[1]=10

# insert value 20 at location 2
a[2]=20

# insert value 14.5 at location 3
a[3]=14.5

# insert value 89.000 at location 4
a[4]=89.000

# display vector a

print(a)

# include logical data into vector
# b at locations 1,2,3

b[1]=TRUE

b[2]=FALSE

b[3]=FALSE

# display vector b

print(b)

# include character data into vector 
# d at locations 1,2,3

d[1]="Sravan"

d[2]="Bobby"

d[3]="pinkey"

# display vector

print(d)
# We can insert all types of vectors in one empty vector.

# create an empty numeric
# vector a

a=c()

# display it

print(a)


# include all type of vector  
# data into vector a

a[1]="sravan"
a[2]=20
a[3]=14.5

a[4]=FALSE

# display vector a

print(a)
# Method 4: Using append()
# create an empty numeric
# vector a

a=c()

# display it

print(a)

# append 10 using append() 
# function

a=append(a,10)

# display

print(a)
#We can also append multiple data using c() function

# create an empty numeric
# vector a

a=c()

# display it

print(a)

# append 10 elements from 1 to 
# 10  using append() function

a=append(a,c(1:10))

# display

print(a)
