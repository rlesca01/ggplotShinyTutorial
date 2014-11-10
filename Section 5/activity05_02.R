# Activity 05_02: Ordering factors

library(ggplot2)

# Method of travel to work in England and Wales, 2011
# 2011 Census - Office for National Statistics
commute <- data.frame(
  categories = c("other","car","public transport","cycle/walk","work from home"),
  proportion = c(1,64,16,14,5)
  )
head(commute)

# Default
ggplot(commute) + 
  geom_bar(aes(x=categories,y=proportion),stat="identity") + 
  ggtitle('default order')

# User-defined order: moving 'other' to the right
commute$userDefined <- factor(
    commute$categories,
    c("car","public transport","cycle/walk","work from home","other"))

ggplot(commute) + 
  geom_bar(aes(x=userDefined,y=proportion),stat="identity") + 
    ggtitle('user-defined order')

# categories as they appear in the data
commute$originalOrder <- factor(
          commute$categories,
          as.character(commute$categories))

ggplot(commute) + 
  geom_bar(aes(x=originalOrder,y=proportion), stat="identity") + 
    ggtitle('original order')

# Order by values
ggplot(commute) + 
  geom_bar(aes(x=reorder(categories, -proportion), y=proportion),stat="identity") + 
    ggtitle('order by value')

# Going further:
# https://kohske.wordpress.com/2010/12/29/faq-how-to-order-the-factor-variables-in-ggplot2/
