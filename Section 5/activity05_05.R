# Activity 05_05: Customizing the legend and other non-data elements 

library(ggplot2)

# default
p <- ggplot(head(mpg,50)) + 
  geom_point(aes(x = cty, y = hwy,color = trans, shape = class), size = 5)
p + ggtitle('Default legends')


# Axis labels
p + xlab('city miles per gallon')  + ylab('highway miles per gallon') +
  ggtitle('better axis labels')

# Legends
p + 
  scale_shape_discrete(guide = guide_legend("Class")) + 
    scale_color_discrete(guide = guide_legend("Transmission")) +
      ggtitle("Custom legends using scales' parameters.")

p + 
  guides(colour = guide_legend("Transmission"), shape = guide_legend("Class")) +
    ggtitle("Custom legends using guides parameters")

# Swapping coordinates
# default x vs y plot
p <- ggplot(mpg, aes(x = manufacturer)) + geom_histogram() + ylab("Number") + xlab('') 

# flipping axes
p + coord_flip() + ggtitle('Flipped axes')

# re-ordering factors
# see Video 05_02 for a more detailed explanation
mpg$manufacturer2 <- factor(mpg$manufacturer,rev(unique(mpg$manufacturer)))
ggplot(mpg) + 
  geom_histogram(aes( x = manufacturer2)) + 
    ylab("Number") + 
      xlab('') + 
        coord_flip() + ggtitle('flipped axes and reordered factors')

# Going further:
# http://docs.ggplot2.org/current/update_labels.html
# http://docs.ggplot2.org/current/guides.html
# http://docs.ggplot2.org/current/guide_legend.html
# and themes at http://docs.ggplot2.org/current/
# http://docs.ggplot2.org/current/coord_flip.html