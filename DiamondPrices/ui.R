#
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Diamonds Pricing Data Analysis"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      helpText(
        h1("Instructions"),
        p("This is a shiny web application that analyzes Diamond prices by the three 
          properties of diamonds - Calrity, Color and Cut. It uses the Diamond dataset available 
          in the ggplot package. The user can choose one of the properties from the drop down below and the application
          displays a plot of price against the property chosen.")
      ),
      
      selectInput("var", 
                  label = "Select Diamond Property",
                  choices = list("Clarity"  = 1, "Color" = 2,
                                 "Cut" = 3),
                  selected = 1)
    ),
    
    # Show a plot of the pricing analysis
    mainPanel(
      plotOutput("pricePlot")
    )
  )
))
