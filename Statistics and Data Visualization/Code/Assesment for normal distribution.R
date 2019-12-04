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
