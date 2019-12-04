#loading data and formatting it
library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )

#random sampling a population when sample size is 5
set.seed(1)
sample5 <- vector(length=1000, "numeric")
n <- 1000
for(i in 1:n) {
   sample5[i] <- mean(sample(x,5))
}

#random sampling a population when sample size is 50
set.seed(1)
sample50 <- vector(length=1000, "numeric")
n <- 1000
for(i in 1:n) {
  sample50[i] <- mean(sample(x,50))
}

#comparing shapes of means of samples using histograms
hist(sample5)
hist(sample50)

#calculating proportion of means between 23 and 25 using sample
interval1 <- sample50 <= 25 & sample50 >= 23
sum(interval1)/length(sample50)

#calculating proportion of means between 23 and 25 using n distribution
pnorm(25, mean = 23.9, sd = 0.43) - pnorm(23, mean = 23.9, sd = 0.43)

#loading new data
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"
filename <- basename(url)
download(url, destfile=filename)
dat <- read.csv(filename) 
dat <- na.omit(dat)
structure(dat)

#loading necessary packages
library(dplyr)

#subsetting males on control diet
controlm <- dat %>% filter(Sex == "M" & Diet == "chow") %>% select(Bodyweight) %>% unlist()
cmmu <- mean(controlm)

#installing rafalib package to calculate population SD
install.packages("rafalib")
library(rafalib)
popsd(controlm)

#random sample of the population
set.seed(1)
cmsample <- sample(controlm, 25)
cmxbar <- mean(cmsample)

#subsetting males on high fat diet to take mean and sd
hfm <- dat %>% filter(Sex == "M" & Diet == "hf") %>% select(Bodyweight) %>% unlist()
hfmmu <- mean(hfm)
popsd(hfm)

#random sample of population
set.seed(1)
hfmsample <- sample(hfm, 25)
hfmxbar <- mean(hfmsample)

#calculating the difference between mean sample and mean population differences
abs((hfmmu - cmmu)- (hfmxbar - cmxbar))

#subsetting females on control diet
controlf <- dat %>% filter(Sex == "F" & Diet == "chow") %>% select(Bodyweight) %>% unlist()
cfmu <- mean(controlf)

#random sample of the population
set.seed(1)
cfsample <- sample(controlf, 25)
cfxbar <- mean(cfsample)

#subsetting females on high fat diet to take mean and sd
hff <- dat %>% filter(Sex == "F" & Diet == "hf") %>% select(Bodyweight) %>% unlist()
hffmu <- mean(hff)
popsd(hff)


#random sample of population
set.seed(1)
hffsample <- sample(hff, 25)
hffxbar <- mean(hffsample)

#calculating the difference between mean sample and mean population differences
abs((hffmu - cfmu)- (hffxbar - cfxbar))

#determing the proportion beneath the curve of a normal distribution
pnorm(3, mean = 0, sd = 1)

#determining the proportion within one sd of the mean weight for male control mice
cmmu
popsd(controlm)
30.96381 + 4.420501
30.96381 - 4.420501
pnorm(35.38431,mean = 30.96381, sd = 4.420501) - pnorm(26.5433,mean = 30.96381, sd = 4.420501)