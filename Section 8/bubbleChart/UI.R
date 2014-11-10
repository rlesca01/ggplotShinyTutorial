# UI for the bubbleChart

library(shiny)


shinyUI(
  pageWithSidebar(
    headerPanel("A interactive bubble chart"),
    
    sidebarPanel(
      h1("Interactive bubble chart"),
      sliderInput(
        "year", "Select a year:",
        min = 1960, max = 2010, 
        step = 1, value = 2000, format = "####",
        animate=TRUE),
      selectInput("xAxis","Select the first variable:", choices = nameToCode, selected = "Fertility rate, total (births per woman)"),
      selectInput("yAxis","Select the second variable:", choices = nameToCode, selected = "Life expectancy at birth, total (years)")
      ),
    
    mainPanel(
      plotOutput("bubbleChart")
      )
    )
  
  )