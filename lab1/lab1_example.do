*******************************************************
/*
	Start out your do-files with a short heading
	and description, right after starting the log:
	"Header for project"
	Fill in information on do-file
	(In more extended projects, this really helps)
*/
*******************************************************


*******************************************************
**** Initial setup
*******************************************************

/*
 This section runs some commands that are useful
 for starting any do-file
*/

clear
capture log close
set more off
* NB! Only for VMware users (remove if you use a local installation of Stata)
* If you have Stata installed on your laptop (not logging into VMware),
* remove the following command:
sysdir set PLUS "M:\ado\plus\" // useful to keep installed commands and find them later 
* Add this last command to all your do-files, and you will be able to reuse new installed commands later


* Change directory to where you have stored the datasets you want 
* to load. This will also be where any output is saved, such as
* logs, tables and graphs (you can also specify another directory
* to store output in the commands generating the output)

* The command "cd" changes the directoy to whatever follows (if
* the directory exists). To go to PATH, type "cd PATH"
cd "M:\Documents\Courses\ECN431\labs\lab1"


* The command "log" opens a log and saves it as a text file
log using lab1, text replace // The text option tells Stata to save the log file in text format


* Set the general style of graphs (feel free to use others, but this might be
* the least "cluttered" one)
set scheme s1color




*******************************************************
**** EXERCISE
*******************************************************

* Load data
use rossmann.dta, clear

* If you do not want everything in the same folder, you can
* change, e.g., to a subfolder for output
cd "M:\Documents\Courses\ECN431\labs\lab1\output"



*** 1. ***

tab storetype

encode storetype, gen(stype)
tab stype


*** 2. ***
* Use Stata's built-in functionality for creating indicators from categorical
* variables: i.varname. Estimates a separate coefficient on an indicator for each
* value in varname. The option "robust" asks Stata to estimate standard errors
* without the assumption of homoskedasticity (allows heteroskedasticity)
reg sales i.stype, robust





*** 3. ***
* If you are uncertain about how to use a certain command, use help
help graph bar
* If you are uncertain about what command to use at all, try googling it

* The option "over(varname)" generates a separate bar with the statistic requested for
* each separate value of the variable "varname". ytitle specifies the label on
* the numerical axis (in this case, the vertical axis). By default, graph bar
* draws the average of the variable name following the command (open).
graph bar open, over(stype) ytitle("Share of days open")





*** 4. ***






*** 5. ***
/*
 To facilitaty giving the results a presentation which is easier to read,
 we will add a value label for open, since "Yes" and "No" is quicker to
 interpret for the human reader and more aesthetic than 1 and 0.
*/

* Define a value label called "open"
label define open 1 "Yes" 0 "No"
* Label the values of variable "open" with the value label "open"
label val open open


/*
 Stata features built-in functionality to handle interactions in the form of # and ##.
 ## adds an indicator for each value of each variable except for the base
 group in both variables (A for stype and 0/No for open) in addition to 
 interaction between all combinations except for the base groups.
 If you are interested in how # differs, try running it. It chooses to divide
 it up slightly differently, though the model captures exactly the same when
 both variables are binary or categorical
*/
reg sales i.stype##i.open, r
* the option "r" after regression is short for "robust"




*** 6. ***
* When making summary statistics by groups (such as years or types), tabstat
* has a convenient option "by(varname)", which generates statistics for each
* unique value of varname
* Use "if [condition]" to restrict the sample for the command to where
* the condition is true.
tabstat sales if open, by(stype)





*** 7. ***






*** 8. ***






*** 9. ***






*** 10. ***
* Convert date to date




* Easiest to do calculations per year if we have a variable for year
* The function "year" returns the year in a date variable
gen year = year(date)
label var year "Year"

* Table
tabstat competition, by(year)

* Graph bar
graph bar competition, over(year) ytitle("Share facing competition")

* Do you feel that the bar chart conveys this information in the best way?
* A line plot over time would probably be better, but requires some collapsing
* "preserve" keeps the data in memory, so that we can do some calculations
* altering the data set, before bringing it back with "restore"
preserve
collapse competition, by(date)
label var competition "Share facing competition"
twoway line competition date
restore




*** 11. ***





*** 12. ***




*** 13. ***





*** 14. ***




*** 15. Extra ***

*** a ***
* question -- Yearly summary

* ssc install estout
* Features a suite of very useful commands for getting nearly anything from stata
* into a useful, well-structured table. Has a lot of bells and whistles, so
* it can be difficult to really get to know the functionality. This is a quite
* advanced use, to get exactly what I wanted automatically.

* Generate summary statistics by year
estpost tabstat sales customers open promo promo2 competition, ///
	by(year) s(mean sd) columns(stat) notot
eststo sumstatyear

* Setting mean and sd in separate quotation marks tells esttab to put them on separate lines
* sd(par) tells esttab to put parentheses around the standard deviations
* collabels(none) removes the labels specifying the names of the statistics
* The option "unstack" tells esttab to make separate columns according to some
* rules for splitting a list of result (here per year)
esttab sumstatyear, cells( "mean(fmt(2))" "sd(par)" ) ///
	nonumber collabels(none) noobs label unstack



*** b ***
* Try to use "egen". Here is one to start off
* The minimum value of competition by store
bysort store: egen mincomp = min(comp)

* Number of observations for stores that always faced competition
count if mincomp == 1
* Wanted number of stores. Probably easiest to use "distinct" (unique values
* of variable). Might need to be installed. If so, uncomment next line.
* ssc install distinct
distinct store if mincomp == 1








*** c ***
* Need a monthly variable. Get it from date. Here, step by step (year already generated earlier)
month = month(date)
label var month "Month"

* Generate year-month date
gen ym = ym(year, month)


* Need to have an indicator when a store first faced competition
* Use the difference in the competition series within store (xtset takes care of
* time series operators doing the right thing)
gen dcomp = D.competition
label dcomp "Difference in competition from previous day"


* Can now sum dcomp per month






*** d ***


