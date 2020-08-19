tab <- read.csv('carsales.csv', header = TRUE)
head(tab)
tab
tab

fit <- lm(price~engine+horse+weight, data = tab)
fit
summary(fit)

pred <- predict(fit)
head(pred)
# mean square error MSE = mean((y1 - y1e)^2)
mse <- mean((tab$price - pred)^2)
mse

#make training set and test set

n <- sample(155, 77)
n

train <- tab[n,]
View(train)

test <- tab[-n,]
View(test)
