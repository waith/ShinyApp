library(shiny)
cm <- function(feet,inches) (feet*12+inches)*2.54
shinyServer(
  function(input, output) {
    output$feet <- renderPrint({input$feet})
    output$inches <- renderPrint({input$inches})
    output$conversion <- renderPrint({cm(input$feet,input$inches)})
  }
)