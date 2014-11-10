# Activity 03_05 : Faceting with 2 variables

library(ggplot2)

# distribution of diamond price given color and cut.
# note the the use of scale_x_log10 instead of using log10(price). The x-axis is easier to read on the log scale.
ggplot(diamonds) + 
  geom_histogram(aes(x=price)) + 
  scale_x_log10() +
    facet_wrap( color ~ cut) +
      ggtitle("with facet_wrap")

# with facet_grid
ggplot(diamonds) + 
  geom_histogram(aes(x=price)) + 
    scale_x_log10() +
      facet_grid( color ~ cut) +
        ggtitle("with facet_grid")

# with extra margin
ggplot(diamonds) + 
  geom_histogram(aes(x=price)) + 
  scale_x_log10() +
  facet_grid( color ~ cut, margins = TRUE) +
  ggtitle("with facet_grid")


# with facet_grid and 3 variables: color, cut and clarity
ggplot(diamonds) + 
  geom_histogram(aes(x=price)) + 
    scale_x_log10() +
      facet_grid( color ~ cut + clarity) +
        ggtitle("with facet_grid, 3 variables")

?facet_grid

# For more information:
# http://docs.ggplot2.org/current/facet_grid.html 
