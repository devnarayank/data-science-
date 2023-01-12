library(tidyverse)
data("diamonds")
head(diamonds)
summary(diamonds)
dim(diamonds)

ggplot(data=diamonds, aes(x=price)) +
  geom_histogram(fill="steelblue", color="black") +
  ggtitle("Histogram of Price Values")

ggplot(data=diamonds, aes(x=carat, y=price, color=cut)) + 
  geom_point()

ggplot(data=diamonds, aes(x=cut, y=price)) + 
  geom_boxplot(fill="steelblue")

round(cor(diamonds[c('carat', 'depth', 'table', 'price', 'x', 'y', 'z')]), 2)

sum(is.na(diamonds$carat))



          