
library(shiny)

shinyUI(
  pageWithSidebar(  
    titlePanel("IMDb Movie Ratings"),
    sidebarPanel(
      # Add a drop-down box for sort columns.
      radioButtons(
        "ratingsToShow", 
        "MPAA Ratings:",
        c("All", "PG", "PG-13", "R", 'NC-17')
      ), 
      checkboxGroupInput(
        inputId = "highlight", 
        label = "Movie Genre", 
        choices = c('Action', 'Animation', 'Comedy', 'Documentary', 'Drama', 'Romance', 'Short', "Mixed", 'None')
      ), 
      selectInput(
        inputId = "colorScheme", 
        label = "Color Scheme:",
        choices = c("Default", "Accent", "Set 1", "Set 2", "Set 3", "Dark 2", "Pastel 1", "Pastel 2")
      ),
      sliderInput("range", "Budget Range:",
                  min = 1, max = 200000000, step = 5000000, value = c(1, 200000000)
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
      checkboxInput(
        "grid", 
        "Remove Grid", 
        FALSE
      ), 
      checkboxInput(
        "background", 
        "White Background", 
        FALSE
      ), 
      checkboxInput(
        "jitter", 
        "Jitter Points", 
        FALSE
      ), 
      width = 3, height = 10
    ),
    mainPanel(plotOutput("scatterPlot", height = 750, width = 1000))
  )
)
