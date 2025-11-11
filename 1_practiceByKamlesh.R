data <- read.csv("Friends.csv")

View(data)


tail(data)
head(data)



data[1,]
data[,1]
data[9,5]
data[9,1]

data

library(tidyverse)
data

data %>%
  select(Name, Age, Height)

data %>%
  select(Name, Age) %>%
  filter(Age > 18)
  