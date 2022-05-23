#Adding Colors to Charts in R Programming
"Adding Colors to Charts in R Programming
There are hundreds of charts and graphs present in R. For example, bar plot, box plot, mosaic plot, dot chart, coplot, histogram, pie chart, scatter graph, etc. We can visually enhance our plots and make them more attractive through colors. The col graphical parameter is brought into use for this purpose. The desired color's name can be expressed in the string. 

Syntax: barplot( A, col=color_name)"
# Creating a list
temp<-c(5, 10, 15, 20, 25)

# Barplot with default color
barplot(temp, main ="By default")

# Barplot with green color
barplot(temp, col ="green",
        main ="With coloring")
"R - Colors to Charts
There are a variety of 657 colors present in the R language for better data presentation. Through colors() function one can learn about all the vibrant colors present in R. The names of colors displayed are arranged alphabetically (except the color 'white' which is the first color displayed). 

For using color in code, either its name is used or its order number is used."
# Creating a list
temp<-c(5, 10, 15, 20, 25)

# Creating barplot
barplot(temp, col = colors()[655],
        main ="With coloring")
"Using Hexadecimal Values
Though remembering color names is easier, at times colors are defined by the unique hexadecimal numbers which have been already predefined for each color in R. The six-digit length of the Hexadecimal number is in the format #RRGGBB. 

The letters in this format signify: 

RR - Red
GG - Green
BB - Blue
And the color codes of Red, Green, and Blue ranges from 00 to FF. Then the color codes of Red, Green, and Blue will form a six-digit length of the Hexadecimal number which represents a color formed by mixing all the defined shades. 



Hence three basic pure shades can be written as: 

#FF0000 RED
#00FF00 GREEN
#0000FF Blue
Shade, when no color is present, is white(000000). Shade, when all the colors are present, is black(FFFFFF).

Using RGB value
The function RGB specifies the shade of the color red, green, and blue between 0 and 1. Further the specified shades of these three basic components will be mixed to form a new shade. The shade of the color red, green, and blue can also be specified between 0 and 255. But there will be an added argument max=255 while using this range.

The function rgb() will return the corresponding hexadecimal code of the specified shade."
rgb (0.9, 0.7, 0.8)
rgb(5, 0, 70, max = 255)
#Example: Using shades between 0-255 
# Creating a list
temp<-c(5, 10, 15, 20, 25)

# Creating barplot
barplot(temp, col = rgb(5, 0, 70, max = 255),
        main ="With coloring")
#Example: Using shades between 0 and 1 
# Creating a list
temp<-c(5, 10, 15, 20, 25)

# Creating barplot
barplot(temp, col = rgb (0.9, 0.7, 0.8),
        main ="With coloring")

"Vector of Colors
What if we require to represent every bar of the barplot with various colors? In that case, a vector of colors is created and this is also known as color cycling in R."
temp<-c(5, 10, 15, 20, 25)
barplot(temp, col = c("# F50629", "# 00FFAA",
                      "# AAFF33", "# 336622",
                      "# 5F2910"),
        main ="With 5 colors")

"If the provided vector's length is less than the number of bars present in the barplot then the color vector is reused."
temp<-c(5, 10, 15, 20, 25)
barplot(temp, col = c("# F50629", "# 00FFAA",
                      "# AAFF33"),
        main ="With 3 colors")

"Color Palette
The five inbuilt color palettes are provided in the R language for generating color vector easily and faster. They are: 

rainbow()
terrain.colors()
heat.colors()
cm.colors()
topo.colors()
All the stated functions take the color vector's desired length as the parameter value. The function returns the hexadecimal code of the colors available. This hexadecimal code is of eight digits. This is because the last two digits specify the level of transparency (where FF is opaque and 00 is transparent) "
rainbow(5)
heat.colors(5)
terrain.colors(5)
topo.colors(5)
temp<-c(5, 10, 15, 20, 25)
barplot(temp, col = rainbow(5),
        main ="rainbow")
