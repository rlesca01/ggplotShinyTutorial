# Activity 01_04: Understanding some subtleties with aesthetics

library(ggplot2)

set.seed(42)
small <- diamonds[sample(nrow(diamonds),1000),] 

head(small)

# example 01
ggplot(small, aes(x = carat, y = price, color = cut)) + geom_point()  + ggtitle('example 01')

# example 02
ggplot(small, aes(x = carat, y = price)) + geom_point(aes(color = cut))  + ggtitle('example 02')

# example 03
ggplot(small, aes(x = carat, y = price)) + geom_point(color = 'blue')  + ggtitle('example 03')

# example 04
ggplot(small, aes(x = carat, y = price)) + geom_point(aes(color = 'blue'))  + ggtitle('example 04')