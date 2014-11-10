# activity 07_04: downloading data

library("shiny")
library("ggplot2")

shinyServer(function(input,output){
  
  randomSample <- reactive({ 
      set.seed(42)
      data.frame(value = rnorm(input$nObservation)) 
    })
    
  makeGgplotObject <- reactive({ # used by output$aPlot and output$downloadPNG
        ggplot(randomSample()) + geom_density(aes(x = value))
  })
  
  output$someData <- renderPrint({
    summary(randomSample())
  })
  
  output$aPlot <- renderPlot({
    print(makeGgplotObject())
  })
  
  output$downloadCSV <- downloadHandler(
    filename = "aRandomSample.csv",
    content = function(file) { write.table(randomSample(), file, sep="\n", row.name=FALSE) }
  )

  output$downloadPNG <- downloadHandler(
    filename = "aRandomSample.png",
    content = function(file) { # work around as the downloadHandler doesn't work with ggsave yet. (shiny 0.7)
      png(file)
      print(makeGgplotObject())
      dev.off()
    }
  )
  
  
})

# for more information:
# http://rstudio.github.io/shiny/tutorial/#downloads