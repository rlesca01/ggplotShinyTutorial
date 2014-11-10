# activity 07_02: understanding scope

library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Activity_07_02: understanding scope"),
  
  sidebarPanel(
    radioButtons("distributionName", "Distribution type:",
                 c("Normal", "Uniform", "Cauchy")),
    br() ,
    helpText(paste("Value of aGlobalVariable: ",aGlobalVariable))
  ),
  
  
  mainPanel(
    verbatimTextOutput("sampleSummary")
    )
  ))
