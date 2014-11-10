# Activity 01_02: Understanding the structure of a plots

# load the library
library(ggplot2)

# create a subset of the diamonds dataset
set.seed(42)
small <- diamonds[sample(nrow(diamonds),1000),] 
head(small)

# a plot
ggplot(small) + 
  geom_point(aes(x = carat, y = price, color = cut)) + 
  scale_y_log10() + 
  facet_wrap(~cut) + 
  ggtitle("First example")

