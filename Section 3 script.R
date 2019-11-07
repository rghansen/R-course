#indexing data by logical vector comparing a threshold value (0.71 in this example)
index <- murder.rate <= 0.71
murders$state[index]

#indexing data by two logical vectors simultaneously
west <- murders$region == "West"
safe <- murder.rate <= 1
indexws <- west & safe
murders$state[indexws]

#indexing using logical vector functions
indexm <- which(murders$state == "Massachusetts")
murder.rate[indexm]
indexy <- match(c("Florida", "New York","Texas"), murders$state)
murders$state[indexy]
murder.rate[indexy]
prairies <- c("Montana", "Alberta", "Idaho", "Saskatchewan")
prairies%in%murders$state

#working with dplyr to edit tables
library(dplyr)
murders <- mutate(murders, rate = total/population*100000)
structure(murders)

#making a table witha subset of columns without %>%
select(murders, state, region, rate)
filter(murders, rate <= 0.71)

#making a table with a subset of columns with %>% (the pipe)
murders%>%select(state,region,rate)%>%filter(rate <= 0.71)

#basic plot of two variables
population <- murders$population
totalmurders <- murders$total
plot(population,totalmurders)

#basic histogram
hist(murder.rate)
murders$state[which.max(murder.rate)]

#basic boxplots
boxplot(murder.rate~region, data = murders)
