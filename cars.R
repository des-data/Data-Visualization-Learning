View(cars)
plot(cars)
hist(cars$speed)
attach(cars)
hist(dist)
summary(cars)
summary(cars$speed)
class(cars)
class(cars$speed)
length(cars$speed)
unique(cars$speed)
unique(cars$dist)
head(cars)
tail(cars)
subset <- cars[3:6,1:2]
?median
median(cars$speed)
