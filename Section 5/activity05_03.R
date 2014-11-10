# Activity 05_03: Customizing the color palette for categorical data

library(ggplot2)

# The default colour scheme picks evenly spaced hues around the hue-chroma-luminance colour wheel.
p <- ggplot(diamonds) + geom_histogram(aes(x = cut,fill = clarity))
p + ggtitle("default palette")

# user-defined palette
# note the syntax: scale_xxx_manual. xxx is colour, fill
p + scale_fill_manual(
  values = c( 
      I1   = "red", 
      SI2  = "red", 
      SI1  = "blue", 
      VS2  = "blue", 
      VS1  = "green", 
      VVS2 = "green", 
      VVS1 = "black", 
      IF   = "#FEAC12")) +
    ggtitle("User defined palette")

# using pre-defined 'brewer' palettes
# designed for colouring geographical maps. A good selection of carefully designed palettes. 
# The website also tells you whether it is suitable a colour-blind audience.

p + scale_fill_brewer(type='qual',palette="Set1") + 
  ggtitle("qualitative, set 1 from colorbrewer2.org")


# Going further:
# http://colorbrewer2.org/
# all the scale_colour_xxxx functions at http://docs.ggplot2.org/current/