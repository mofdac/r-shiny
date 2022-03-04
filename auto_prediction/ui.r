library(shiny)

shinyUI(fluidPage(
  titlePanel("Belajar Deploy Model Prediksi"),
  tabsetPanel(
    tabPanel("User Input",
      sidebarLayout(
        sidebarPanel(
          paste("Dengan input disamping, hasil prediksi adalah:"),
          # strong(textOutput('predOutput'))
          plotOutput("predOutput")
        ),
        mainPanel(
          # textInput('SLInput','Masukan angka sepal length:',value=0),
          # textInput('SWInput','Masukan angka sepal width:',value=0),
          # textInput('PLInput','Masukan angka petal length:',value=0),
          # textInput('PWInput','Masukan angka petal width:',value=0)
          
          flowLayout(
              sliderInput('SLInput','Pilih angka sepal length:',
                          min=0, max=max(iris$Sepal.Length),value=0
                          ),
              sliderInput('SWInput','Masukan angka sepal width:',
                          min=0, max=max(iris$Sepal.Width),value=0
              ),
              sliderInput('PLInput','Masukan angka petal length:',
                          min=0, max=max(iris$Petal.Length),value=0
              ),
              sliderInput('PWInput','Masukan angka petal width:',
                          min=0, max=max(iris$Petal.Width),value=0
              )
          )
        )
      )
    ),
    tabPanel("File Upload",
      sidebarLayout(
        sidebarPanel(
          paste('tab2')
        ),
        mainPanel(
          paste('tab2')
        )
      )
    )
  )
))