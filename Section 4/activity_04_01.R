# activity 04_01:  linear and polynomial fits

library(ggplot2)

# plot all data points, with some jittering
p <- ggplot(ChickWeight, aes(x = Time, y = weight, colour = Diet)) + geom_point()


# Connected lines
p + geom_line(aes(group = Chick)) + ggtitle("connected lines")

# Default smoothing (loess) with small dataset
p + geom_smooth(alpha = 0.2, size = 1)  + ggtitle("Default smoothing (loess)")

# Linear model
p + geom_smooth(alpha = 0.2, size = 1, method="lm") + ggtitle("Smoothing with 'lm'")

# For more information:
# http://docs.ggplot2.org/current/geom_smooth.html
