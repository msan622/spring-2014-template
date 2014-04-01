
library(shiny)

shinyUI(
  pageWithSidebar(  
    titlePanel("Movie Ratings and Budget"),
    sidebarPanel(
      # Add a drop-down box for sort columns.
      selectInput(
        inputId = "colorScheme", 
        label = "Color Scheme:",
        choices = c("Default", "Accent", "Set 1", "Set 2", "Set 3", "Dark 2", "Pastel 1", "Pastel 2")
      ),
      checkboxGroupInput(
        inputId = "highlight", 
        label = "Movie Genre", 
        choices = c('Action', 'Animation', 'Comedy', 'Documentary', 'Drama', 'Romance', 'Short', "Mixed", 'None')
      ), 
      radioButtons(
        "ratingsToShow", 
        "MPAA Ratings:",
        c("All", "PG", "PG-13", "R", 'NC-17')
      ), 
      sliderInput(
        inputId = 'alpha',
        label = 'Opacity Level:',
        min = 0.1, 
        max = 1.0, 
        step = .1, 
        value = .5, 
        ticks = FALSE
      ), 
      sliderInput(
        inputId = 'size', 
        label = 'Point Size:', 
        min = 1, 
        max = 10, 
        value = 5, 
        ticks = FALSE
      ),
      width = 3, height = 10
    ),
    mainPanel(plotOutput("scatterPlot", height = 575, width = 800))
  )
)
