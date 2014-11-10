# activity 06_03: rendering text
# adapted from http://rstudio.github.io/shiny/tutorial

library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("activity 06_03: rendering text"),
  
  # Sidebar with controls to select a dataset and specify the number
  # of observations to view
  sidebarPanel(
    selectInput("dataset", "Choose a dataset:", 
                choices = c("rock", "pressure", "cars")),
    
    numericInput("obs", "Number of observations to view:", 10)
  ),
  
  # Show a summary of the dataset and an HTML table with the requested
  # number of observations
  mainPanel(
    
    textOutput("introduction"),
    
    verbatimTextOutput("summary"),
    
    tableOutput("view")
  )
))
