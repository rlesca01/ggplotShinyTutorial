# Activity 02_04: Understanding Histograms and density plots

library(ggplot2)
head(diamonds)

# Example 01
# distribution of price.
ggplot(diamonds) + 
  geom_histogram( aes(x = price)) + 
    ggtitle("Histogram of price (counts)")

# Example 02
# changing the binwidth
ggplot(diamonds) + 
  geom_histogram( aes(x = price,fill=cut), binwidth = 100) + 
    ggtitle("Histogram of price (counts), smaller binwidths")

# Example 03
# density of price
ggplot(diamonds) + 
  geom_density( aes(x = price, fill = cut)) + 
    ggtitle("Density plot of price, by cut (normalised and smoothed out)")

# Example 04
# density of price, by cut
ggplot(diamonds) + 
  geom_density( aes(x = price, fill = cut), alpha=0.3) + 
    ggtitle("Density plot of price, by cut (normalised and smoothed out and with transparency)")

# for more information:
# http://docs.ggplot2.org/current/geom_histogram.html
# http://docs.ggplot2.org/current/geom_density.html