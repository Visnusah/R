install.packages("nycflights13")

library(tidyverse)
library(nycflights13)

view(flights)
view(airlines)

#dimentions of database
dim(flights)
dim(airlines)

# 
delayed_flights = flights %>% # start with the flights
  filter(dep_delay>0) %>% # find only the delays
  group_by(carrier) %>% # group by airline (carrier)
  summarise(num_delay=n()) # count the observations
delayed_flights



#

view(airports)
dim(airports) #1458 8

#
flights %>%
  group_by(dest) %>%
  summarise(mean_delay=mean(arr_delay, na.rm=TRUE)) %>%
  filter(mean_delay==min(mean_delay, na.rm=TRUE)) %>%
  left_join(airports,by=c("dest"="faa")) %>%
  select(name)

flights %>% 
  group_by(dest) %>% 
  summarise()

#*Exercise. Use the nycflights13 package datasets to answer the following.
#* (a) Considering only flights from JFK to SEA, what was the average, min, and max air
#* time of those flights?
#*(b) Which city was flown to with the highest average speed?

#a
flights %>%
  filter(origin == "JFK", dest == "SEA") %>%
  summarise(
    mean_air_time = mean(air_time, na.rm = TRUE),
    min_air_time = min(air_time, na.rm = TRUE),
    max_air_time = max(air_time, na.rm = TRUE)
  )

view(flights$air_time)
view(flights$distance)

# Error by me
flights %>% 
  filter(flight$air_time flight$distance) %>% 
  summarise()

#b
flights %>%
  mutate(speed = distance / (air_time / 60)) %>%
  group_by(dest) %>%
  summarise(avg_speed = mean(speed, na.rm = TRUE)) %>%
  arrange(desc(avg_speed)) %>%
  head(1) # ANC     490.



##########

view(diamonds)
summary(diamonds)



