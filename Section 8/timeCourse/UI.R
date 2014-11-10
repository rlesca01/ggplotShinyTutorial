# Simple UI

library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("time course of some indicators"),
    
    sidebarPanel(
      selectInput("indicator","Select an indicator:", choices = nameToCode, selected = "Fertility rate, total (births per woman)"),
      checkboxInput("logScale","Log scale",value = FALSE)      
      ),
    
    mainPanel(
      plotOutput("timeCourse")
      )
    
  )
)