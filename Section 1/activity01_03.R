# Activity 01_03: mapping data to graphical elements with aesthetics

library(ggplot2)

set.seed(42)
small <- diamonds[sample(nrow(diamonds),1000),] 

head(small)

# example 01
ggplot(small) + geom_point(aes(x = carat, y = price)) + ggtitle('example 01')

# example 02
ggplot(small) + geom_point(aes(x = carat, y = price, color = cut))  + ggtitle('example 02')


