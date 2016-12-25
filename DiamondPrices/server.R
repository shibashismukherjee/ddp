#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#

library(shiny)
library(ggplot2)

# Define server logic required to draw the Pricing Analysis Plots
shinyServer(function(input, output) {
  x <- reactive({input$var})
  output$pricePlot <- renderPlot({
    if (x()==1) {
      ggplot(diamonds, aes(factor(clarity), (price), fill=clarity)) + geom_boxplot() + ggtitle("Diamond Price by Clarity") + xlab("Clarity") + ylab("Diamond Price in US $") + coord_cartesian(ylim=c(0,7500))
    }
    else if (x()==2) {
      ggplot(diamonds, aes(factor(color), (price/carat), fill=color)) + geom_boxplot() + ggtitle("Diamond Price per Carat by Color") + xlab("Color") + ylab("Diamond Price per Carat in US $") + coord_cartesian(ylim=c(0,7500))
      
    }
    else {
      ggplot(diamonds, aes(factor(cut), (price), fill=cut)) + geom_boxplot() + ggtitle("Diamond Price by Cut") + xlab("Cut") + ylab("Diamond Price in US $") + coord_cartesian(ylim=c(0,7500))
    }
  })  
})
