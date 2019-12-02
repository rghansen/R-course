#loading dplyr
library(dplyr)

#using basic dplyr functions on mouse data set (need to run data setup script first)
View(femweights)

#subsetting data and creating a vector of measurements
control <- filter(femweights, Diet == "chow")
controlweights <- select(control, Bodyweight)
unlist(controlweights)

#using the pipe for that same operation
controlweights <- filter(femweights, Diet == "chow") %>% select(Bodyweight) %>% unlist()

#doublechecking whether code has worked
class(controlweights)
mean(controlweights)
