# Activity 03_02: using size and colour

library(ggplot2)
?mpg

# simple plot
ggplot(mpg, aes( x = cty, y = hwy)) + 
  geom_point() +
    ggtitle("city miles per gallon vs highway miles per gallon")

# adding engine displacement and manufacturer to the graph
ggplot(mpg, aes( x = cty, y = hwy)) + 
  geom_point( aes( size = displ, colour = manufacturer)) +
    ggtitle("city miles per gallon vs  highway miles per gallon\nwith extra information")

# For more information:
# http://docs.ggplot2.org/current/geom_point.html 