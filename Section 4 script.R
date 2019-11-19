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

#Creating a function
compute_sum <- function(n) { 
  x <- 1:n 
  sum(x) }

#Creating a for loop
for(n in 1:25) {print(compute_sum(n))}

#creating a vector from a for loop using an empty vector as an index
m <- 25
computed_sum <- vector(length = m)
for(n in 1:m) {
  computed_sum[n] <- compute_sum(n)}

#testing an alternative way of doing the above for loop to create a vector
m <- 25
computed_sum2 <- vector("numeric", 25)
for(n in 1:m) {
  computed_sum2[n] <- compute_sum(n)
}

#testing whether assigning the maximum value of the vector as a variable is necessary
computed_sum3 <- vector("numeric", 25)
for(n in 1:25) {
  computed_sum3[n] <- compute_sum(n)
}

#double checking created vector
ax <- 1:25
plot(ax,computed_sum)
lines(ax, computed_sum2)
lines(ax, computed_sum3)
