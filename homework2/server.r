library(shiny)
library(ggplot2)
library(scales)


# load data
data("movies", package = "ggplot2")

# create genre variable
genre <- rep(NA, nrow(movies))
count <- rowSums(movies[, 18:24])
genre[which(count > 1)] = "Mixed"
genre[which(count < 1)] = "None"
genre[which(count == 1 & movies$Action == 1)] = "Action"
genre[which(count == 1 & movies$Animation == 1)] = "Animation"
genre[which(count == 1 & movies$Comedy == 1)] = "Comedy"
genre[which(count == 1 & movies$Drama == 1)] = "Drama"
genre[which(count == 1 & movies$Documentary == 1)] = "Documentary"
genre[which(count == 1 & movies$Romance == 1)] = "Romance"
genre[which(count == 1 & movies$Short == 1)] = "Short"
movies$genre = as.factor(genre)

# subset data
movies_subset <- subset(movies, (movies$budget > 0 | movies$budget == '') & movies$mpaa != '' )

# for formatting budget values
million_formatter <- function(x) { 
  return(sprintf("$%dM", as.integer(x/1000000)))
}


getPlot <- function(localFrame, colorScheme = "Default", highlight, ratingsToShow, alpha_level, point_size, range, grid, background, jitter) {
  full_mpaas <- levels(localFrame$mpaa)[which(levels(localFrame$mpaa)!='')]
  
  if (ratingsToShow != 'All'){
    localFrame <- localFrame[which(localFrame$mpaa == ratingsToShow),] 
  }
  
  if (length(highlight) != 0){
    localFrame <- localFrame[which(localFrame$genre %in% highlight),]
  }
  
  if (nrow(localFrame) == 0){
    return('Data is empty.')
  }
  
  localPlot <- ggplot(localFrame, aes(x = as.numeric(budget), y = rating, color = factor(mpaa))) +
    scale_x_continuous(limits = range, 
                       label = million_formatter, 
                       expand = c(0, .01*(range[2] - range[1]))) +
    scale_y_continuous(limits = c(0, 10), 
                       expand = c(0, 0.25)) + 
    theme(axis.ticks.x = element_blank()) +
    theme(axis.text.y = element_text(size = 14)) +
    theme(axis.text.x = element_text(size = 14)) +
    theme(legend.position = 'bottom') + 
    xlab('Budget') + ylab('Rating') 
  
  if (jitter == TRUE){
    localPlot <- localPlot + geom_jitter(size = point_size, alpha = alpha_level, position = 'jitter')
  }
  else{
    localPlot <- localPlot + geom_point(size = point_size, alpha = alpha_level)
  }
  
  mpaas <- levels(localFrame$mpaa)
  if (grid == TRUE){
    localPlot <- localPlot + theme(panel.grid = element_blank())
  }
  
  if (background == TRUE){
    if (grid == FALSE){
        localPlot <- localPlot + theme(panel.background = element_blank(), 
                                       panel.grid.major = element_line(colour = 'gray90'),
                                       panel.grid.minor = element_line(colour = 'gray90'),
                                       legend.key = element_rect(fill = NA)) 
    }
    else{
      localPlot <- localPlot + theme(panel.background = element_blank(),
                                     panel.grid = element_blank(),
                                     legend.key = element_rect(fill = NA)) 
    }
  }
  
  if (colorScheme == "Pastel 1") {
    my_palette <- brewer_pal(type = "qual", palette = 'Pastel1')(length(mpaas))
  }
  else if (colorScheme == "Accent") {
    my_palette <- brewer_pal(type = "qual", palette = 'Accent')(length(mpaas))
  }
  else if (colorScheme == "Set 1") {
    my_palette <- brewer_pal(type = "qual", palette = 'Set1')(length(mpaas))
  }
  else if (colorScheme == "Set 2") {
    my_palette <- brewer_pal(type = "qual", palette = 'Set2')(length(mpaas))
  }
  else if (colorScheme == "Set 3") {
    my_palette <- brewer_pal(type = "qual", palette = 'Set3')(length(mpaas))
  }
  else if (colorScheme == "Dark 2") {
    my_palette <- brewer_pal(type = "qual", palette = 'Dark2')(length(mpaas))
  }
  else if (colorScheme == "Pastel 2") {
    my_palette <- brewer_pal(type = "qual", palette = 'Pastel2')(length(mpaas))
  }
  else if (colorScheme == 'Default'){
    return(localPlot + scale_color_discrete(name = 'MPAA Rating', limits = full_mpaas))
  }
  
  localPlot <- localPlot + scale_color_manual(values = my_palette, name = 'MPAA Rating', limits = full_mpaas)
  return(localPlot)

}


shinyServer(function(input, output) {
  
  cat("Press \"ESC\" to exit...\n")
  
  # Copy the data frame (don't want to change the data
  # frame for other viewers)
  localFrame <- movies_subset
  
  
output$scatterPlot <- renderPlot(
{
  # Use our function to generate the plot.
  scatterPlot <- getPlot(
    localFrame,
    input$colorScheme, 
    input$highlight, 
    input$ratingsToShow, 
    input$alpha, 
    input$size, 
    input$range, 
    input$grid, 
    input$background, 
    input$jitter
  )
  # Output the plot
  print(scatterPlot)
}
)
})