# Activity 03_03: minimise overplotting with jitter

library(ggplot2)
nrow(mpg)

# over plotting
ggplot(mpg, aes( x = cty, y = hwy)) + 
  geom_point( aes(colour = manufacturer), size = 3) +
    ggtitle("No jitter: some points are covering others")

# using jitter to get a better view
ggplot(mpg, aes( x = cty, y = hwy)) + 
  geom_point( aes(colour = manufacturer), position=position_jitter(width=0.1), size = 3) +
    ggtitle("After jittering. The graphs conveys the actual number of points better.")

# with some transparency
ggplot(mpg, aes( x = cty, y = hwy)) + 
  geom_point( aes(colour = manufacturer), position=position_jitter(width=0.1), size = 3, alpha = 0.7) +
    ggtitle("After jittering. The graphs conveys the actual number of points better.\n with some transparency")

# For more information:
# http://docs.ggplot2.org/current/geom_jitter.html 