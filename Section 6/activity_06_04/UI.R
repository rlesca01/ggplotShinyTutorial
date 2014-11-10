# activity_06_04: understanding reactivity

library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Activity_06_04: understanding reactive programming"),
  
  sidebarPanel(
    textInput("someText", "Enter some text here:", "some text"),
    
    selectInput("dataset", "Choose a dataset:", 
                choices = c("rock", "pressure", "cars"))
    ),
  
  
  mainPanel(
    verbatimTextOutput("textToShow"),
    verbatimTextOutput("dataSummary")
  )
))
