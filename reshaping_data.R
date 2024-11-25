library(tidyverse)
library(gapminder)
install.packages("gapminder")
library(gapminder)
View(gapminder)

datas <- select(gapminder,country, year,lifeExp)
View(datas)

wide_data <- datas %>%
  pivot_wider(names_from = year,values_from = lifeExp)
  View(wide_data)

library(dplyr)
  wide_data <- wide_data %>%
    mutate(mean_lifeExp = rowMeans(select(., -country), na.rm = TRUE))
  View(wide_data)
  