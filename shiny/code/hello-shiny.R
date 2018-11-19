library(shiny)

ui <- fluidPage(
  headerPanel("Hello"),
  sidebarPanel(
    textInput("id_name", "What is your name?", value="Enamon"),
    sliderInput(
      "id_slider_number", 
      "# of random points for graph",
      1,
      100,
      50,
      step = 1
    )
    
  ),
  mainPanel(
    textOutput("value"),
    plotOutput("scatterplot")
  )
)

server <- function(input, output) {
  output$value <- renderText(paste("Hello, ", input$id_name, "!", sep = ""))
  output$scatterplot <- renderPlot(
    plot(rnorm(input$id_slider_number, 100, 25), rnorm(input$id_slider_number, 50, 3))
  )
}

shinyApp(ui = ui, server = server)
