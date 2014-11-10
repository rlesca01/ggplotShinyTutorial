library(shiny)
library(ggplot2)

# load the data 
worldBank <- read.csv("../WDIDataDashboard.csv", sep = "\t", header = TRUE)


shinyServer(function(input, output){

    output$timeCourse <- renderPlot({
      p <- ggplot(
              worldBank,
              aes_string( x = 'Year', y = input$indicator, colour = "Country"))
      p <- p + geom_line() + geom_point()
      p <- p + ylab(codeToName[input$indicator])
      p <- p + scale_color_brewer(type="qual",palette='Set1')
      
      if(input$logScale) p <- p + scale_y_log10()
      print(p)
    })
  
}
)