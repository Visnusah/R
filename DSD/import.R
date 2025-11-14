library(tidyverse)

data = read.csv("/Users/sanju/Documents/GitHub/R/DSD/data.csv")
#**********************  **************************
#*          Name Gender Height..cm. Weight..kg.
#1 Anand Sharma   Male         175          68
#2  Kamlesh Sah   Male         162          55
#3 Bikash Thapa   Male         180          75
#4  Kamla Haris Female         158          52
#5  Kiran Magar   Male         170          70
#6  Rita Tamang Female         165          60

show(data)
print(data)
#*********************   *************************
nrow(data) #6
ncol(data) #4
dim(data) #6 4

colnames(data) # 
typeof(data) # list
#*************************   **********************
str(data)

#************************   ***************************
lapply(
  data, class)

summary(data$Weight..kg.) # Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
                          #52.00   56.25   64.00   63.33   69.50   75.00 

a = data$Weight..kg.
print(a)
typeof(a)

#***************************************************
#*
ggplot (data, aes(x=Weight..kg.)) + 
  geom_boxplot()


#***************************************************
url = "https://github.com/fivethirtyeight/data/blob/master/marriage/men.csv"
men = read_csv(url)
men

#***************************************************
url = "https://raw.githubusercontent.com/fivethirtyeight/data/refs/heads/master/marriage/men.csv"
rawMenData = read_csv(url)
rawMenData
view(rawMenData)

#***************************************************
ClassUrl = "https://raw.githubusercontent.com/fivethirtyeight/data/master/unisex-names/unisex_names_table.csv"
Men = read_csv(ClassUrl)
view(Men)

View(arrange(Men,gap)) # Arrange the data frame by the 'gap' column in ascending order

#***************************************************




