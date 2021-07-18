#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate "x" and "New" based on input$sampels from ui.R
        x <- input$sampels
        New <- head(mtcars,x)
        # draw the histogram with the specified number of samples
        qplot(mpg, data = New)
    })

})
