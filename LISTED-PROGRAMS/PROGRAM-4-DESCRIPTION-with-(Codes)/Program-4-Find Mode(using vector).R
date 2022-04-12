my_mode <- function(x) {                     # Create mode function 
  unique_x <- unique(x)
  tabulate_x <- tabulate(match(x, unique_x))
  unique_x[tabulate_x == max(tabulate_x)]
}
x1 <- c(7, 1, 3, 8, 5, 7) 
my_mode(x1)   
