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

