shinyUI(fluidPage(
  div(align="center", h1("Datafix")),
  div(h1()),
  div(align="center",
    selectInput("transform", "Choose a datafix:", 
                choices = c("Grade Summaries")),
    fileInput("dataset", "Choose a dataset:" 
                ),
    downloadButton('downloadData', 'Download')
  ),
  div(h1()),
  div(align="center",h6("For assistance, please contact:"),a(href="mailto:example@gmail.com","example@gmail.com"))
))

