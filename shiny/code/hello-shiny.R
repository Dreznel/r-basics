library(shiny)

ui <- fluidPage(
  headerPanel("Hello"),
  sidebarPanel(
    textInput("id_name", "What is your name?", value="Enamon")
  ),
  mainPanel(textOutput("value"))
)

server <- function(input, output) {
  output$value <- renderText(paste("Hello, ", input$id_name, "!", sep = ""))
}

shinyApp(ui = ui, server = server)
