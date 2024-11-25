5+6
a<-5
b<-9
sum(a,b)
age<-c(6,9)
age
sum(age)
names<-c("John","Mark")
names

friends<-data.frame(names,age)
View(friends)
str(friends)

friends[1,1]
friends[1,]
friends[,1]

library(tidyverse)
data()
starwars

library(dplyr)
View(starwars)
starwars%>% 
  filter(height>150 & mass<200)%>% 
  mutate(height_in_meters=height/100)%>% 
  select(height_in_meters,mass) %>% 
  arrange(mass) %>% 
  #View()
  plot()

msleep
glimpse(msleep)
unique(msleep$vore)
names(msleep)
missing<-!complete.cases(msleep)
msleep[missing,]
