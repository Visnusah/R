# --
data <- read.csv("Friends.csv")
str(data) # Check the structure of the dataset

data$Age <- as.integer(data$Age)


data$Height <- as.factor(data$Height)
levels(data$Height)
data$Height <- factor(data$Height,
                      levels = c("short", "Medium", "Tall"))

data$Age <- as.integer(data$Age)

# --
data1 <- readxl::read_excel("Friends.xlsx")
View(data1)
str(data1)

data1$Age <- as.integer(data1$Age)

data1$Age > 19 # Logical vector of TRUE/FALSE

data1$old <- data1$Age > 18

str(data1)
data1[9,5]
data1[9,4]
data1$Height <- as.integer(data1$Height)


