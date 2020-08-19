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

fit <- lm(price~engine+horse+weight, data = train)
pred <- predict(fit)
trainmse <- mean((train$price - pred)^2)
trainmse

fit2 <- lm(price~engine+horse+weight, data = test)
pred2 <- predict(fit2)
testmse <- mean((test$price - pred2)^2)
testmse

#another way of upper 3 lines
pred3 <- predict(fit, test)
testmse2 <- mean((test$price - pred3)^2)
testmse2

# k fold validation

install.packages('DAAG')
require(DAAG)
library(DAAG)

fit3 <- cv.lm(data=tab, form.lm = formula(price~engine+horse+weight), m=10)
View(fit3)










