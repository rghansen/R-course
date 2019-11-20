#examining data (need to have run data set-up script beforehand)
structure(femweights)
length(femweights$Bodyweight)

#extracting specific entries
femweights[12,2]
femweights$Bodyweight[11]

#performing a function on extracted entries
mean(femweights$Bodyweight[13:24])

#working with sample(), but choosing a specific value using set.seed() for grading purposes
?sample
?set.seed
sample(femweights$Bodyweight[13:24], 1)
set.seed(1)
