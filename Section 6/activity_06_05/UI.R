# activity_06_05: using a button to avoid frequent updates

library(shiny)


# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Activity_06_05: using a button to avoid frequent updates"),
  
  sidebarPanel(
    helpText("Select two properties of the diamonds."),
    
    selectInput("firstProperty", "Choose the first property:", 
                choices = c("cut","clarity",'color')),
    
    selectInput("secondProperty", "Choose the second property:", 
                choices = c("cut","clarity",'color')),
    
    submitButton("Refresh the graph")
    
  ),
  
  
  mainPanel(
    plotOutput("barPlot")
    )
))
