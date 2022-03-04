#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Belajar Shiny"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            # verbatimTextOutput("text"),
            textInput("userInput",
                        "Siapa Nama Kamu?"
                      )
        ),

        # Show a plot of the generated distribution
        mainPanel(
            textOutput("userText")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    # output$text <- renderText({
    #     paste("Sharing your work / portfolio", 
    #           "Dynamic presentation",
    #           "Deploy your prediction model",
    #           sep = "\n")
    # })
    output$userText <- renderText({
        paste("Selamat Datang,", input$userInput)
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
