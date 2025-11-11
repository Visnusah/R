"""
Explore
Clean
Manipulate # This
Describe and summarise
visualise
Analyse
"""


library(tidyverse)

#view data
?msleep
glimpse(msleep)
view(msleep)

#Rename a variable

msleep

msleep %>% 
  rename("voree" = "vore") %>% 
  glimpse()

# Reorder Variables
msleep %>%  
  select(vore, name, everything())

# change a variable type
glimpse(msleep)

class(msleep$vore)

msleep$vore <- as.factor(msleep$vore)

msleep %>% 
  mutate(vore = as.character(vore)) %>% 
  glimpse()

# Select Variable to work with

names(msleep)

msleep %>% 
  select(2:4,
         awake,
         starts_with("sleep"),
         contains("wt")) %>% 
  names()

#filter and arrange data

unique(msleep$order)

ms <- msleep %>% 
  filter((order == "Carnivora" |
          order == "Primates") & 
            sleep_total > 8) %>% 
         select(name, order, sleep_total) %>% 
           arrange(-sleep_total) %>% 
           view

#method %in%
ms1 <- msleep %>% 
  filter((order %in% c("Carnivora","Primates")) & 
            sleep_total > 8) %>% 
         select(name, order, sleep_total) %>% 
           arrange(order) %>% 
           view

view(ms1)
view(msleep)

# change observation (mutate)
msleep %>% 
  mutate(brainwt = brainwt * 1000) %>% 
  view

msleep %>% 
  mutate(brainwt_in_grams = brainwt * 1000) %>% 
  view()

# Conditional change (if_else)
# logical Vector based on a condition

msleep$brainwt
msleep$brainwt > 0.01

size_of_brain <- msleep %>% 
  select(name, brainwt) %>% 
  drop_na(brainwt) %>% 
  mutate(brain_size = if_else(brainwt > 0.01,
                              "large",
                              "small"))
size_of_brain # see output in console
view(size_of_brain) # view in tabular format

# Recode data and rename a variable
# change observations of "large" and "small" into

size_of_brain %>% 
  mutate(brain_size = recode(brain_size,
                             "large" = 1,
                             "small" = 2))

# Reshape the data from wide to long or long to wide

install.packages("gapminder")
library(gapminder)
view(gapminder)

data <- select(gapminder, country, year, lifeExp)
view(data)

wide_data <- data %>% 
  pivot_wider(names_from = year, values_from = lifeExp)
view(wide_data)

long_data <- wide_data %>% 
  pivot_longer(2:13, 
               names_to = "Year",
               values_to = "lifeExp")
view(long_data)


