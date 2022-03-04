library(shiny)

shinyUI(fluidPage(
  titlePanel("Belajar Dynamic Chart"),
  sidebarLayout(
    sidebarPanel(
      selectInput('columnName','Pilih columns yang mau ditampilkan:',
                  choices = names(df)[2:length(names(df))]
                  ),
      sliderInput('breakInput','Pilih Bins dr Histogram:',min=2, max=12, value=5, step=2, dragRange = FALSE)
    ),
    mainPanel(
      plotOutput('plot1')
    )
  )
))