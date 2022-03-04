library(shiny)
load("model.rda")
shinyServer(function(input,output){
  prediction <- reactive({
    predict(multinom_model, 
            newdata = data.frame(
                      Sepal.Length = c(as.numeric(input$SLInput)),
                      Sepal.Width = c(as.numeric(input$SWInput)),
                      Petal.Length = c(as.numeric(input$PLInput)),
                      Petal.Width = c(as.numeric(input$PWInput))
                    ), "probs"
            )
  })
  # output$predOutput <- renderText(
  #   levels(iris$Species)[prediction()]
  # )
  output$predOutput <- renderPlot(
    barplot(prediction(),las=2)
  )
})