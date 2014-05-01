Final Project
==============================

You must produce four visualizations (one of which must be interactive) of the same dataset, ideally using `R`, `ggplot2`, `shiny`, and the techniques discussed so far in class. This final project takes place instead of a final exam, and is due on the last day of final exams. See below for details.

## Requirements ##

Your goal is to produce four distinct visualizations of the data, allowing you to learn something specific about the data from each visualization. At least one technique must be interactive, ideally using the `shiny` package. You may integrate all four visualizations into a single shiny interactive visualization if you want, but this is not necessary.

You may use any technique discussed so far in class for each visualization. Strive to produce the four best visualizations possible of your dataset given the limitations of the tools and techniques we have discussed so far in class.

_You may use other tools and techniques, but please check with the instructor **first**._ 

## Discussion ################

Please include a `README.md` report with your name, images of your visualization, and a discussion. In your discussion, include a section on each visualization technique, interactivity, and prototype feedback. See the following sections for details.

### Techniques ###

Pending

<!--For each visualization, you must decide on its visualization task or purpose. Valid visualization tasks include:

Providing an overview (or context) of the dataset.
Providing a focused view of the dataset.
Encouraging exploration of the dataset.
Identifying outliers.
Identifying specific patterns or trends.
Identifying clusters.
Illustrating a specific story about the data.
You should avoid repeating visualization tasks. For example, you should only include one visualization with the purpose to provide a general overview. However, if you find two different visualizations illustrate different patterns in the data, it is okay that they share the same visualization task.//-->

<!--
This discussion should identify the purpose or task you choose for each visualization, and include a discussion for why you feel the visualization achieves this purpose or task. You should also include one specific observation you are able to make about your dataset from that visualization.

It is important you understand the difference between an evaluation of a specific visualization versus an evaluation of a visualization technique. For example, do not discuss why the lie factor for bubble charts can be an issue. Discuss how well your specific bubble chart is able to achieve your visualization goal and what you learned about the underlying data.

This discussion should be approximately 2 to 5 paragraphs for each visualization. You will be evaluated on how well your visualization achieves the purpose you specify, which will be highly influenced by your discussion.//-->

### Interactivity ###

Pending

### Prototype Feedback ###

Please include a "Prototype Feedback" section where you discuss the prototype exercise. Please discuss the following: 

- What was the original prototype you demonstrated?
- What changes did you make based on the feedback?
- What feedback did you find particularly helpful, and why?
- What feedback did you not agree with, and why?

This section should range from 1 to 3 paragraphs of text.

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
