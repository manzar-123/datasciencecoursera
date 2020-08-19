add3 <- function(x, y, z){
  x + y + z
}
add3(3,3,2)
above10 <- function(x) {
  use <- x>10
  x[use]
}
above <- function(x, n=10) {
  use <- x > n
  x[use]
}
x <- 1:20
above(x, 13)

columnmean <- function(manzar, removeNA = TRUE){
    nc <- ncol(manzar)
    means <- numeric(nc)
    for(i in 1:nc){
      means [i] <- mean(manzar[, i], na.rm = removeNA)
    }
    means
}














