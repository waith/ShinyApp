library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Conversion Feet and Inches to CM"),
    sidebarPanel(
      h4('This application is to convert feet and inches to cm. It is very easy to use. You just need to input the details on the left and click Convert. The result will be shown on the right.'),
      br(),
      numericInput('feet', 'Feet', 0, min = 0, max = 10),
      numericInput('inches', 'Inches', 0, min = 0, max = 12),
      submitButton('Convert')
    ),
    mainPanel(
      h3('Results of conversion'),
      h4('You entered: feet'),
      verbatimTextOutput("feet"),
      h4('You entered: inches'),
      verbatimTextOutput("inches"),
      h4('Which resulted in : cm'),
      verbatimTextOutput("conversion")
    )
  )
)
