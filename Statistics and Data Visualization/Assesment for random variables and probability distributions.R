#dowloading data and formatting it
install.packages("downloader")
library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )

#difference of means and sample means
mx <- mean(x)
set.seed(1)
mfiveofx <- mean(sample(x,5))
abs(mx-mfiveofx)
set.seed(5)
mfiveofx1 <- mean(sample(x,5))
abs(mx-mfiveofx1)

#creating a null distribution based on 1000 samples
set.seed(1)
n <- 1000
popmeans <- vector(length = 1000, "numeric")
for(i in 1:n) {
  popmeans[i] <- mean(sample(x,5))
}

#calculating a proportion for being within +/- 1 grams of the population mean
sum(popmeans > 1 + mean(x) | popmeans < mean(x) - 1)/1000

#creating a null distribution based on 10000 samples and calculating the same proportion
set.seed(1)
n <- 10000
popmeans <- vector(length = 10000, "numeric")
for(i in 1:n) {
  popmeans[i] <- mean(sample(x,5))
}
sum(popmeans > 1 + mean(x) | popmeans < mean(x) - 1)/10000

#creating a null distribution based on 1000 samples, sample size 50, then proportion
set.seed(1)
n <- 1000
popmeans <- vector(length = 1000, "numeric")
for(i in 1:n) {
  popmeans[i] <- mean(sample(x,50))
}
sum(popmeans > 1 + mean(x) | popmeans < mean(x) - 1)/1000

#dowloading a new data set
install.packages("gapminder")
library(gapminder)
data(gapminder)
structure(gapminder)

#creating a vector for life expectancies in 1952
expt1952 <- filter(gapminder, year == "1952") %>% select(lifeExp) %>% unlist()

#finding cdf values
hist(expt1952)
sum(expt1952 <= 40)/length(expt1952)
sum(expt1952 <= 60)/length(expt1952) - sum(expt1952 <= 40)/length(expt1952)

#building a custom funtion where the output is the cdf for the inputted value
prop = function(q) {
  sum(expt1952 <= q)/length(expt1952)
}
prop(40)

#building a range of q values, 
qs <- seq(from = min(expt1952), to = max(expt1952), length = 20)
qs

#inputting q values as into prop function and plotting it against qs
props <- sapply(qs, prop)
plot(qs, props)

#using the ecdf function (built in to R) instead of creating a new function
plot(ecdf(qs))
