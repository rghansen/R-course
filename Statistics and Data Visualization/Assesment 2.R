#reading in data (data already downloased from github)
msleep <- read.csv("Statistics and Data Visualization/msleep_ggplot2.csv")
class(msleep)
structure(msleep)

#selecting only primates
primates <- filter(msleep, order == "Primates")
nrow(primates)
class(primates)

#selecting sleep of primates
select(primates, sleep_total) %>% class()

#transforming sleep into a vector to calculate the mean
primatesleep <- select(primates, sleep_total) %>% unlist()
mean(primatesleep)

#learning and using the summarize function
?summarize

#using summarize with group_by
msleep %>% group_by(order) %>% summarize(mean(sleep_total))

#using summarize with filter
msleep %>% filter(order == "Primates") %>% summarize(mean(sleep_total))
