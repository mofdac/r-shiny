library(shiny)

shinyServer(function(input,output){
  output$namaOutput <- renderText({
    paste(input$namaInput)
  })
  
  output$kotaOutput <- renderText({
    paste(input$kotaInput)
  })
})