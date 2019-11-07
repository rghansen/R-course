library(dslabs)
data(heights)
options(digits = 3)
structure(heights)

#determining how many people are above the average height 
height <- heights$height
mean(height)
ind <- which(height >68.3)
above <- height[ind]

#determining how many people are female and above the average height
library(dplyr)
abovef <- filter(heights, sex == "Female" & height >68.3)
nrow(abovef)

#determining the proportion of people in the database who are female
sex <- heights$sex
indf <- sex == "Female"
class(indf)
mean(indf)

#determining what is the minimum height
which.min(height)
height[1032]
#double checking that
sort(height)
#finding the index of the person with the minimum height
short <- match(50,height)
sex[short]

#finding the maximum height
max(height)
int <- 50:82
sum(!int %in% height)
length(int)

#finding heights in centimetres
heightcm <- height*2.54
heightcm[18]
mean(heightcm)

#finding female heights in cm
heights2 <- data.frame(sex = sex, heightcm = heightcm)
nrow(filter(heights2, sex == "Female"))
#doublechecking
sum(heights2$sex == "Female")

#finding mean of female heights
heightsf <- filter(heights2, sex == "Female")
mean(heightsf$heightcm)

#plotting relationship between % of fatty acids in olives
library(dslabs)
data(olive)
head(olive)
plot(olive$palmitic, olive$palmitoleic)

#making a histogram of eicosenoic acid content
hist(olive$eicosenoic)

#making a boxplot of palmitic acid by region
boxplot(olive$palmitic~olive$region)
