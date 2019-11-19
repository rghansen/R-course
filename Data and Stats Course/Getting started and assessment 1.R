#package for course
install.packages("rafalib")
library("rafalib")

#built-in r tutorial
install.packages("swirl")
library("swirl")
swirl()

#how to work in swirl: esc button to prompt
#actions from the prompt: When you are at the R prompt (>):
# -- Typing skip() allows you to skip the current question.
# -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
# -- UNTIL you type nxt() which will regain swirl's attention.
# -- Typing bye() causes swirl to exit. Your progress will be saved.
# -- Typing main() returns you to swirl's main menu.
# -- Typing info() displays these options again

#assessment for getting started section
version
firstvector <- c(2.23,3.45,1.87,2.11,7.33,18.34,19.23)
mean(firstvector)

#calculating sum of i^2 between 1 and 25
firstloop <- vector("numeric",length=25)
for(i in 1:25) {
  firstloop[i] <- i^2
}
sum(firstloop)

#working with cars database
class(cars)
nrow(cars)
head(cars)

#calculating mean distance for whole
mean(cars[,2])

#finding a specific entry 
which(cars$dist == 85)
cars$dist[50]
