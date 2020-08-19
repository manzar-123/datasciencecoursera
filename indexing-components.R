# we will index values from a vector. So lets say we want to get 5th value
# of our vector. We can get it as:

x<- seq (from=1, to=20, by=1)
x
x[2]
x[5:10]
x[5:2]
x[c(1,3,6)]
x[c(1:4, 7)]

# when we want to get last component and we dont know its number:

x[length(x)]

# we can put indices in a separate vector as well
n <- 3:5
x[n]

# the -ve indices help us remove the values. But it is temporary. That means it works for one code only
# we are not deleting stuff. we are just reading all the remaining entries
# remove one component

x[-2]

# remove several

x[c(-1,-3,-4)]
x[-1:-4]
x[-length(x)]


# adding and replacing

y <- c(10, 20 , 30 , 40, 50)
y
y[5] <- 100
y
y[length(y)] <- 10
y
y[2] <- 40
y

#adding a value in between entries. 
x <- c(2,3,5,6)
x
x <- c(x[1:3], 7 , x[4])
x

#indexing using logical functions

x
x <- x[c(FALSE, FALSE, TRUE, TRUE)]
X

#lets get some practical example

salary <- c(2000, 3000, 5000)

#name each component

names(salary) <- c("manzar", "ali", "andrew")
salary

#get one entry

salary["manzar"]

#remove names

names(salary) <- NULL

salary

## Filtering the vectors
# the same rules as we have learnt so many times

x <- seq(10, 100, 10)
x

y <- x[x>29&x<71]
y

z <- x[x>69 | x<31]
z

t <- x[x!=30]
t

u <- x[x>50 & x!=80]
u

# it becomes interesting when we use OR function. the code below will give all values, bcs it is OR fn

q <- x[x>20 | x<60]
q

i <- x[x>30 | x!=80]
i   
#it has selected all because jo first component se exclude ho rhy thy, wo 2nd waly se include ho gaye (and vicce versa)

#now we can see the indexes of a vector on a specific condition

which (x==40)
which (x>45)

j<- which (x<35)
j
#this is shows the number of entries following the condition.

# to check if the value is in the vector. We will get TRUE or FALSE

40 %in% x
56 %in% x

##########################
# all() or any() funtions
##########################

# all fn checks whether "all the components" in a vector meet a certain condition

all(x>30)

all(x>8 & x<101)

all(x>9 & x< 30)

all(x>9 | x< 30)

# any is a function that checks whether "any component" in a vector meets a certain condition

any(x==11)

any(x>10 & x<30)

any(x>35 | x<11)

















