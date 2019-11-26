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