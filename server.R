library(shiny)
library(UsingR)
library(datasets)
data(galton)
require(stats)
require(graphics)
gdata <- data.frame(galton)


#mph (midparentheight) average of the height of the father 
#and 1.08 times the height of the mother

childh <- function(fah, moh){
  mph <- (fah+moh*1.08)/2
lm1 <- lm(gdata$child ~ gdata$parent)
return(as.numeric(lm1$coeff[1] + lm1$coeff[2] * mph))
} 

shinyServer(function(input, output) {
        
  output$inputValueF <- renderPrint({input$fah})
  output$inputValueM <- renderPrint({input$moh})
  output$prediction <- renderPrint({childh(input$fah, input$moh)})
        
})


