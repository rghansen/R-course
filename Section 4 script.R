#Arithmetic conditional functions
x <- 0.001
if(x > 0){print("positive")} else {print("not positive")}
x <- -0.001
if(x > 0){print("positive")} else {print("not positive")}
x <- 1
if(x >= 0) {print(log(x))} else {print("error")}
x <- -1
if(x >= 0) {print(log(x))} else {print("error")}

#Situational conditional function
library(dslabs)
data(murders)
murder_rate <-murders$total/murders$population*100000
ind <- which.min(murder_rate)
if(murder_rate[ind] < 0.5) {print(murders$state[ind])} else {print("No state has murder rate that low")}
ind <- which.min(murder_rate)
if(murder_rate[ind] < 0.25) {print(murders$state[ind])} else {print("No state has murder rate that low")}

#shorthand conditional statement
a <- "banana"
ifelse(a == "banana", "yum", "yuck")
a <- "beans"
ifelse(a == "banana", "yum", "yuck")

#conditional statements with vectors
a <- c(1,2,3,4,5,4,3,2,1)
ifelse(a >=2, a/2, "na")

#using conditional statements to replace "na" entries
data(na_example)
no_nas <- ifelse(is.na(na_example), 0, na_example)

#using the any function
a <- c("red", "blue", "red", "red", "red", "blue")
any(a == "blue")
a <- c("red", "blue", "red", "red", "red", "blue")
any(a == "yellow")

#using the all function
a <- c("red", "red", "red", "red", "red", "red")
all(a == "red")
a <- c("red", "blue", "red", "red", "red", "yellow")
all(a == "red")

