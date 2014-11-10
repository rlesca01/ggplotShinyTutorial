# Activity 04_04: big data with bigvis:  binning and condensing

# install the package bigvis
# *** you only need to do this once.***
# install.packages("devtools")
# devtools::install_github("bigvis")

# loading the libraries
library(ggplot2)
library(bigvis)

# what is the data about:

?bigvis::movies

# binning and condensing

myMovies <- subset(movies,length<300) # manually get rid of very long movies.

myMoviesSummarised <- with(myMovies,  condense(bin(length), bin(rating)))

ggplot( data = myMoviesSummarised ) + 
  geom_tile(aes( x = length, y = rating, fill = .count)) +
    ggtitle("Distribution of 130'000 movies along length and ratings")


