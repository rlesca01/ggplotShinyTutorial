# Activity 02_05: Using Boxplots 

library(ggplot2)
head(diamonds)
summary(diamonds)

# Example 01
# box plot of a diamond's price given its cut
p <- ggplot(diamonds, aes( x = cut, y = price))
p + geom_boxplot() + ggtitle("box plot of diamond prices given their cut")

# Example 02
# boxplot of a diamond's price given its cut
p + geom_boxplot(notch = TRUE) + ggtitle("boxplot of diamond prices given their cut, with notch")

# Example 03
# boxplot with notch, 
p + geom_boxplot(aes(fill = clarity), notch=TRUE) + ggtitle("box plot of diamond prices given their cut and their clarity")

# Example 04
# boxplot of a diamond's price given its cut and the raw data
ggplot(diamonds, aes( x = cut, y = price)) + 
  geom_boxplot() + ggtitle("Boxplot of a diamond's price given its cut\n with the raw data") +
    geom_point( colour='blue', alpha = 0.05, position = position_jitter(w=0.15))

# for more information:
# http://docs.ggplot2.org/current/geom_boxplot.html
# http://docs.ggplot2.org/current/geom_violin.html