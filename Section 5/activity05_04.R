# Activity 05_04: Customizing the color palette for continuous data

library(ggplot2)

# default
p <- ggplot(diamonds) + 
  geom_point(aes(x = carat,y = depth, color = price)) + 
    scale_x_log10()
p + ggtitle("Default palette")

# gradient with limits and custom colors
p + scale_color_gradient(limits = c(5000,10000), low = 'yellow', high = 'red') + 
  ggtitle("Gradient with custom gradient")

# Removing the data points not belonging to the limits
p + scale_color_gradient(
      limits = c(5000,10000), low = 'yellow', high = 'red', na.value = NA) + 
  ggtitle("Gradient with custom gradient\nwithout unneccessary datapoints")

# multiple gradients
# Use the average price as the midpoint. The price is also log-transformed with 'trans'.
p + scale_color_gradient2(midpoint = mean(log10(diamonds$price)), trans = 'log10') +
  ggtitle("Two gradients using the average price as midpoint")

# Going further:
# http://docs.ggplot2.org/current/scale_gradient.html