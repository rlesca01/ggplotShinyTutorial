# server side
library(shiny)
library(ggplot2)

bubbleChart <- function(X,x,y,radius,colour, alpha = 0.6){
  
  p <- ggplot(X,aes_string(x = x, y = y )) + 
    geom_point(aes_string(size = radius, colour = colour), alpha = alpha) +
      geom_point(aes_string(size = radius), colour = 'black', alpha = 1, shape = 1 ) +
        guides(colour = guide_legend(override.aes = list(alpha = 1, size = 5)))
  p  
}

worldBank <- read.csv("../WDIDataDashboard.csv",sep="\t",header=TRUE)

shinyServer(function(input, output){
  
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
  
  
}
  
  
  )