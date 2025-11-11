read.csv("Friends.csv") # Importing the CSV file
 
my_data <- read.csv("Friends.csv") # Storing the data in a variable

View(my_data) # Viewing the data in a spreadsheet format

# ----------------------------------------------

head(my_data) # Viewing the first 6 rows of the data

tail(my_data) # Viewing the last 6 rows of the data

nrow(my_data) # Getting the number of rows in the data

ncol(my_data) # Getting the number of columns in the data

# ----------------------------------------------

my_data[1, ] # Viewing the first row of the data


my_data[, 1] # Viewing the first column of the data

my_data[, 3] # Viewing the third column of the data

my_data[1:5, 1:3] # Viewing the first 5 rows and first 3 columns of the data

# ----------------------------------------------
"Start analysis using the
tydyverse package"

my_data

library(tidyverse) # Loading the tidyverse package

my_data

my_data %>%
  select(Name, Age, Height) %>% # Selecting specific columns
  filter(Age < 20 & Height > 170) # Filtering rows based on conditions

# ----------------------------------------------
# Self Practice

my_data %>%
  select(Name, Age) %>%
  filter(Age <19)

my_data %>%
  select(Name, Eye.Color, Age) %>%
  filter(Eye.Color == "Brown" & Age > 20)




















