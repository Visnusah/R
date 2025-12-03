# Describe and summarise data

#* Range / spread
#* centrality
#*  summarise your data
#*  create tables

library(tidyverse)
data()
view(msleep) # dataset in R for practice


# Describe the spread, Centrality and variance of your data
show(msleep$awake)

min(msleep$awake) # minimum value
max(msleep$awake) # maximum value
range(msleep$awake) # range
IQR(msleep$awake) # interquartile range
mean(msleep$awake) # 
median(msleep$awake) # 
var(msleep$awake) # variance

# Summarise selected variables
summary(msleep)
summary(msleep$sleep_total)

msleep %>% 
  select(sleep_total, brainwt) %>% 
  summary()


# Create a summary table
## For each category of "vore"
## Show avarage "Sleep_total"
## and arrange data by the average

msleep %>%
  drop_na(vore) %>% 
  group_by(vore) %>% 
  summarise((LOWER = min(sleep_total)),
            Average = mean(sleep_total),
            Upper = max(sleep_total),
            Difference =
            max(sleep_total)-min(sleep_total)) %>% 
  arrange(Average) %>% 
  view()

# creating contingency table

library(MASS) # load MASS package
attach(Cars93) # this is a dataset in MASS package
glimpse(Cars93)

show(Cars93)
View(Cars93)

table(Origin)

table(AirBags, Origin)

addmargins(table(AirBags,Origin), 1)
addmargins(table(AirBags,Origin), 2)






