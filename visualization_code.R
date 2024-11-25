#data visualization
plot(pressure)

#barplots

ggplot(data=starwars,
       mapping=aes(x=gender))+
  geom_bar()

#histogram

starwars %>% 
  drop_na(height) %>% 
  ggplot(aes(height))+
geom_histogram()

#boxplots
starwars %>% 
  drop_na(height) %>% 
  ggplot(aes(height))+
  geom_boxplot(fill="steelblue")+
  theme_bw()+
  labs(title = "Boxplot of height",x="height of characters")


#Densityplots
starwars %>% 
  drop_na(height) %>% 
  filter(sex %in% c("male","female")) %>% 
  ggplot(aes(height,color=sex,fill=sex))+
  geom_density(alpha=0.2)+
  theme_bw()

#scatterplots
starwars %>% 
  filter(mass<200) %>% 
  ggplot(aes(height,mass,color=sex))+
  geom_point(size=5,alpha=0.5)+
  theme_minimal()+
  labs(title="Height and Mass by Sex")

#smoothed model
starwars %>% 
  filter(mass<200) %>% 
  ggplot(aes(height,mass,color=sex))+
  geom_point(size=3,alpha=0.8)+
  geom_smooth()+
  facet_wrap(~sex)+
  theme_bw()+
  labs(title="Height and Mass by Sex")
