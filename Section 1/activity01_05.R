# Activity 01_05: using ggplot in scripts

# load library and prepare data
library(ggplot2)

set.seed(42)
small <- diamonds[sample(nrow(diamonds),1000),] 

head(small)

# example 01
p <- ggplot(small, aes(x = carat, y = price))
print(p + geom_point())
p + geom_point(aes(color = cut))