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

#shorthand condirional statement
a <- "banana"
ifelse(a == "banana", "yum", "yuck")
a <- "beans"
ifelse(a == "banana", "yum", "yuck")