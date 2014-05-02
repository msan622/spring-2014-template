Final Project
==============================

You must produce four visualizations (one of which must be interactive) of the same dataset, ideally using `R`, `ggplot2`, `shiny`, and the techniques discussed so far in class. This final project takes place instead of a final exam, and is due on the last day of final exams. See below for details.

## Requirements ##

Your goal is to produce four distinct visualizations of the data, allowing you to learn something specific about the data from each visualization. At least one technique must be interactive, ideally using the `shiny` package. You may integrate all four visualizations into a single shiny interactive visualization if you want, but this is not necessary.

You may use any technique discussed so far in class for each visualization. Strive to produce the four best visualizations possible of your dataset given the limitations of the tools and techniques we have discussed so far in class.

_You may use other tools and techniques, but please check with the instructor **first**._ 

## Discussion ################

Please include a `README.md` report with your name, images of your visualization, and a discussion. In your discussion, include a section on each visualization technique, interactivity, prototype feedback, and challenges. See the following sections for details.

### Techniques ###

For each visualization, discuss the following:

- How you encoded the data (i.e. mapping between columns and preattentive attributes)

- An evaluation of its lie factor, data density, and data to ink ratio

- What you think the visualization excels at (e.g. showing an overview of the dataset, identifying outliers, identifying patterns or trends, identifying clusters, comparison, etc.)

- What _you_ learned about the dataset from the visualization

This discussion should be approximately 2 to 5 paragraphs for each visualization, and this will heavily influence your score for this visualization.

### Interactivity ###

Please include an "Interactivity" section where you discuss the interactivity implemented in your project. Please discuss the following:

- The type(s) of interactivity you implemented

- How the interactivity enhances your visualization(s)

For example, interactivity can help provide focus or context, help overcome overplotting issues, decrease or increase data density, and so on. This discussion should be approximately 2 to 5 paragraphs, depending on the amount of interactivity you implemented.

### Prototype Feedback ###

Please include a "Prototype Feedback" section where you discuss the prototype exercise. Please discuss the following: 

- Describe the original prototype you demonstrated

- The changes did you make based on the feedback

- The feedback that you found particularly helpful, and why
 
- The feedback that you did not agree with, and why

This section should range from 1 to 3 paragraphs of text.

### Challenges ###

Please include a "Challenges" section where you discuss the challenges you encountered during this project. Describe how you addressed the challenge, or why you did not address the challenge. Please also discuss what you would have liked to implement if you had more time.

## Grading ###################

The point breakdown will be 20 points per visualization and 20 points for interactivity. Meeting the bare minimum requirements will earn you a C letter grade. To earn a higher letter grade, you must go above and beyond the stated requirements. 

Each visualization will be evaluated on its lie factor, data density, and data-ink ratio. Any non-trivial issues identified with the lie factor, data density, and data-ink ratio will result in a point deduction. For example, the following issues could result in point deductions:

- Poor placement of legend, decreasing data-density by unnecessarily increasing plot size.

- Illegible tick labels, decreasing data-ink ratio without providing context.

- No use of color when color could have provided additional context.

_Reasonable tradeoffs are expected._ For example, it is okay to add annotations that decrease data-ink ratio but increase context. Or, it is reasonable to jitter point positions in a scatterplot with overplotting issues, which increases the lie factor but increases data density.

Additionally, your visualizations will be evaluated on informativeness, creativity, aesthetics, and interactivity. The emphasis will be placed on informativeness, but only those visualizations that are also creative and aesthetically pleasing will receive full points.

## Submission ################

Submit your R source code and data (and any required images) in a `final-project` directory within your `msan622` repository on GitHub. Make sure to include a `README.md` file with your name, email, and discussion.

:warning: In case I am unsuccessful in getting your code to run, please include a `img` subdirectory with high-resolution images of your visualizations and interface. _You may not want to actually link to these in your discuss due to their size. These images will only be used as a backup for grading purposes._

**After all of the necessary files are pushed to your repository, submit a link to your `final-project` directory on Canvas.**
