#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Fitline"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("s","Slope",min = 0,max = 3.1,value = 1),
       sliderInput("i","Intercept",min = -2.1,max = 2.1,value = 0)
    ),
    # Show a plot of the generated distribution
    
    mainPanel(
       p("fit a line by yourself"),
       p("change the red line's slope and intercept to find the right coefficient to fit the point"),
       plotOutput("distPlot")
    )
  )
 
))
