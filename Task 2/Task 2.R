#EDA USING DIAMOND DATASET

library(ggplot2)
library(dplyr)
0#Diamonds dataset summart 
summary(diamonds)

#barplot 
ggplot(diamonds) + geom_bar(aes(x = cut))

#Histogram of diamond carats  
ggplot(diamonds) + geom_histogram(aes(x = carat), binwidth = 0.5) 

#Data cleaning 
small <- diamonds %>% filter(carat < 3)

#Histogram of filtered diamonds 
ggplot(small, aes(x = carat)) + geom_histogram(binwidth = 0.1)

#smaller binwidth histogram 
ggplot(small, aes(x = carat)) + geom_histogram(binwidth = 0.01)

#frequency  polygon plot 
ggplot(diamonds, aes(x = price)) + geom_freqpoly(aes(color = cut), binwidth = 500)

#boxplot od diamond prices
ggplot(diamonds, aes(x = cut, y = price)) + geom_boxplot()

#Heatmap 
diamonds %>% count(color, cut) %>% ggplot(aes(x = color, y = cut)) + geom_tile(aes(fill = n))

#Scatter plot 
ggplot(diamonds, aes(x =   carat, y = price)) + geom_point(alpha = 0.01)

#Hex plot 
ggplot(diamonds, aes(x =  carat, y = price)) + geom_hex()
ye
