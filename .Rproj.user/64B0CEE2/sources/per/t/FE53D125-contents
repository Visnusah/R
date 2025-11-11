library(readxl) # load the readxl package to read Excel files

data <- read_excel("Friends.xlsx", 
                   range = "a1:e10", 
                   na = "**") # read data from the specified range in the Excel file, treating "**" as NA
View(data) # open a spreadsheet-style data viewer to inspect the data

head(data) # display the first few rows of the data