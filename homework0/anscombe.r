# Original Post
# http://4dpiecharts.com/2011/08/22/more-useless-statistics/

# Load the Anscombe's Quartet dataset
data(anscombe)

# Combine all x and y points into a single vectors
x <- with(anscombe, c(x1, x2, x3, x4))
y <- with(anscombe, c(y1, y2, y3, y4))

# Indicate which group each (x, y) point belongs
group <- gl(4, nrow(anscombe))

# Place everything into single dataframe
df <- data.frame(group, x, y)

# Statistics are near identical
# Uses plyr package to calculate
library(plyr)
stats <- ddply(df, .(group), summarize,
               mean_x = mean(x),
               mean_y = mean(y),
               var_x = var(x),
               var_y = var(y),
               correlation = cor(x, y),
               lm_intercept = lm(y ~ x)$coefficients[1],
               lm_x_effect = lm(y ~ x)$coefficients[2])

print(stats)

# Plot values in ggplot2
library(ggplot2)

# Scatterplot with Trend Line
p_scatterf <- ggplot(df, aes(x, y, color = group)) +
  geom_point() +
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE, na.rm = TRUE) +
  ggtitle("Anscombe's Quartet") +
  scale_x_continuous(limits=c(3, 21), expand = c(0, 0), breaks = seq(4, 22, 4)) +
  scale_y_continuous(limits=c(3, 14), expand = c(0, 0), breaks = seq(4, 12, 2)) +
  theme(legend.position="none") +
  facet_wrap(~ group)

print(p_scatterf)
ggsave("anscombe_quartet.png", dpi = 100, width = 6, height = 4)
