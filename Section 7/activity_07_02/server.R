# activity 07_02: understanding scope
library(shiny)

# outside shinyServer(): shared by all users
randomValue1 <- paste(sample(c(0:9,LETTERS),10),sep='',collapse='')

shinyServer(function(input,output){

  # within shinyServer() : specific to each user  
  randomValue2 <- paste(sample(c(0:9,LETTERS),5),sep='',collapse='')
  
  
  output$sampleSummary <- renderPrint({
    
    distribution <- switch(input$distributionName,
                           Normal = rnorm,
                           Uniform = runif,
                           Cauchy = rcauchy)
    
    cat("Random value 1, set outside shinyServer():", randomValue1, "\n")
    
    cat("Random value 2, set inside shinyServer():", randomValue2, "\n")
    
    cat("Value of aGlobalVariable:", aGlobalVariable, "\n")
    

    cat("\nSample summary:\n-----------\n")
    
    summary(distribution(1000))
  })
  

})

# for more information:
# http://rstudio.github.io/shiny/tutorial/#scoping