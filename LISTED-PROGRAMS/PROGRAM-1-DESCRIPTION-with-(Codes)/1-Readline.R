# R program to illustrate
# taking input from the user

# taking input using readline()
# this command will prompt you
# to input a desired value
var = readline();

# convert the inputted value to integer
var = as.integer(var);

# print the value
print(var)
# R program to illustrate
# taking input from the user

# taking input with showing the message
var = readline(prompt = "Enter any number : ");

# convert the inputted value to an integer
var = as.integer(var);

# print the value
print(var)
# R program to illustrate
# taking input from the user

# taking multiple inputs
# using braces
{
  var1 = readline("Enter 1st number : ");
  var2 = readline("Enter 2nd number : ");
  var3 = readline("Enter 3rd number : ");
  var4 = readline("Enter 4th number : ");
}

# converting each value
var1 = as.integer(var1);
var2 = as.integer(var2);
var3 = as.integer(var3);
var4 = as.integer(var4);

# print the sum of the 4 number
print(var1 + var2 + var3 + var4)
# R program to illustrate
# taking input from the user

# string input
var1 = readline(prompt = "Enter your name : ");

# character input
var2 = readline(prompt = "Enter any character : ");
# convert to character
var2 = as.character(var2)

# printing values
print(var1)
print(var2)
