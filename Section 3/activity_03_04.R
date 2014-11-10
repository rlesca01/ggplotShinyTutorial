# Activity 03_04: Faceting with 1 variable

library(ggplot2)

# one single plot
ggplot(diamonds) + 
  geom_histogram(aes(x=price, fill=cut)) +
    ggtitle("One single plot")

# one plot per cut
ggplot(diamonds) + 
  geom_histogram(aes(x=price)) + 
    facet_wrap( ~ cut) +
      ggtitle("One plot per cut")

# For more information:
# http://docs.ggplot2.org/current/facet_wrap.html 
