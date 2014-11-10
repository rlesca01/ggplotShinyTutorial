# Activity 01_01: setting up and testing ggplot2

# install.packages('ggplot2')

library(ggplot2)
ggplot(cars) + geom_point(aes(x = speed, y = dist))

# for more examples, run this:
example(geom_point)
