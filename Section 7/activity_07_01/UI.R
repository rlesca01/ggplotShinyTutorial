# activity_07_01: using tabsets

library(shiny)


# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Activity_07_01: using tabsets"),
  
  sidebarPanel(
    
    selectInput("diamondProperty", "Choose a property:", 
                choices = c("cut","clarity",'color'))    
  ),
  
  
  mainPanel(
    tabsetPanel(
      tabPanel("Distribution", plotOutput("priceDistribution")),
      tabPanel("Averages", tableOutput("averagesTable"))
      )
  )
))

# for more information:
# http://rstudio.github.io/shiny/tutorial/#tabsets