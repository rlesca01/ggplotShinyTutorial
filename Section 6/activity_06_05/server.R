# activity_06_05: using a button to avoid frequent updates

library(shiny)
library(ggplot2)

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  
  # bar plot generated  with ggplot
  output$barPlot <- renderPlot({
    p <- ggplot(diamonds) + 
          geom_bar( aes_string( x = input$firstProperty, fill = input$secondProperty), 
                                 position = "dodge") +
            scale_fill_brewer(type='qual', palette=2) +
             ggtitle("Distribution of the diamonds")
    print(p) # as usual, don't forget to print the ggplot2 object to actually produce the plot.
    })
  
})

