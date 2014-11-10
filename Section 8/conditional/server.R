library(shiny)

shinyServer(function(input,output){
  
  output$firstTabText <- renderPrint({
    cat("content for the first tab\n")
    cat("-------------------------\n")
    
    cat("\nYou've chosen:",input$someChoice)
    cat("\nAnd string#1 =  '",input$someText,"' , from conditional panel #1",sep='')
    cat("\nAnd string#2 =  '",input$someText2,"' , from conditional panel #2",sep='')
    
  })
  
  output$secondTabText <- renderPrint({
    cat("Content for the second tab\n")

    cat("\nYou've chosen:",input$someChoice)
    cat("\nAnd string#1 =  '",input$someText,"' , from conditional panel #1",sep='')
    cat("\nAnd string#2 =  '",input$someText2,"' , from conditional panel #2",sep='')
    
  })
  
})