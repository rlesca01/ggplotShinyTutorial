library(shiny)
library(ggplot2)

# load the data 
# data from the world bank, extracted with the WDI package
worldBank <- read.csv("../WDIDataDashboard.csv", sep = "\t", header = TRUE)


shinyServer(function(input, output){

    output$timeSeries <- renderPlot({
      p <- ggplot(
              worldBank,
              aes_string( x = 'Year', y = input$indicator, colour = "Country")) +
        geom_line() + geom_point() +
          ylab(codeToName[input$indicator]) + 
            scale_color_brewer(type="qual",palette='Set1')
      
      if(input$logScale) p <- p + scale_y_log10()
      print(p)
    })
  
}
)