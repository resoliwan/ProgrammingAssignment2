setwd('/Users/lee/machine/rprogPrgramAssignment2')

source("cachemean.R")
e <- makevector(c(1,2))
cachemean(v)

source("cachematrix.R")
d <- makeCacheMatrix(matrix(c(1,2,3,4) ,nrow = 2, ncol = 2))
ic <- cacheSolve(d)


