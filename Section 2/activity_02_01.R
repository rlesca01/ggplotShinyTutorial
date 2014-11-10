# Activity 02_01: drawing lines

library(ggplot2)
library(reshape2) # for melt()

# creating a dataset
X <- as.data.frame(EuStockMarkets)
X$index <- 1:nrow(X)
X <- melt(X, id.vars = "index", variable.name="stock")

# shuffle the rows
X <- X[sample(nrow(X)),]

head(X)

# plotting with colour
ggplot(X) + 
  geom_line( aes( x = index, y = value, color = stock)) +
  ggtitle("geom_lines, using colour")

# plotting without grouping
ggplot(X) + 
  geom_line( aes( x = index, y = value)) +
  ggtitle("geom_lines, without defining groups")

# plotting with grouping
ggplot(X) + 
  geom_line( aes( x = index, y = value, group = stock)) +
  ggtitle("geom_lines, using group ")

# For more information:
# http://docs.ggplot2.org/current/geom_line.html
