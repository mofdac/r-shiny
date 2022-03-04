library(shiny)

shinyUI(fluidPage(
  titlePanel("Coba Pisah File"),
  sidebarLayout(
    sidebarPanel(
      textInput('namaInput','Siapa Namamu?'),
      selectInput('kotaInput', 'Dimana kamu tinggal?', 
                  choices = c('Jakarta','Bogor','Bekasi','Tangerang','Depok')
                  )
    ),
    mainPanel(
      paste("Selamat Datang,"),
      textOutput('namaOutput'),
      textOutput('kotaOutput')
    )
  )
))