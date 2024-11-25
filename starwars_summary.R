library(tidyverse)
data()
View(starwars)
dim(starwars)
str(starwars)
glimpse(starwars)
View(starwars)
names(starwars)
length(starwars)
length(starwars$hair_color)
unique(starwars$hair_color)
attach(starwars)
table(hair_color)
sort(table(hair_color))
sort(table(hair_color),decreasing = TRUE)
View(sort(table(hair_color),decreasing = TRUE))

starwars %>%
  select(hair_color)%>%
  count(hair_color)%>%
  arrange(desc(n))%>%
  View()

starwars[is.na(starwars$hair_color),]
View(starwars[is.na(hair_color),])

class(height)
summary(height)
boxplot(height)
?boxplot
hist(height)


