# Activity 02_03: Plotting bar charts

library(ggplot2)
head(diamonds)

# Example 01
# Counting the number of diamonds for each type of cut
ggplot(diamonds) + geom_bar( aes(x = cut)) + ggtitle("#diamonds per cut")

# Example 02
# Counting the number of diamonds for each type of cut and broken down by clarity
ggplot(diamonds) + 
  geom_bar( aes(x = cut, fill = clarity)) + 
    ggtitle("#diamonds per cut, broken down by clarity")

# Example 03
# Counting the number of diamonds for each type of cut and broken down by clarity, with bars side by side for easier comparison.
ggplot(diamonds) + 
  geom_bar( aes(x = cut, fill = clarity), position = "dodge") + 
    ggtitle("#diamonds per cut, broken down by clarity\n(bars side by side)")

# for more information:
# http://docs.ggplot2.org/current/geom_bar.html