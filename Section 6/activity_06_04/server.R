# activity_06_04: understanding reactivity

library(shiny)
library(datasets)

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
    
  output$textToShow <- renderText({
    input$someText
  })
  
  output$dataSummary <- renderPrint({
    # print a random value every time this expression is calculated.
    cat("Here is a random value:",sample(1000,1),"\n")
    
    # print the summary of the dataset selected by the user.
    dataset <- get(myReactiveExpression()) # get("a") returns the variable a 
    summary(dataset)
  })

  # you can also define your own reactive expression with reactive()
  myReactiveExpression <-  reactive({
    input$dataset  
  })
  
  # but defining it as reactive is not strictly necessary:
  # this works as well, but is not as efficient: the function doesn't cache its latest calculated value.
#   myReactiveExpression <-  function(){
#     get(input$dataset)
#   }
  
  
})

# For more information:
# http://rstudio.github.io/shiny/tutorial/#reactivity
# http://rstudio.github.io/shiny/tutorial/#reactivity-overview
# http://rstudio.github.io/shiny/tutorial/#execution-scheduling
# http://rstudio.github.io/shiny/tutorial/#isolation
