Homework 4: Text Visualization
==============================

For this assignment, you will be generating a three visualizations of text data using a combination of `R` with the `tm`, `ggplot2`, and `wordcloud` packages. You may optionally use [ManyEyes](http://www-958.ibm.com/software/analytics/labs/manyeyes/) by IBM to generate one of the required visualizations.

:warning: Your visualizations may be displayed and discussed in class. Please make sure you do **not** include your name on the visualizations themselves to protect your identity.

Requirements
------------------------------

You must generate **three visualizations** using a combination of tools. The only restriction is that each visualization should use a different technique (e.g. scatterplot, bar chart, phase tree), and you many __not__ use one tool for all three visualizations.

### Options ###

Choose at least two of the following options for the three visualizations required by this assignment:

- **Option 1: Using GGPlot2**  
  Use the `ggplot2` package to generate the visualization. You can use any technique demonstrated thus far to visualize word frequencies, co-occurrence of words, or compare different texts. 

- **Option 2: Using WordCloud**  
  Use the `wordcloud` package to generate the visualization. Keep in mind this package supports more than word clouds! The blog post at <http://blog.fellstat.com/?cat=11> describes some of the other ways you can use this package.

- **Option 3: Many Eyes by IBM**  
  You may use [ManyEyes](http://www-958.ibm.com/software/analytics/labs/manyeyes/) by IBM to generate the either a [**word tree**](http://www-958.ibm.com/software/analytics/manyeyes/page/Word_Tree.html) or a [**phrase net**](http://www-958.ibm.com/software/analytics/manyeyes/page/Phrase_Net.html). (You may not use it for other visualization types.)

You can use the `tm` package for processing of the text files no matter which options you select above.

### Dataset ###

You can decide whether you want to use a collection of text files or a single text file for this option. Your dataset should have over a thousand words but less than a million words. Each visualization should use the same dataset (or a subset of same master dataset) if possible.

You can use any source, but I recommend [Project Gutenberg](http://www.gutenberg.org/) or transcripts from speeches like the [State of the Union](http://www.presidency.ucsb.edu/sou.php) address.

### Evaluation ###

Attempt to create pixel-perfect visualizations with the best possible lie factor, data-ink ratio, and data density. Since we have covered evaluation and these visualizations need not be interactive, these metrics determine a large portion of your grade.

Discussion
------------------------------

Include a section that describes the dataset you choose for your visualizations. Indicate where the dataset comes form, any transformation you made to the dataset (including any transformations done using the `tm` package), and why you choose that dataset.

For each visualization, include an image of the visualization accompanied with approximately 2 to 3 paragraphs discussing the visualization. If you used ManyEyes to create the visualization, also include a link to the visualization.

In the discussion, explain the technique you used, an evaluation of the lie factor, data-ink ratio, and data density of your visualization, and what you learned from the visualization about the text. It is okay to discuss what does _not_ work about your visualization!

Grading
------------------------------

Meeting the bare minimum requirements will earn you a C letter grade. To earn a higher letter grade, you must go above and beyond the stated requirements. 

For example, you could choose to add extra interactivity and/or customize the visualization appearance (customizing labels, grid lines, etc.). This is your chance to try something new, and your chance to impress the instructor.

Submission
------------------------------

Submit your `R` source code (and any required images) in a `homework4` directory within your `msan622` repository on GitHub. Make sure to include a `README.md` file with your name, email, and discussion. 

After all of the necessary files are pushed to your repository, submit a link to your `homework4` directory on Canvas.

:warning: Do not forget to submit your link in Canvas, or you risk a large grade penalty!
