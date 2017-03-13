#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    x <- 1:10
    y <- 1:10
    y <- y + 1
    plot(x,y)
    abline(a = input$i, b = input$s, col = "red")
  })
  
})
