library(tidyverse)
data()

starwars %>%
  select(name,height,ends_with("color")) %>%
  filter(hair_color %in% c("blond","brown") &
           height<180)%>%
  View()

starwars%>%
  select(name,gender,height,hair_color)%>%
  na.omit()

starwars%>%
  select(name,gender,height,hair_color) %>%
  filter(!complete.cases(.))

starwars%>%
  select(name,gender,height,hair_color) %>%
  drop_na(height) %>%
  View()

starwars%>%
  select(name,gender,height,hair_color) %>%
  filter(!complete.cases(.)) %>%
  mutate(hair_color=replace_na(hair_color,"none"))


Name=c("Peter","Koech","Kenneth","Peter")
Age=c(14,34,56,14)

friends <- data.frame(Name,Age)
View(friends)

friends[duplicated(friends),]

friends[!duplicated(friends),]


friends %>% distinct()

starwars %>%
  select(name,gender)%>%
  mutate(gender=recode(gender,"masculine"=1,"feminine"=2))%>%
  na.omit()%>%
  View()

