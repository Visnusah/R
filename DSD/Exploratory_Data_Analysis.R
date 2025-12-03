library("tidyverse")

x = anscombe[,1]
y = anscombe[,5]

show(x)
sd(x) #3.31
show(y)
sd(y) # 2.031

summary(x)
summary(y)

cor(x,y) # 0.8164205 -> Correlation

#*An important next step in Exploratory Data Analysis (EDA) is to construct a
#*scatterplot to visualise the relationship between the two variables
ggplot(NULL,aes(x=x,y=y)) +
  geom_point()

#*Our eyes detect a relationship and the correlation coefficient supports this since we
#*have calculated above (using the cor() function) 𝑟 = 0.8164205 which indicates a
#*strong positive relationship.
#*

# Anscombe's quartet
# second dataset given by columns 3 and 7
x = anscombe[,3]
y = anscombe[,7]

ggplot(NULL, aes(x=x,y=y))+
         geom_point()


# second dataset given by columns 2 and 6
x = anscombe[,2]
y = anscombe[,6]

ggplot(NULL, aes(x=x,y=y))+
         geom_point()



install.packages("gapminder")
library("gapminder")
ggplot2(gapminder, aes(x=gdpPercap, y=lifeExp)) +
  geom_point(aes(colour=continent))

# 0.81 cor


gapminder %>% 
  filter(year == 2007) %>% 
  group_by(continent) %>% 
  summarise(num_countries = n_distinct(country),
            r = cor(gdpPercap, lifeExp))


install.packages("ISLR")
library(tidyverse)
library(ISLR)

data(package = "ISLR")


credit = as_tibble(Credit)
view(credit)
str(credit)

credit = select(credit,Balance,Limit,Income)
summary(credit)
dim(credit)
view(credit)
packageDate()



data(ISRL)
view(ISLR)
data()

str(credit) # data types o
summary(credit)


ggplot(credit, aes(x=Balance, y=Limit)) +
  geom_point()
cor(credit$Balance,credit$Limit)




install.packages("GGally")
library('GGally')
ggscatmat(select(credit,Balance,Limit,Income))


install.packages("ggplot2")
install.packages("GGally")

library(GGally)
library(ggplot2)


