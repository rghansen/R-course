#creating numeric vectors with labels
test <- c(canada=1, italy =2, brazil =3)
class(test)
testagain <- c("canada"=1, "italy" =2, "brazil" =3)
class(testagain)
numbers <- c(1,2,3)
#labeling an exisrting vector with names
countries <- c("canada", "italy", "brazil")
names(numbers) <- countries

#subsetting vectors by index
countries[1]
numbers[1:2]
numbers[c(1,3)]
americas <-numbers[c(1,3)]

#coercing numeric vector to character vector
j <- c(1:10)
k<- as.character(j)

#organizing murder totals by size with mobility and displaying value (sort)
library(dslabs)
sort(murders$total)

#organizing numeric vectors by size with mobility and displaying value(sort) or index (order)
x <- c(5,14,3,8,6)
sort(x)
indexx <- order(x)
indexx
x[indexx]

#organizing the state vector by an index of number of murders
indexm <- order(murders$total)
murders$state[indexm]

#finding the maximum and minimum number of murders and their associated state using max and min indexes
max(murders$total)
maxindex <- which.max(murders$total)
murders$state[maxindex]
min(murders$total)
minindex <- which.min(murders$total)
murders$state[minindex]

#organizing murder data in different ways
rankm <- rank(murders$total)
rankm
sort(murders$population)
indexp <- order(murders$population)

#using ! function to exclude values that are positively identified in an index
help("!")
xl <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)
xl[!ind]

#obtaining a mean by counting only data that is not an NA, using ! function
library(dslabs)
data(na_example)
ind <- is.na(na_example)
na_example[!ind]
mean(na_example[!ind])

#identifying most populous state and size of that population
murders$state[which.max(murders$population)]
max(murders$population)

#figuring out how to make a data frame that displays murder rates by state in ascending order
murder.rate <- murders$total/murders$population*100000
rates <- data.frame(state = murders$state, rate = murder.rate)
indexr <- order(rates$rate)
rates.ordered <- data.frame(state = rates$state[indexr],rate= rates$rate[indexr])
head(rates.ordered)

murders$state[order(murder.rate, decreasing = TRUE)]
