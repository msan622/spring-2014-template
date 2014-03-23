Homework 1: Basic Charts
==============================

For this assignment, you will practice using `R` and `ggplot2` to generate several basic charts, including a scatterplot, bar chart, small multiples plot, and multi-line plot.

:warning: Your charts may be displayed and discussed in class. Please make sure to **not** include your name on the charts themselves to protect your identity.

Setup
------------------------------

This assignment will use the `movies` dataset in the `ggplot2` package and the `EuStockMarkets` dataset. You will need to perform some transformations of these datasets first to prepare for the visualizations.

Use the following code to load the datasets:

```
library(ggplot2) 
data(movies) 
data(EuStockMarkets)
```

Then, perform the following transformations:

- Filter out any rows that have a `budget` value less than or equal to 0 in the `movies` dataset. 

- Add a `genre` column to the `movies` dataset as follows:
  ```
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
  ```

- Transform the `EuStockMarkets` dataset to a time series as follows:
  ```
  eu <- transform(data.frame(EuStockMarkets), time = time(EuStockMarkets))
  ```

At this point, you are ready to start working on the visualizations.

Visualizations
------------------------------

You must create the following plots in a single `R` script:

- **Plot 1: Scatterplot.** Produce a scatterplot from the `movies` dataset in the `ggplot2` package, where `budget` is shown on the x-axis and `rating` is shown on the y-axis. Save the plot as `hw1-scatter.png`.

- **Plot 2: Bar Chart.** Count the number of action, adventure, etc. movies in the `genre` column of the `movies` dataset. Show the results as a bar chart, and save the chart as `hw1-bar.png`.

- **Plot 3: Small Multiples.** Use the `genre` column in the `movies` dataset to generate a small-multiples scatterplot using the `facet_wrap()` function such that `budget` is shown on the x-axis and `rating` is shown on the y-axis. Save the plot as `hw1-multiples.png`.

- **Plot 4: Multi-Line Chart.** Produce a multi-line chart from the `eu` dataset (created by transforming the `EuStockMarkets` dataset) with `time` shown on the x-axis and `price` on the y-axis. Draw one line for each index on the same chart. Save the plot as `hw1-multiline.png`.

  You will need to perform some additional transformations of the dataset before being able to generate this chart. See the multi-line plot code from class for an example.

For each chart, use `ggsave()` to save each chart as a `png` image. Make sure to set a reasonable width and height.

To receive full points, you are required to add an appropriate chart title and axis labels to your charts *and* use color consistently in your charts. Optionally, consider the other aesthetic aspects of your chart. Play around with the settings for the major/minor tick marks, colors, shape, text, and the legend. 

:warning: You will not receive full points if you only specify the data and use all the default values for the other parameters.

Discussion
------------------------------

In your discussion, include each of the four images generated and a brief discussion following each image about the customization performed. For example, how did you use color? Why did you move the legend? (And so on.) The discussion for each image should be limited to a single paragraph with approximately 3 to 5 sentences.

Submission
------------------------------

Place all of your `R` code in a single file, and include it and all generated images in a `homework1` directory within your `msan622` repository on GitHub. Make sure to include a `README.md` file with your name, USF email, instructions on running your code, and brief discussion.

After all of the necessary files are pushed to your repository, submit a link to your `homework1` directory on Canvas.

:warning: Please note that late submissions are not accepted. GitHub shows when you modified a file, so be sure not to modify your code after the deadline!

