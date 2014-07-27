
library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Children's Height Predictor"),
  
  
  sidebarLayout(
    sidebarPanel(
      numericInput("fah" , "Father's Height (in)", 60, min = 20, max = 108, step = 1),
      numericInput("moh" , "Mother's Height (in)", 60, min = 20, max = 108, step = 1),
      submitButton("Get Height!")
    ),
  
    mainPanel(
      h3("Result of child's height prediction"),
      h4('if their father is'),
      verbatimTextOutput("inputValueF"),
      h4('and their mother is'),
      verbatimTextOutput("inputValueM"),
      h4('is '),
      verbatimTextOutput("prediction")
    )
  )
))
