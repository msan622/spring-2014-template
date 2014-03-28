setwd("~/Documents/_DataVisualization/msan622/homework1")

library(ggplot2) 
library(scales)
library(reshape)
# load dataset
data(movies) 
data(EuStockMarkets)

# perform transformation on movies
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
movies$genre = genre
# remove movies with budget of zero or less
movies_subset <- subset(movies, movies$budget > 0)

# custom palette for genres
my_palette <- c("sienna2", "steelblue3", "darkolivegreen3", "slateblue3", "#333366", "bisque3","slategray4", 'brown3', "gold3")

million_formatter <- function(x) {
  #label <- round(x / 1000)
  return(sprintf("$%dM", x / 1000000))
}

# first plot
scatter_plot <- ggplot(movies_subset, aes(x=budget, y=rating)) + 
  geom_point(color = 'slategray4', alpha = .8) +  
  xlab('Budget') + ylab('User Rating') + 
  ggtitle('User Rating Vs. Budget') + 
  scale_x_continuous(label=million_formatter) + 
  scale_y_continuous(breaks=c(2,6,10))+
  theme(text = element_text(size=10))
print(scatter_plot)

# second plot
bar_plot <- ggplot(movies_subset, aes(x = genre, y = ..count..)) + 
  geom_bar(aes(fill = factor(genre))) +  
  ggtitle('Count of Movies by Genre') + 
  guides(fill=FALSE) + 
  scale_y_continuous(expand = c(0, 25))+
  scale_fill_manual(values=my_palette) + 
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        panel.grid.major.x = element_blank(), 
        panel.grid.minor.y = element_blank(), 
        axis.ticks.x = element_blank(), 
        axis.text.x = element_text(size = 12))
print(bar_plot)

# third plot
small_mult_plot <- ggplot(movies_subset, aes(x=budget, y=rating, group = factor(genre))) + 
  geom_point(aes(colour = factor(genre))) +  
  xlab('Budget') + ylab('User Rating') + 
  ggtitle('IMDb User Rating Vs. Budget by Genre') + 
  facet_wrap(~genre, ncol = 3)  + 
  scale_x_continuous(label=million_formatter) + 
  scale_y_continuous(breaks=c(2,6,10)) + 
  guides(colour=FALSE) + scale_colour_manual(values=my_palette) 
print(small_mult_plot)

# fourth plot
# transform eurodata
eu <- transform(data.frame(EuStockMarkets), time = as.numeric(time(EuStockMarkets)))
eu_m <- melt(eu, id.vars = 'time', value = c('DAX', 'SMI', 'CAC', 'FTSE'))

# pallete

new_lineplot <- ggplot(eu_m, aes(x=time, y=value, group = as.factor(variable), color = as.factor(variable))) + 
  geom_line() + xlab('Time') +
  ggtitle('European Stock Indexes') +  
  ylab('Value') + theme(text = element_text(size=10)) + 
  scale_colour_brewer(type = 'qual', palette = 7, name = 'Index')
print(new_lineplot)

# saving files
ggsave(filename = 'hw1-scatter.png', plot = scatter_plot, height=3, width=4)
ggsave(filename = 'hw1-bar.png', plot = bar_plot, height=5, width=7.5)
ggsave(filename = 'hw1-multiples.png', plot = small_mult_plot, height=5, width=7.5)
ggsave(filename = 'hw1-multiline.png', plot = new_lineplot, height=3.4, width=5)
