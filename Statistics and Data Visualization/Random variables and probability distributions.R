#organizing mouse data (need to have run data set-up script already)
structure(femweights)
control <- filter(femweights, Diet == "chow") %>% select(Bodyweight) %>% unlist()
treatment <- filter(femweights, Diet == "hf") %>% select(Bodyweight) %>% unlist()
mean(control)
mean(treatment)

#obtaining a numeric vector of weight from population
structure(femcontrol)
class(femcontrol)
populationweights <- unlist(femcontrol)
class(populationweights)

#sampling from the population (repeat as many times as you want to )
mean(sample(populationweights, 12))

#difference between control and treatment means
difference <- abs(mean(control) - mean(treatment))

#null hypothesis: there is no difference between the mean weights of the control and
#treatment mice therefore they represent samples from the same population
controln <- sample (populationweights, 12)
treatmentn <- sample (populationweights, 12)
differencen <- (mean(controln)- mean(treatmentn))

#repeat random sample a bunch of times to generate a null distribution using for loop
n <- 10000
distofdiff <- vector(length = 10000, "numeric")
for (i in 1:n) {
  x <- sample(populationweights, 12)
  y <- sample(populationweights, 12)
  distofdiff[i] <- mean(x) - mean(y)
}

#visualize null distribution as histogram
hist(distofdiff)

#calculate a p-value from the distribution we generated
p <- sum(abs(distofdiff) > difference)/length(distofdiff)
