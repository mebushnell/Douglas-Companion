# Douglas-Companion

Data deposited for my chapter in the Critical Companion to Gavin Douglas *Translating the Aeneid*.

## List of figures with descriptions

1. *Figure 1*: Average line ratios per book in the *Eneados*.
2. *Figure 2*: Percentage of succinct translation units per book in the *Eneados*.
3. *Figure 3*: Average line ratios for divine and mortal speakers over the course of the *Eneados*.
4. *Figure 4*: Visual representation of results from a Tukey test comparing the number of Latin lines per translation unit in every book of the *Eneados*.

## List of files with descriptions

1. **Figure 1 data.xlsx** - Excel file with data used to make Figure 1 extracted from **Line ratio data.csv**. 
2. **Figure 2 data and chi-squared test.xlsx** - Excel file with data used to make Figure 2 extracted from **Line ratio data.csv**; also contains expected data used for the chi-squared test, and chi-squared test outcome for Figure 2 determined using Excel formulas.
3. **Figure 3 data.xlsx** - Excel file with data used to make Figure 3 extracted from **Line ratio data and pragmatic annotation.csv**.
4. **Figure 4 data.xlsx** - Excel file with data used to make Figure 4.  Contains Tukey test results from running **Line ratio data.csv** through **Linear regression and Tukey test.R**.
5. **Line ratio data and pragmatic annotation (excised).csv** - CSV file containing data that was excised from **Line ratio data and pragmatic annotation.csv**.
6. **Line ratio data and pragmatic annotation.csv** - CSV file containing line ratios for each translation unit in the *Eneados* factoring interference from narrative and speech boundaries; includes categorisation by pragmatic type, speaker identification, and the identification of the speaker's mortality (i.e. if they are a god or a mortal).  This file supports **Figure 3 data.xslx**.
7. **Line ratio data.csv** - CSV file containing line ratios for each translation unit in the *Eneados*, along with the number of Latin and Scots line within each translation unit.  This file supports **Figure 1 data.xslx**, **Figure 2 data and chi-squared test.xslx**, and **Figure 4 data.xlsx**.
8. **Linear regression and Tukey test.R** - R script for performing a linear regression to statistically evaluate Figure 1, and a linear regression and Tukey test to generate and stastically evaluate Figure 1 and Figure 4.
9. **Multivariable linear regression and Tukey test.R** - R script for performing a multivariate linear regression and Tukey test to statistically evaluate Figure 3.
10. **README.md** - The file you are reading now with instructions about how to use the other files in this [repo](#repo).

## How these files work

### For *Figure 1*:

#### How the data relates to the graph:
1. **Figure 1 data.xlsx** is derived from **Line ratio data.csv**; it groups all the translation units in the *Eneados* by book, and then finds the average line ratio for each group.

#### How to check statistics:
1. Download **Linear regression and Tukey test.R** and open it in [RStudio](#rstudio).
2. Download **Line ratio data.csv**.
3. To run **Linear regression and Tukey test.R** on **Line ratio data.csv**, you must first set your working directory.  Go to line 2 in the code and replace *\[your working directory here; use forward slashes]* with the path to the directory where you have saved **Line ratio data.csv**.  If you have saved it to your desktop this will look like: *Desktop*.  For more complicated paths, use forward slashes.
4. Run **Linear regression and Tukey test.R** by clicking the 'Run' button or using the shortcut key Ctrl + Enter.  You will have to do this multiple times - as only one line of the code will run at each instance - comments (prefixed by #) do not count.  Run lines 1-20 for Figure 1.
5. To read the [ANOVA](#anova) results, run lines 19-20 (contingent on running lines 1-15 first) and look at the value under *Pr(>F)*.  A value less than 0.05 indicates that books have a significant impact on the number of Latin lines in each translation unit.

### For *Figure 2*:

#### How the data relates to the graph:
1. **Figure 2 data and chi-squared test.xlsx** is derived from **Line ratio data.csv**.  All line ratios less than or equal to 1 have been categorised as 'succinct', and everything greater than 1 have been listed as 'not succinct'.

#### How to check statistics:
2. Within **Figure 2 data and chi-squared test.xlsx**, there are two tables: a table of observed values (derived from **Line ratios.csv**) and a table of expected values, which is hypothetical.  Expected values are used as a benchmark to test the null hypothesis - i.e., the possibility that books have no impact on the number of succinct translation units at all.  For each cell, the expected value is calculated in this way: ([R](#r) [x](#x) [C](#c)) [/](#/) [T](#t).
3. The chi-squared test was performed within **Figure 2 data and chi-squared test.xlsx** using an Excel formula.  A value less than 0.05 is significant and indicates that there is a real effect between books and succinct translation.

### For *Figure 3*:

#### How the data relates to the graph:
1. **Figure 3 data.xslx** is derived from **Line ratio and pragmatic annotation.csv** by taking the average line ratio for mortal speakers and divine speakers per book in the *Eneados*.
2. **Line ratio and pragmatic annotation.csv** is not a complete dataset; it has some data points excised because the line ratios are #DIV/0, which is to say it describes moments in the translation where Scots lines appear to translate 0 lines of Latin, resulting in a line ratio divided by 0, which cannot exist.  This is due to the interference of narrative and speech boundaries.  R cannot process #DIV/0, so these results have been excised and preserved in **Figure 2 data (excised).csv**.

#### How to check statistics:
3. Download **Multivariable linear regression and Tukey test.R** and open it in [RStudio](#rstudio).
4. Download **Line ratio and pragmatic annotation.csv**.
5. To run **Multivariable linear regression and Tukey test.R** on **Line ratio and pragmatic annotation.csv**, you must first set your working directory.  Go to line 2 in the code and replace *\[your working directory here; use forward slashes]* with the path to the directory where you have saved **Line ratio and pragmatic annotation.csv**.  If you have saved it to your desktop this will look like: *Desktop*.  For more complicated paths, use forward slashes.
6. Run **Multivariable linear regression and Tukey test.R** by clicking the 'Run' button or using the shortcut key Ctrl + Enter.  You will have to do this to run each line of code.
7. To read the [ANOVA](#anova) results, run lines 20-21 (contingent on running lines 1-16 first) and look at the values under *Pr(>F)*.  Each variable tested - *Book*, *Pragmatic type*, and *Mortality* will be given a value to indicate their significance.  A value less than 0.05 indicates the variable has a significant impact on line ratio.  
8. To read Tukey results, run lines 25-26 (contingent on running lines 1-20 first).  This will produce a list of values comparing each book to one another, each pragmatic type to one another, and each mortality to one another to determine which groups behave differently.  Look at the values under *p adj*; a value less than 0.05 indicates significant difference between groups.  

### For *Figure 4*:

#### How to check statistics:
1. Download **Linear regression and Tukey test.R** and open it in [RStudio](#rstudio).
2. Download **Line ratio data.csv**.
3. To run **Linear regression and Tukey test.R** on **Line ratio data.csv**, you must first set your working directory.  Go to line 2 in the code and replace *\[your working directory here; use forward slashes]* with the path to the directory where you have saved **Line ratio data.csv**.  If you have saved it to your desktop this will look like: *Desktop*.  For more complicated paths, use forward slashes.
4. Run **Linear regression and Tukey test.R** by clicking the 'Run' button or using the shortcut key Ctrl + Enter.  You will have to do this multiple times - as only one line of the code will run at each instance - comments (prefixed by #) do not count.  Run lines 1-10 and 22-35 for Figure 4.
5. To read the [ANOVA](#anova) results, run lines 29-30 (contingent on running lines 1-10 and 25 first) and look at the value under *Pr(>F)*.  A value less than 0.05 indicates that books have a significant impact on the number of Latin lines in each [TU](#tu).
6. To read Tukey results, run lines 34-35 (contingent on running lines 1-10 and 25-30 first).  This will produce a list of values comparing each book to one another to determine which groups behave differently.  Look at the values under *p adj*; a value less than 0.05 indicates significant difference between groups.

#### How the data relates to the graph:
7. These values have been copied over to **Figure 3 data.xlsx** and arranged in a tabular format, where rows and columns are each assigned a book number, and the value in each cell represents the p-value that results from a comparison of the book in the cell's row vs. the book in the cell's column.
8. Results have been colour coded - green means that the value is less than 0.05 and indicates a significant difference, grey means that the value is greater than or equal to 0.05 and indicates no significant difference.  Grey results are represented by a line drawn between books in *Figure 3*, green results are represented by no line drawn between books in *Figure 3*. 

## Licenses

Use these files to doublecheck my findings - or to produce your own analysis.  Please attribute my work - this took a lot of time and effort to do.

The data is licensed under CC BY-SA 4.0. To view a copy of this license, visit [https://creativecommons.org/licenses/by-sa/4.0/](https://creativecommons.org/licenses/by-sa/4.0/).

The R scripts are marked with CC0 1.0. To view a copy of this license, visit https://creativecommons.org/publicdomain/zero/1.0/.

## Notes

#### repo 
: repository.
#### R 
: row total for the respective cell in the observed values table.
#### x 
: multiplication.
#### C 
: column total for the respective cell in the observed values table.
#### / 
: division.
#### T 
: table total in the observed values table.
#### RStudio 
You can download RStudio at [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/).  You will first have to download R.
#### ANOVA
: analysis of variance.
