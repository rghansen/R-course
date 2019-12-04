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