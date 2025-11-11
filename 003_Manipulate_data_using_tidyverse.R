require(tidyverse) # Load the tidyverse package
data() # List all available datasets in R for learning R

# -- Explore the starwars dataset --

view(starwars) # View the starwars dataset which is already loaded in R

starwars %>% 
  select(gender, mass, height, species) %>% 
  filter(species == "Human") %>% 
  na.omit() %>% # Remove rows with NA values
  mutate(height = height/100) %>%  # Convert height from cm to meters
  mutate(BMI = mass/height^2) %>%  # Calculate BMI
  group_by(gender) %>% # Group
  summarise(Average_BMI = mean(BMI)) # Calculate average BMI
