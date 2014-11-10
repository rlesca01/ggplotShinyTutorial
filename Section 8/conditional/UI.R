library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("Testing conditional panels"),
    
    sidebarPanel(
      helpText("this is common to all panels."),
      selectInput("someChoice", "Please choose a value:",choices = c("a","b","c")),
      
      conditionalPanel(
        condition = "input.someChoice == 'c'",
        br(),
        h3('conditional panel #1'),
        helpText("This only appears when the user selected the value 'c'."),
        textInput("someText","String#1:", value = "Hello!")
        ), 
      
      conditionalPanel(
        condition = "input.theTabs == 'secondTab' ",
        br(),
        h3('conditional panel #2'),
        helpText("This only appears when the second panel is active.")  ,      
        textInput("someText2","String#2:", value = "hi!")
      )
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel( "First Tab", verbatimTextOutput("firstTabText"), value = 'firstTab'),
        tabPanel( "Second Tab", verbatimTextOutput("secondTabText"), value = 'secondTab'),
        id = "theTabs"
      )
    )
    )
  
  )