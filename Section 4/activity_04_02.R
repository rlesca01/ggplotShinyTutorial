# Activity 04_02: non-linear fits

library(ggplot2)

# polynomial fit
ggplot(ChickWeight, aes(x=Time, y=weight, colour=Diet)) + 
  geom_smooth(alpha=.2, size=1, method="lm", formula = y~poly(x,2)) +
    ggtitle("Using a polynomial")


# spline fit
library(splines)

ggplot(ChickWeight, aes(x=Time, y=weight, colour=Diet)) + 
  geom_smooth(alpha=.2, size=1, method="lm", formula = y ~ ns(x, df = 3)) +
    ggtitle("Using splines")

# more examples of methods
ggplot(mtcars, aes(x = qsec, y = wt)) +
  geom_point() + 
  geom_smooth(se=FALSE, size = 1.2, colour="black",  method = loess) + # loess, the default for small datasets
  geom_smooth(se=FALSE, size = 1.2, colour="red",  method = "lm") +    # linear model, same as formula = y ~ x
  geom_smooth(se=FALSE, size = 1.2, colour="green", method = "lm", formula = y ~ ns(x,3)) + # splines
  geom_smooth(se=FALSE, size = 1.2, colour="blue", method = "lm", formula = y ~ poly(x,2)) + # a polynomial of degree 2
  geom_smooth(se=FALSE, size = 1.2, colour="yellow", method = "lm", formula = y ~ log(x)) # a logarithmic function

# For more information:
# http://docs.ggplot2.org/current/geom_smooth.html