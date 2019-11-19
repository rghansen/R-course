a <- 2
b <- -1
c <- -4
x1 <-(-b + sqrt(b^2-4*a*c))/(2*a)
x2 <-(-b - sqrt(b^2-4*a*c))/(2*a)
2*(x1^2) - x1 -4
2*(x2^2) - x2 -4

l <- log(1024,4)
4^l

library(dslabs)
data("movielens")
str(movielens)
length(movielens)
length(movielens$movieId)
class(movielens$title)
class(movielens$genres)
nlevels(movielens$genres)
