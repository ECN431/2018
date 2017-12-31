# ECN431 - Applied Data Analysis for Firm Strategy and Competition, 2018

Lab exercises and other course material.

## Starting up
We recommend using [R](https://www.r-project.org/) for this course, though Stata can also be used. During the labs, all plenary examples and practical tips will be given in R. Files with code hints to help you get started with each lab as well as solution proposals will be available both for R and Stata, though we only guarantee that the R versions are up to date. As of the time of this writing, we expect that some exercises might be unsolvable or difficult to solve using Stata.

Prior to the first lab session, you should make sure you have working installations of [R](https://cran.uib.no/) and [RStudio](https://www.rstudio.com/products/rstudio/download/) (choose the free desktop version). You should also make sure you have the following packages installed:
* Tidyverse - `install.packages('tidyverse', dependencies=TRUE)`
* Stargazer - `install.packages('stargazer', dependencies=TRUE)`
* AER - `install.packages('AER', dependencies=TRUE)`
* knitr - `install.packages('knitr', dependencies=TRUE)`
Tip: You can see the list of installed R packages under the "Packages" tab in the lower-right pane in RStudio.

In addition, we recommend that you make yourself familiar with the basic workings of R. Here are some suggested sources
* [swirl](http://swirlstats.com/) (interactive exercises you run within R itself)
* [DataCamp Introduction to R](https://www.datacamp.com/courses/free-introduction-to-r) (can be previewed, but requires creating a free account to go through all exercises)
* [R for Data Science](http://r4ds.had.co.nz/) (more advanced and focused on data management and graphical analysis)

Particularly, knowing how to load data, manipulate variables, generate descriptive statistics and run regular regressions will be helpful.

You can find an enormous amout of resources for R online. You will likely find that most practical problems you encounter has a solution online you can find by an appropriate online search query (I do mean to say you should google it).


## Other information and tips
As a general approach to data cleaning and manipulating data ("data wrangling"), we will follow the philosophy of [Tidy data](http://vita.had.co.nz/papers/tidy-data.html), which can roughly be described as getting the data in a shape where each row corresponds to an observation and each column corresponds to a variable *prior* to any analysis (more often than not, this requires some careful thought and planning). This is facilitated by the set of R packages known as [the Tidyverse](https://www.tidyverse.org/). An advanced introduction to R using these packages can be found in the online book/tutorial [R for Data Science](http://r4ds.had.co.nz/) (also listed above).