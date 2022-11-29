library(dplyr)
library(ggplot2)

data <- read.csv("data/datos21.txt", header = FALSE, sep = "\t", col.names = c('weight', 'group'))

summary(filter(data, group == "grupo1") %>% select(weight) %>% unlist)
summary(filter(data, group == "grupo2") %>% select(weight) %>% unlist)


ggplot(
  data %>% filter(group == "grupo1"), 
  aes(x=weight)
) + geom_histogram(bins=16, colour = 2, fill = "white")

ggplot(
  data %>% filter(group == "grupo2"), 
  aes(x=weight)
) + geom_histogram(bins=16, colour = 3, fill = "white")

