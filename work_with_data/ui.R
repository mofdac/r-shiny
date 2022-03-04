library(shiny)
shinyUI(fluidPage(
  titlePanel("Belajar Load Data"),
  sidebarLayout(
    sidebarPanel(
      selectInput('select1','Pilih', choices = c("All", rownames(USArrests))),
      sliderInput('sliderMurder','Murder Number:',
                  min=0,max=max(df$Murder),value=c(0,0))
    ),
    mainPanel(
      tableOutput('table1')
    )
  )
))