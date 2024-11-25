
data()
View(mtcars)
install.packages("devtools")
devtools::install_github("r-lib/conflicted",force = TRUE)
library(conflicted)
install.packages("dplyr")
library(dplyr)
mtcars %>%
  select(mpg,cyl,hp,gear)%>%
  rename(kml=mpg)%>%
  mutate(kml=kml*0.425)%>%
  mutate(size=kml>10,size=if_else(size==TRUE,"Efficient","Guzzler"))%>%
  group_by(size)%>%
  summarise(average_kml=mean(kml))

mtcars %>%
  select(mpg,hp,gear)%>%
  rename(kml=mpg)%>%
  mutate(kml=kml*0.425)%>%
  filter(hp==110,gear==4)
  
mtcars %>%
  select(mpg,hp,gear)%>%
  rename(kml=mpg)%>%
  mutate(kml=kml*0.425)%>%
  filter(between(hp,110,150))
mtcars %>%
  select(mpg,hp,gear)%>%
  rename(kml=mpg)%>%
  mutate(kml=kml*0.425)%>%
  filter(hp %in% c(110,175,123))
  
