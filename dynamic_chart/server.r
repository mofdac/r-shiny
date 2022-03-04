library(shiny)

data("USArrests")
df <- cbind(State = rownames(USArrests), USArrests)

shinyServer(function(input,output){
  output$plot1 <- renderPlot(
    hist(df[,input$columnName],
         main=paste("Histogram for", input$columnName),
         breaks = input$breakInput
    )
  )
})