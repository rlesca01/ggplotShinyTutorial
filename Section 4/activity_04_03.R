# Activity 04_03: using stat_function

library(ggplot2)

# checking the empirical distribution against the theoretical distribution

ggplot(data.frame( value = rnorm(1E3))) +
  geom_density(aes(x=value)) +
    stat_function(fun = dnorm, colour='red') + # theory
      ggtitle("Normally distributed data")

# passing parameters to the plotted function
# simple application of the central limit theorem

# compute 1000 averages of 10 uniformly distributed values between 0 and 1.
# According to the central limit theorem, they should be normally distributed with 
# . mean = mean(unif[0,1])=0.5 
# and 
# . standard deviation sd = sd(unif[0,1])/sqrt(10) =  sqrt(1/12)/sqrt(10) = 0.09128709

someAverages <- data.frame( averages = replicate(1E3, mean(runif(10))))

# predicted mean and standard deviation from the central limit theorem.
predictedMean <- 0.5
predictedStandardDeviation <- sqrt(1/12)/sqrt(10)
  
ggplot(someAverages) +
  geom_density(aes( x = averages)) +
    stat_function(
      fun = dnorm, 
      colour='red', 
      args = list( mean = predictedMean, sd = predictedStandardDeviation )) +
  ggtitle("The central limit theorem holds.")

# For more information:
# http://docs.ggplot2.org/current/stat_function.html