# activity 07_04: downloading data

library("shiny")

shinyUI(pageWithSidebar(
  headerPanel("activity 07_04: downloading data"),
  
  sidebarPanel(
    sliderInput("nObservation", "Number of observations:", min = 50, max= 1000, value = 500, step = 10),
    br(),
    downloadButton("downloadCSV", "Download as a CSV file"),
    downloadButton("downloadPNG", "Download as a PNG file")
    ),
  
  mainPanel(
    verbatimTextOutput("someData"),
    plotOutput("aPlot")
    )
  
  )
  
  )

# for more information:
# http://rstudio.github.io/shiny/tutorial/#downloads