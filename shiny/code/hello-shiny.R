library(shiny)

ui <- fluidPage(
  headerPanel("Hello"),
  sidebarPanel("Inputs"),
  mainPanel("Outputs?")
)

server <- function(input, output) {

}

shinyApp(ui = ui, server = server)
