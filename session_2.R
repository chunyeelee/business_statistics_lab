# How to install add-on packages
install.packages("lubridate")
library("lubridate")

# Preparing data for time plots
date1 <- c("4/2/2017", "6/19/2016", "8/10/2016", "6/2/2017", "3/16/2017", "11/5/2017")
str(date1)

date2 <- mdy(date1) #parsing format: month-day-year
date2
str(date2)

day(date2)
yday(date2) #number of date from 1 January
year(date2) 

# Adding lines to time plots
set.seed(1)
x <- yday(date2)
y <- rnorm(6)
plot(y~x, type = "n", xlab="Day of the Year") #It gives the frame of the plot but not the lines
lines(x[order(x)],y[order(x)], xlim = range(x), ylim = range(y), pch = 16, col = "blue") #pch is point character point size

# Writing custom functions
square <- function(x){
  y <- x*x
  return(y)
}
list_1_100 <- 1:100
square(list_1_100) #input a value or vector 

# if statements
a <- 0

if (a==0) {
  b <- 1
} else {
  b <- 2
}

b

# for loops
sums <- numeric(0)
for(i in 1:10){
  if(i == 8)
      break
  sums[i] <- sum(1:i)
}
sums
sum(sums)
mean(sums)

sentence <- c("Let", "the", "computer", "do", "the", "work")
for (word in sentence){
  print(word)
}


