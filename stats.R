#####################
# basic stats
#####################

x <- seq(10, 50, 5)
x

sum(x)

prod(x)

var(x)

sd(x)

mean(x)

summary(x)

cumsum(x)

cumprod(x)

# cumulative sum and cumulative product

# we can store this info in other vectors as well

y <- cumsum(x)
y


######################
# vectorized functions
######################

q <- c(5,6,7)
q

#addition/multiplication of scaler to a vector

u <- q +5
u

u <- q * 3
u

#checking remainders

u <- q %% 2
u

#raising to power

q ^2

q ^ 1/2

sqrt(q)

exp(q)


# we can check log, sin, cos, tan

log(x)

sin(x)
cos(x)

# check the absolute value (ignoring -ve sign)

abs(x)


##################
# Rounding vectors
##################

s <- c(3.4451, 6.5669, 9.0928, 1.8927)
s

#rounding using rule, to the closet lower number, to the closet higher number

round(s)

floor(s)

ceiling(s)

# to significant figures

signif(s, digits = 1)

signif(s, digits = 2)

signif(s, digits = 3)

# facrorial

factorial(q)


#########################
#Handeling missing values
#########################

salary <- c(2500, NA, 3000, 5000)
salary

#mean now gives error bcz it cant get mean of NA

mean(salary)

#there are 2 ways to omit NA from salary 
# we can make NA values false, or we can make another vector without NA values

mean(salary, na.rm = TRUE)

sal2 <- na.omit(salary)
mean(sal2)

# length counts the empty entries as well

length(salary)

# we can look the number of entry that is empty. It comes as TRUE

is.na(salary)


#################
# sorting vectors
#################

x <- c(5,6,8,3,1,4,2,8,5,12,10,7)
x

sort(x)

#here the vector is not changed, only its order changed. So to get the order,

order(x)

#^ so the 1 is 5th in order, and 2 is 7th and so on.
# our main vector is overwrited now. We can use other vector to get sort, or order of one vector

x <- c(5,6,8,3,1,4,2,8,5,12,10,7)
x

y <- sort(x)
y
c <- order(x)
c
x

q <- sort(x, decreasing = TRUE)
q

#same goes for strings, logical fn


#min and max

i <- c(1:6)
i
j <- c(9:4)
j

min(i)
max(i)

which.min(i)
which.min(j)

which.max(i)
which.max(j)

# for pair min/max, pmin/pmax finds the min or max value from the pair and makes a "brand new" list.

pmin(i, j)
pmax(i, j)





















