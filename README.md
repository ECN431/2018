# ECN431 - Applied Data Analysis for Firm Strategy and Competition, 2018

Lab exercises and other course material.

## How to use this repository

Folders for each lab exercise will be published here, complete with data and helper files. After each session, a full solution proposal will be published here. We recommend that you use *Git* to make a local copy (in the form of what is known as a *fork* in Git terminology) on your computer, which can then be updated when we post new files or exercises. Alternatively, you can download the whole repository (find the "Clone  or download" button), or download each file separately (by right-clicking and choosing the appropriate option).

Below, you will find information on getting started with R and Git, as well as other information and tips for working with R.


## Starting up

We recommend using [R](https://www.r-project.org/) for this course, though Stata can also be used. During the labs, all plenary examples and practical tips will be given in R. Files with code hints to help you get started with each lab as well as solution proposals will be available both for R and Stata, though we only guarantee that the R versions are up to date. As of the time of this writing, we expect that some exercises might be unsolvable or difficult to solve using Stata.

Prior to the first lab session, you should make sure you have working installations of [R](https://cran.uib.no/) and [RStudio](https://www.rstudio.com/products/rstudio/download/) (choose the free desktop version). You should also make sure you have the following packages installed:
* Tidyverse - `install.packages('tidyverse', dependencies=TRUE)`
* Stargazer - `install.packages('stargazer', dependencies=TRUE)`
* knitr - `install.packages('knitr', dependencies=TRUE)`
* Lubridate - `install.packages('lubridate', dependencies=TRUE)`
* plm - `install.packages('plm', dependencies=TRUE)`
* Hmisc - `install.packages('Hmisc', dependencies=TRUE)`
* AER - `install.packages('AER', dependencies=TRUE)`

Note that several of these packages might take require some time to install. Tip: You can see the list of installed R packages under the "Packages" tab in the lower-right pane in RStudio. The installation and lab exercises have been tested on R version 3.4.3 and RStudio version 1.1.383.

In addition, we recommend that you make yourself familiar with the basic workings of R. Here are some suggested sources
* [swirl](http://swirlstats.com/) (interactive exercises you run within R itself)
* [RStudio's Online Learning suggestions](https://www.rstudio.com/online-learning/)
* [DataCamp Introduction to R](https://www.datacamp.com/courses/free-introduction-to-r) (can be previewed, but requires creating a free account to go through all exercises)
* [R for Data Science](http://r4ds.had.co.nz/) (more advanced and focused on data management and graphical analysis)
* [Principles of Econometrics with R](https://bookdown.org/ccolonescu/RPoE4/) (some basic and some advanced topics in econometric analysis with R. Not everything is relevant for this course.)

Particularly, knowing the basics of how to load data, manipulate variables, generate descriptive statistics and run regular linear regressions (OLS) will be helpful. Note that you are not expected to be familiar with all topics in the sources listed, just the basics of R and the topics covered in the introductory econometrics course at NHH (master level).

You can find an enormous amout of resources for R online. You will likely find that most practical problems you encounter has a solution online you can find by an appropriate online search query (I do mean to say you should google it).


## Git starter guide

[Git](https://en.wikipedia.org/wiki/Git) is a version control system. Version control is a very useful tool for any project lasting more than a trivial amount of time, allowing you to systematically keep track of changes in your project (and revert if needed) and avoid the problem (and temptation) of having multiple iterations of the same file saved with different extensions ("homework_v2.tex", "homework_final_v7.tex", etc.). The learning curve to use Git successfully can be a bit steep, but for relatively simple projects (e.g., not involving hundreds of people collaborating on product development) the functionality you need to learn is very limited.

[GitHub](https://github.com/) allows you to store your files complete with version control history online. You can work on your files locally, then upload the changes to keep them safe, allow downloads to other devices, and sharing between collaborators.

### Installation and basic setup of Git
To start using Git, you can follow these steps:
* Register for a free account at [GitHub](https://github.com/)
* Install Git on your system:
    * Windows: http://gitforwindows.org/ (select "Use Git from the Windows Command Prompt")
    * Mac: https://sourceforge.net/projects/git-osx-installer/files/ (standalone installer)
    * Linux: `sudo apt-get install git` (Ubuntu/Debian) or `sudo yum install git` (Fedora/RedHat)
* Open RStudio, open the *Tools* menu and select *Shell*. Enter a user name and email in Git
    - `git config --global user.name 'Morten Sæthre'` (replace with your own name or a freely chosen username)
    - `git config --global user.email 'morten.saethre@nhh.no'` (replace with *the same* email you used to register with GitHub)

### Setting up Git and RStudio with this repository
* Make sure you're logged in to GitHub and reading this text in the [course repository](https://github.com/ECN431/2018), and *fork* the repository
    - You fork the repository by clicking the "Fork" button, which should be somewhere in the upper right of the page
         + Copying the repository could also be achieved by *cloning*, but *forking* keeps a tighter link to the original repository. This will allow you get updates from the original repository without destroying the work you've done in your fork
    - Go to the [GitHub home page](https://github.com/), which will display information for your user when you're logged in, and verify you have the forked course repository available under "Your repositories" (you might need to select "Forks")
* In RStudio, open the "File" menu and select "New Project" (or click the "Create a project" button)
    - Select "Version Control" and "Git", which will ask for "Repository URL"
    - Go to your forked version of the repository on GitHub (you can click the name under "Your repositories"), find the link by clicking "Clone or download" and insert it as "Repository URL" in RStudio
    - Choose a sensible directory to store the files on your computer: the "Project directory name" (for example "ECN431") will be a new folder on your computer under whichever folder you choose as "Create project as a subdirectory of"

The files from your fork of the repository on GitHub is now copied to your computer, and you are all set.

### Updating when new material is available
Prior to each lab, we will make all material available in this repository. This means that your fork needs to be updated with the new material.
1. Log in to GitHub and go to your forked version of the repository
1. Click the button "New pull request"
1. Select your fork as "base fork"
    - The name should involve your username, similar to "username/project directory name" (where project directory name is the one you chose in RStudio)
1. You likely get a message along the lines "Nothing to compare"
    - Click "compare across forks"
1. Select "ECN431/2018" as "head fork"
1. Click the button "Create pull request"
    - Fill in at least a title for the pull request, for example "Update lab material" (might be filled in already if there is only one commit to merge from the course repository), and possibly a comment
    - Click "Create pull request" again
1. If you see the message "This branch has no conflicts with the base branch", you can click the button "Merge pull request" and you've successfully updated your repository *on GitHub*, that is, your online repository residing on GitHub's servers
1. To update the files on your computer so you can work with them, follow these steps
    - Open RStudio
    - Open the project you created when you set up RStudio to work with Git (if this is not your current default workspace)
    - Open the "Git" tab (in the upper right pane, or select "Show Git" under the "View" menu)
    - Click "Pull" to update the repository on your computer 

*Pull* can roughly be translated with "download", and this will make your local files fetch changes that was made to your remote repository. For the most part of this course, you will just use this to get updates of the lab exercises in the repository. In practical settings where you work in a team (for instance if you choose to use Git to handle the work on your termpaper), this is useful to get all updates other members of your team have made on your project. This will allow you to have a working history of your project, together with messages documenting the changes that was done at each step. Beware that if several people have worked on the same files at the same time, there will be conflicts. In RStudio, you will get a comparison of the differences in the files which will need to be handled, though it can be a bit difficult to understand exactly how to use it when you see it for the first time (I suggest googling this to learn about it if this happens to you).

*In case of conflict*: If you get a message along the lines "Conflicts found/need to be resolved", it means that the same files have been changed *both* in your fork and in the course repository. It is necessary to resolve the conflicts. The easiest will probably be to cancel/close the pull request, delete the conflicting files from your computer (it's highly unlikely that it's any of your own work), use RStudio to stage, commit and push the deletions (see the next section), and go back to GitHub and start from step 1 above.

### Use Git from RStudio
When you work with your project in RStudio, you can use the "Git" tab to handle version control of your work (should be in the upper right pane, otherwise you can find "Show Git" under the "View" menu). The most important commands are
* to *stage* any changed/new files you want to update in your repository
    - check the box under "Staged" in the file view of the "Git" tab (if you want to stage/update all files listed, you just leave all boxes unchecked and go straight to *commit*)
* to *commit* the changes, which will update your *local* snapshot (a copy of the current state of the files)
    - click "Commit" in the "Git" tab
    - add a [commit message](#commit-messages)
* to *push* the changes, which will update the snapshot in your GitHub repository
    - click "Push" in the "Git" tab

To learn more of the details of recording changes to the repository, you can read [Chapter 2.2 of the Git Book](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository). Using Git, you will have access to a lot of helpful features, such as comparing different versions of the same file (can perform the role of tracking changes in collaborative work) and reverting to a previous snapshot.

If you want to learn more about using RStudio and Git together, we can recommend the online book [Happy Git and GitHub for the useR](http://happygitwithr.com/) (note that some of the content might be a bit Linux centric).

### Commit messages
The customary way of structuring a commit message is to add a one-sentence header starting with a present tense verbs (ex.: "Add thesis document", "Change main analysis"). Unless it's a completely trivial commit, e.g., "Fixed typos in introduction of thesis", you should add a short description below the header, leaving one blank line between them.

Example:
```
Add separate regressions by firm size to analysis section

Perform the profitability regressions by categories of firm
size (<10, 10-50, >50).

Main results were behaving strange when changing the set of
control variables. Advisor suggested we try this.

Results suggest that the control variables have different
implications for firms of different sizes. Still need to
interpret the differences in the main coefficient.
```

## Other information and tips on using R

As a general approach to data cleaning and manipulating data ("data wrangling"), we will follow the philosophy of [Tidy data](http://vita.had.co.nz/papers/tidy-data.html), which can roughly be described as getting the data in a shape where each row corresponds to an observation and each column corresponds to a variable *before* doing any analysis (more often than not, this requires some careful thought and planning). This is facilitated by a set of R packages known as [the Tidyverse](https://www.tidyverse.org/). You are not expected to know how to use these packages before the first lab, though you might find it helpful to consult some of the sources listed here as the course progresses. You can find documentation with examples on the webpages of each of the packages, such as the vignettes for [dplyr manipulation](http://dplyr.tidyverse.org/articles/dplyr.html), [dplyr merging](http://dplyr.tidyverse.org/articles/two-table.html) and [tidyr/tidy data](http://tidyr.tidyverse.org/articles/tidy-data.html), and the listed sources for learning [ggplot2](http://ggplot2.tidyverse.org/). An advanced introduction to R (and Data Science in general) using these packages can be found in the online book/tutorial [R for Data Science](http://r4ds.had.co.nz/) (also listed above). In addition, the Stargazer package will allow us to craft publication quality tables. See, for instance, the extensive list of tips with examples found in this [Stargazer cheat sheet](https://www.jakeruss.com/cheatsheets/stargazer/).


### R notebooks and other formats

In most labs, we will use [R notebooks](http://rmarkdown.rstudio.com/r_notebooks.html) (click the link for more information) as the default mode of operation. This is a rich mode of working with code, such that results appear in the same place, and documentation/explanation/reporting can be placed alongside the code that generates the result. This is known as [literate programming](https://en.wikipedia.org/wiki/Literate_programming).

Another fruitful way of doing literate programming in RStudio is to use [R Markdown](http://rmarkdown.rstudio.com/lesson-1.html) documents, which works almost the same way as R Notebooks. With R Markdown documents, one has the option of choosing to create the final output as a pdf (requires a latex installation) or a word file (requires MS office or Libre/Open office). Note that one can specify that the output from an R Notebook should be one of these formats as well, by changing the "output" option.