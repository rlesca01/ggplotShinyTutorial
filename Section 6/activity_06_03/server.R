# activity 06_03: rendering text
# adapted from http://rstudio.github.io/shiny/tutorial

library(shiny)
library(datasets)

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  
  
  # Show which dataset the user selected.
  output$introduction <- renderText({
    
    c("You have selected: ", input$dataset)
    
  })
  
  # Generate a summary of the dataset
  output$summary <- renderPrint({
    dataset <- get(input$dataset)
    summary(dataset)
  })
  
  # Show the first "n" observations
  output$view <- renderTable({
    dataset <- get(input$dataset)
    head(dataset, n = input$obs)
  })
})
