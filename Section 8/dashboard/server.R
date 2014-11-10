# server for full dashboard

library(shiny)
library(ggplot2)

# load the data 
worldBank <- read.csv("../WDIDataDashboard.csv", sep = "\t", header = TRUE)

# the bubble chart function
bubbleChart <- function(X,x,y,radius,colour, alpha = 0.6){
  
  p <- ggplot(X,aes_string(x = x, y = y )) +
    geom_point(aes_string(size = radius, colour = colour), alpha = alpha) +
      geom_point(aes_string(size = radius), colour = 'black', alpha = 1, shape = 1 ) +
        guides(colour = guide_legend(override.aes = list(alpha = 1, size = 5)))
  p  
}

# a function that prints the indicator description 
printDescription <- function(name,description){
  s <- name
  s <- paste0(s, "\n", paste(rep("=",nchar(name)),collapse=''))
  s <- paste0(s, "\n", description)
  cat(s)
}

shinyServer(function(input,output){
  
  # time series of an indicator
  output$timeSeries <-  renderPlot({
    p <- ggplot(
      worldBank,
      aes_string( x = 'Year', y = input$indicator, colour = "Country")) +
        geom_line() + geom_point() +
          ylab(codeToName[input$indicator]) +
            scale_color_brewer(type="qual",palette='Set1') +
              guides(colour = guide_legend(override.aes = list(alpha = 1, size = 5)))
    
    if(input$logScale) p <- p + scale_y_log10()
    print(p)
  }) 
  
  # bubble chart
  output$bubbleChart <- renderPlot({    
    p <- bubbleChart(
      subset(worldBank, Year == input$year),
      x = input$xAxis,
      y = input$yAxis,
      radius = "SP.POP.TOTL",
      colour = "Country") 
    
    p <- p + scale_color_brewer(type="qual",palette='Set1') +
      guides(size = guide_legend(title = codeToName['SP.POP.TOTL'])) +
        xlab(codeToName[input$xAxis]) +
          ylab(codeToName[input$yAxis]) +
            scale_size_area(max_size=14) +         
              ggtitle(paste("Year: ",input$year)) 
    
    print(p)
  })
  
  output$descriptionTab1 <- renderPrint({
    printDescription(codeToName[input$indicator], codeToDescription[input$indicator])
  })
  
  output$descriptionTab2 <- renderPrint({
    printDescription(codeToName[input$xAxis], codeToDescription[input$xAxis])
    cat("\n\n")
    printDescription(codeToName[input$yAxis], codeToDescription[input$yAxis])    
  })
  
})