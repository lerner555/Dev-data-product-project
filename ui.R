#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Draws a mpg histogram by number of samples
shinyUI(fluidPage(

    # Application title
    titlePanel("Dynamic mpg distribution"),

    # Sidebar with a slider input for number of samples
    sidebarLayout(
        sidebarPanel(
            sliderInput("sampels",
                        "Number of sampels:",
                        min = 1,
                        max = 32,
                        value = 16)
        ),

        # Show a plot of mpg distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
