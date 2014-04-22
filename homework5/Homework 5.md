Homework 5: Time Series Visualization
==============================

For this assignment, you will be generating visualizations of the `Seatbelts` time series available in `R`. You must strive to achieve the lowest lie factor, highest data-ink ratio, and highest data density possible with your visualizations (within reason).

:warning: Your visualizations may be displayed and discussed in class. Please make sure you do **not** include your name on the visualizations themselves to protect your identity.

Requirements
------------------------------

Choose one of the two options below:

- **Option 1: Static**  
  Use the `ggplot2` package to generate three distinct static time-series visualizations. The three visualizations you provide should represent the three best possible representations of this data. 

- **Option 2: Interactive**  
  You should implement an interactive `shiny` visualization using two distinct time series visualization techniques. The two techniques should be accessible within the same `shiny` visualization, and ideally should be linked. Choose at least one major form of interactivity, such as brushing, filtering, zooming, or panning.

If you choose to create an interactive visualization, please make sure it may be run remotely from GitHub.

### Dataset ###

You can learn more about the `Seatbelts` dataset by running `help(Seatbelts)` in `R`. It is a multiple-column time series object. You may want to convert this to a data frame to plot later in `ggplot2`. You can decide exactly what in this dataset you visualize, as long as you include the time component.

### Techniques ###

You may choose from the following visualization techniques:

- Line Plot
- Stacked Area Plot
- Multiline Plot
- Star Plot
- Heatmap
- Circle View

You may choose other techniques with instructor approval.

### Evaluation ###

Attempt to create pixel-perfect visualizations with the best possible lie factor, data-ink ratio, and data density (within reason). 

Discussion
------------------------------

In the discussion, explain the technique you used, an evaluation of the lie factor, data-ink ratio, and data density of your visualization, and what you learned from the visualization about the text. It is okay to discuss what does _not_ work about your visualization!

If you choose to make your visualization interactive, please describe the interactivity.

If you choose to go above and beyond the minimum requirements, please point out what you added.

You can also discuss what modifications you wanted to make but ran out of time, that you tried and did not work, and what you would do if you had more time to work on this assignment.

Grading
------------------------------

Meeting the bare minimum requirements will earn you a C letter grade. To earn a higher letter grade, you must go above and beyond the stated requirements. 

For example, you could choose to add extra interactivity and/or customize the visualization appearance (customizing labels, grid lines, etc.). This is your chance to try something new, and your chance to impress the instructor.

Submission
------------------------------

Submit your `R` source code (and any required images) in a `homework5` directory within your `msan622` repository on GitHub. Make sure to include a `README.md` file with your name, email, and discussion. 

After all of the necessary files are pushed to your repository, submit a link to your `homework5` directory on Canvas.

:warning: Do not forget to submit your link in Canvas, or you risk a large grade penalty!
