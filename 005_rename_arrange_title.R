library(tidyverse)
view(starwars)

sw_test <- starwars %>% 
  select(name, gender, mass, height)

view(sw_test)

sw <- starwars %>% 
  select(name, gender, mass, height) %>% 
  rename( weight = mass) %>% 
  na.omit() %>% 
  mutate(height = height / 100) %>% 
  mutate( gender = recode(gender,
                           masculine = "M",
                           feminine= "F")) %>% 
  mutate(size = height > 1 & weight > 75, 
         size = if_else(size == TRUE, "Big", "Small"))

view(sw)

