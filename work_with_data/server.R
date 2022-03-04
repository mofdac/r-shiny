data("USArrests")
df <- USArrests
df <- cbind(State = rownames(df), df)
shinyServer(function(input,output){
  output$table1 <- renderTable({
    if (input$select1 != "All"){
      df[rownames(df) == input$select1,]
    } else {
      df[df$Murder < input$sliderMurder[2] & df$Murder > input$sliderMurder[1],]
    }
  })
})