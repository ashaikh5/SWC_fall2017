sqrt(64)
print("Wow")
print(64)
install.packages("knitr")
library(knitr)
?print
help(mean)
#variable
name <- "Jane"
name
price <- 3.99
price
print(price)
mass <- 47.5
ls()
?ls
rm(name)
ls()
rm(list=ls())
res <- sqrt(64)
res
age <- 45
length(age)
str(age)
?str
typeof(age)

score <- 79
score
is.integer(score)
typeof(is.integer(score))

#how to create a multi-element variable
v <- c(1:10)
v
length(v)
str(v)
head(v, n=2)
tail(v, n=3)
#manipulate
v<- c(v, 56)
v
v1 <- v*2
v1
#change a data type
v2 <- as.character(v1)
v2

#matrices
m <- matrix(c(1:18), 3, 6)
m
dim(m)
#factor
f <- factor(c("M", "F", "F"))
f
str(f)

#list
l <- list("Afghanistan", 1952, 86769)
l
str(l)
length(l)

menu <- c("chicken", "salad", "soup", "tea")
state <- factor(c("sold", "solid", "liquid", "liquid"))
cost <- c(4.99, 2.99, 3.29, 1.89)
my.order <- list(menu, state, cost)
my.order

length(my.order)
str(my.order)
length(menu)
length(state)
length(cost)

my.order_df <- data.frame(menu, state, cost)
my.order_df


### Subsetting
### By Position Index 
v <- c(10:20)
v
v[7]
v[7:10]
v[-c(7:10)]
my.order[1]
my.order_df[3,3]
my.order_df[,3]
my.order_df[3]

### by name
my.order_df$menu

### by logical vectors

## < less than
## > greater than
## == equal to
## <= less than or equal to
## >= greater than or equal to

v <- c(2,3,4,5,6,5,6)
v1 <- v[v==5]
v1
v1 <- v[v<4]
v1
df1 <- my.order_df[my.order_df$menu == "liquid"]
df1
df1 <- my.order_df[my.order_df$menu == "liquid",]
df1
df2 <- my.order_df[my.order_df$cost<3,]
df2
my.order_df$state == "liquid"
myData <- read.table("gapminder.txt", header = TRUE)
myData
head(myData)

str(myData)
typeof(myData)
myData[,c(3,5)]
unique(myData$country) or unique(myData[,1])
myData[myData$country== "Sweden",]
l <- myData[myData$lifeExp<70,]
l
myData$pop.mil <- myData[,5]/1000000
