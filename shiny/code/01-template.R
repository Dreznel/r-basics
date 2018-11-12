library(shiny)

cat("Starting")

ui <- fluidPage()

server <- function(input, output) {}

shinyApp(ui = ui, server = server)

cat("Stopping")
