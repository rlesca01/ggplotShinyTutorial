# Activity 07_03: uploading file

shinyServer(function(input, output) {
  
  
  # Once a file has been downloaded, input$filename is a data frame with some information about it.
  theFile <- reactive({
    downloadedFile <- input$filename
    
    if (is.null(downloadedFile)) return(NULL)
    
    downloadedFile
  })
  
  # Show information about the file, stored in its properties: name, size, type, and path.
  output$aboutFile <- renderTable({
    theFile()  
  })
  
  
  # parse the csv file and show the first 10 rows.
  output$contents <- renderTable({
    myFile <- theFile()
    
    if (is.null(myFile)) return(NULL)
  
    theData <- read.delim(myFile$datapath, quote='')
    head(theData,10)
  })
})

# for more information:
# http://rstudio.github.io/shiny/tutorial/#uploads