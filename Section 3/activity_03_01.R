# Activity 03_01: using group and colour

library(ggplot2)

?ChickWeight

# How many chicks per diet?
aggregate(Chick ~ Diet, data = ChickWeight, FUN = function(x) length(unique(x)))

# colouring by diet, grouping by individual chick
ggplot(ChickWeight) + 
  geom_line(aes( x = Time, y = weight, colour = Diet, group = Chick)) + 
    ggtitle("Weight versus age of chicks on different diets")


# For more information:
# http://docs.ggplot2.org/current/geom_point.html 