x <- sample(1:100, 15)
x

n <- 1:100
h <- sample(n, 15)
h

n <- 1:100
h <- sample(n, 15, replace=TRUE)
h

# if the sample is greater than the population, then we must use
# replace = TRUE

x <- sample(1:10, 25 , replace=TRUE)
x

# generating vectors of continuous random numbers
# using a few common statistical distrubutions

# to generate a vector of random number with a normal distribution
# we use the rnorm() function

# we must specify the number of values (trials) mean and SD
# by default, mean = 9 and SD = 1

x<- rnorm(n=10, mean = 2, sd = 5)
x

x<- rnorm(10, 2, 5)
x

x<- rnorm(100)
x

# to generate a vector of uniform random numbers
# we use the runif() function

t <- runif(4, 0, 2)
t

# to generate a vector of exponential random numbers
# we use  the rexp() fn. We must specify the n and the rate (1/mean)

z <- rexp(20, 1/2)
z












