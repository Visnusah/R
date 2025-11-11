library(tidyverse)
view(msleep)

#1
my_data <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(sleep_total > 18)

view(my_data)
#2
my_data <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(!sleep_total >18)
#3
my_data <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(order == "Primates", bodywt > 20)
#4
my_data <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(order == "Primates" | bodywt > 20)

#5
my_data <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(name == "Cow" |
         name == "Dog" |
         name == "Goat")

#6
my_data <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(name %in% c("Cow", "Dog", "Horse"))

#7
my_data <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(between(sleep_total, 16, 18))

#8

my_data <- msleep %>% 
  select (name, sleep_total) %>% 
  filter(near(sleep_total, 17, tol = 0.5))
#9
my_data <- msleep %>% 
  select(name, conservation, sleep_total) %>% 
  filter(is.na(conservation))
  
#10
my_data <- msleep %>% 
  select(name, conservation, sleep_total) %>% 
  filter(!is.na(conservation))
  
