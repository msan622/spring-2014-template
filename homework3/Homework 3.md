Homework 3: Multivariate
==============================

For this assignment, you will be generating a several interactive multivariate data visualizations using the `ggplot2` and `shiny` packages for the `state.x77` dataset built into `R`. 

:warning: Your visualizations may be displayed and discussed in class. Please make sure you do **not** include your name on the visualizations themselves to protect your identity.

Dataset
------------------------------

The `state.x77` dataset provides information on the population, per capita income, illiteracy, life expectancy, murder rate, percent high-school graduates, average number of days below freezing, and land area in square miles. Use `?state.x77` to learn more about this dataset.

You may want to add additional columns to this dataset. For example:

```
df <- data.frame(state.x77,
    State = state.name,
    Abbrev = state.abb,
    Region = state.region,
    Division = state.division
)
```

These columns will give you more options for labels, grouping, colors, fills, and facets. They do not need to be included unless you find them useful for your visualizations.

Visualizations
------------------------------

You must implement **three** different multivariate visualization techniques: 

- **Technique 1:** Heatmap -or- Bubble Plot
- **Technique 2:** Scatterplot Matrix -or- Small Multiples
- **Technique 3:** Parallel Coordinates Plot

You may select which columns in the dataset to visualize for each technique, but you must include a minimum of four different columns on each. These techniques will be evaluated based on the correctness of your implementation _and_ your customization of that technique. 

Interactivity
------------------------------

You must either show all three techniques in the same window -or- add the ability to switch between techniques in your `shiny` app. 

In addition, you must implement one of the following forms of interactivity:

- Zooming
- Panning
- Brushing
- Filtering
- Sorting

Ideally, all three techniques should be linked. For example, if you select certain rows using brushing, all three techniques should highlight these rows.

Discussion
------------------------------

In your discussion, create a section for each technique and a section to describe the interactivity of your `shiny` app. For each technique, include an image of your technique (without the `shiny` interface) and discuss the following:

- Why did you chose this technique? 
- Which columns did you chose to include and why? 
- How you are encoding the data (e.g. which column do you use to determine color)?
- What customization did you try and why?
- What conclusions does your technique helps you make about the underlying dataset? 

For the interactivity section, include a screenshot of your `shiny` app and discuss the following:

- How do you interact with your visualizations?
- What approaches (overview + detail, focus + context, etc.) did you implement and why?

Each discussion section should range between 2 to 5 paragraphs of text.

Grading
------------------------------

Meeting the bare minimum requirements will earn you a C letter grade. To earn a higher letter grade, you must go above and beyond the stated requirements. 

For example, you could choose to add extra interactivity and/or customize the visualization appearance (customizing labels, grid lines, etc.). This is your chance to try something new, and your chance to impress the instructor.

Execution
------------------------------

Your `shiny` app should be able to run remotely using the following code:

```
library(shiny)
runGitHub("msan622", "username", subdir = "homework3")
```

Replace `username` above with your GitHub username. Make sure you do **not** call `setwd()` within your R source code, as I will not have your directories on my system.

Submission
------------------------------

Submit your `shiny` app source code (and any required images) in a `homework3` directory within your `msan622` repository on GitHub. Make sure to include a `README.md` file with your name, email, and discussion. 

After all of the necessary files are pushed to your repository, submit a link to your `homework3` directory on Canvas.

:warning: Do not forget to submit your link in Canvas, or you risk a large grade penalty!
