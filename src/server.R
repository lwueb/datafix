# split out credits and debits

library(openxlsx)
library(tools)
library(dplyr)
library(reshape2)
library(tidyr)
#Sys.setenv(R_ZIPCMD= "C:\\Rtools\\bin\\zip.exe")

process <- function(inputdata,transformation){
    transformationnames <- read.csv("./lookup.csv",header = F,sep = "\t")
    tranformationname   <- transformationnames[transformationnames[1]==transformation][2]
    fixprocedure <- source(paste0("./datafixes/",tranformationname))$value
    return(fixprocedure(inputdata))
  }

shinyServer(function(input, output) {
  datasetInput <- reactive({
      process(read.xlsx(input$dataset$datapath),transformValue())
  })
  
  transformValue <- reactive({
    input$transform
  })
  
  output$downloadData <- downloadHandler(
    filename = function() { paste(input$dataset) },
    content = function(file) {
      write.xlsx(datasetInput(), file, row.names = F)
    }
  )
})