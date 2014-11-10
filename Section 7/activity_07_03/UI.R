# Activity 07_03: uploading file

shinyUI(pageWithSidebar(
  headerPanel("activity 07_03: uploading files"),
  sidebarPanel(
    fileInput('filename', 'Choose a CSV File',
              accept=c('text/csv', 'text/comma-separated-values,text/plain'))
  ),
  mainPanel(
    h3("About the file"),
    tableOutput('aboutFile'),
    h3("The first 10 elements"),
    tableOutput('contents')
  )
))

# for more information:
# http://rstudio.github.io/shiny/tutorial/#uploads