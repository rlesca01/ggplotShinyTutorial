# Activity 05_01: controlling axes and limits

library(ggplot2)

# investigating a log-log relationship between diamonds' price and carat
ggplot(diamonds) + 
  geom_point(aes( x = log10(carat), y = log10(price))) + 
    ggtitle('Manipulating data')

ggplot(diamonds) + 
  geom_point(aes( x = carat, y = price)) + 
    scale_x_log10() + scale_y_log10() + 
      ggtitle("Manipulating axes' scales")

# Changing the limits
p <-  ggplot(movies, aes( x = length)) + geom_histogram()
p + ggtitle('Showing all movies')

p + xlim(c(0,180)) + ggtitle('Showing only movies of duration between 0 and 3 hours.')

# Going further:
# http://docs.ggplot2.org/current/scale_continuous.html
# http://docs.ggplot2.org/current/xylim.html
# http://docs.ggplot2.org/current/expand_limits.html