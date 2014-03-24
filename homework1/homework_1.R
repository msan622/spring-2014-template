library(ggplot2) 
library(scales)

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
movies$trans_budget <- movies$budget/1000000
# remove movies with budget of zero or less
movies_subset <- subset(movies, movies$budget > 0)

# transform eurodata
eu <- transform(data.frame(EuStockMarkets), time = time(EuStockMarkets))

# custom palette for genres
my_palette <- c("sienna2", "steelblue3", "darkolivegreen3", "slateblue3", "#333366", "bisque3","slategray4", 'brown3', "gold3")

# first plot
scatter_plot <- ggplot(movies_subset, aes(x=trans_budget, y=rating)) + 
  geom_point(color = 'slategray4') +  
  xlab('Budget (in millions)') + ylab('IMDb User Rating') + 
  ggtitle('IMDb User Rating Vs. Budget') + 
  scale_x_continuous(labels=dollar) 
print(scatter_plot)

# second plot
bar_plot <- ggplot(movies_subset, aes(x = genre, y = ..count..)) + 
  geom_bar(aes(fill = factor(genre))) +  
  xlab('Genre') + ylab('Count') + 
  ggtitle('Count of Movies by Genre') + 
  guides(fill=FALSE) + 
  scale_fill_manual(values=my_palette)
print(bar_plot)

# third plot
small_mult_plot <- ggplot(movies_subset, aes(x=trans_budget, y=rating, group = factor(genre))) + 
  geom_point(aes(colour = factor(genre))) +  
  xlab('Budget (in millions)') + ylab('IMDb User Rating') + 
  ggtitle('IMDb User Rating Vs. Budget by Genre') + 
  facet_wrap(~genre, ncol = 3)  + 
  scale_x_continuous(labels = dollar) + 
  guides(colour=FALSE) + scale_colour_manual(values=my_palette)
print(small_mult_plot)

# fourth plot


# saving files
ggsave(filename = 'hw1-scatter.png', plot = scatter_plot)
ggsave(filename = 'hw1-bar.png', plot = bar_plot)
