# Activity 04_05: big data with bigvis: smoothing and peeling

library(ggplot2)
library(bigvis)

# bin and condense the whole dataset
myMoviesSummarised <- with(movies,  condense(bin(length), bin(rating)))

# plotting the whole dataset
ggplot( data = myMoviesSummarised ) + 
  geom_tile(aes( x = length, y = rating, fill = .count)) +
    ggtitle("Whole data set summarised")

# peeling removes outliers
myMoviesSummarised <- peel(myMoviesSummarised)

ggplot( data = myMoviesSummarised ) + 
  geom_tile(aes( x = length, y = rating, fill = .count)) +
    ggtitle("Whole data set summarised and peeled")

# smoothing removes outliers
myMoviesSummarised <- smooth(myMoviesSummarised, h = c(10,1))

ggplot( data = myMoviesSummarised ) + 
  geom_tile(aes( x = length, y = rating, fill = .count)) +
  ggtitle("Whole data set summarised, peeled and smoothed")
