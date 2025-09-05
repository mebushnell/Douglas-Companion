
## List of files with descriptions

1. **Figure 1 data and chi-squared test.xlsx** - Excel file containing number of succinct translation units and non-succinct translation units per book in the Eneados; also contains expected data used for the chi-squared test, and chi-squared test outcome determined using Excel formulas.
2. **Figure 2 data (excised).csv** - CSV file containing data that was excised from **Figure 2 data.csv**.
3. **Figure 2 data.csv** - CSV file containing line ratios for each TU[^1] in the *Eneados* factoring interference from narrative and speech boundaries; includes categorisation by pragmatic type, speaker identification, and the identification of the speaker's mortality (i.e. if they are a god or a mortal).
4. **Figure 3 Tukey test results.xlsx** - Excel file containing Tukey test results from running **Figure 3 data.csv** through **Linear regression and Tukey test (Figure 3).R** in tabular form.
5. **Figure 3 data.csv** - CSV file containing line ratios for each TU[^1] in the *Eneados* barring interference from narrative and speech boundaries.
6. **Linear regression and Tukey test (Figure 3).R** - R script for performing a linear regression and Tukey test on **Figure 3 data.csv**.
7. **Multivariable linear regression and Tukey test (Figure 2).R** - R script for performing a multivariate linear regression and Tukey test on **Figure 2 data.csv**.
8. **README.md** - The file you are reading now with instructions about how to use the other files in this repo[^2].
1. **Figure 1 data and chi-squared test.xlsx** - Excel file with data used to make Figure 1 extracted from **Line ratio data.csv**; also contains expected data used for the chi-squared test, and chi-squared test outcome determined using Excel formulas.
2. **Figure 2 data.xlsx** - Excel file with data used to make Figure 2 extracted from **Line ratio data and pragmatic annotation.csv**.
3. **Figure 3 data.xlsx** - Excel file with data used to make Figure 3.  Contains Tukey test results from running **Line ratio data.csv** through **Linear regression and Tukey test (Figure 3).R**.
4. **Line ratio data and pragmatic annotation (excised).csv** - CSV file containing data that was excised from **Line ratio data and pragmatic annotation.csv**.
5. **Line ratio data and pragmatic annotation.csv** - CSV file containing line ratios for each [TU](#tu) in the *Eneados* factoring interference from narrative and speech boundaries; includes categorisation by pragmatic type, speaker identification, and the identification of the speaker's mortality (i.e. if they are a god or a mortal).
6. **Line ratio data.csv** - CSV file containing line ratios for each [TU](#tu) in the *Eneados* barring interference from narrative and speech boundaries.
7. **Linear regression and Tukey test (Figure 3).R** - R script for performing a linear regression and Tukey test on **Figure 3 data.csv**.
8. **Multivariable linear regression and Tukey test (Figure 2).R** - R script for performing a multivariate linear regression and Tukey test on **Figure 2 data.csv**.
9. **README.md** - The file you are reading now with instructions about how to use the other files in this [repo](#repo).

## How these files work

### For *Figure 1*:

1. **Figure 1 data and chi-squared test.xlsx** is derived from **Figure 3 data.csv**.  All line ratios less than or equal to 1 have been categorised as 'succinct', and everything greater than 1 have been listed as 'not succinct'.
2. Within **Figure 1 data and chi-squared test.xlsx**, there are two tables: a table of observed values (derived from **Figure 3 data.csv**) and a table of expected values, which is hypothetical.  Expected values are used as a benchmark to test the null hypothesis - i.e., the possibility that books have no impact on the number of succinct TUs[^1] at all.  For each cell, the expected value is calculated in this way: (R[^3] x[^4] C[^5]) /[^6] T[^7].
#### How the data relates to the graph:
1. **Figure 1 data and chi-squared test.xlsx** is derived from **Line ratio data.csv**.  All line ratios less than or equal to 1 have been categorised as 'succinct', and everything greater than 1 have been listed as 'not succinct'.

#### How to check statistics:
2. Within **Figure 1 data and chi-squared test.xlsx**, there are two tables: a table of observed values (derived from **Figure 3 data.csv**) and a table of expected values, which is hypothetical.  Expected values are used as a benchmark to test the null hypothesis - i.e., the possibility that books have no impact on the number of succinct [TUs](#tu) at all.  For each cell, the expected value is calculated in this way: ([R](#r) [x](#x) [C](#c)) [/](#/) [T](#t).
3. The chi-squared test was performed within **Figure 1 data and chi-squared test.xlsx** using an Excel formula.  A value less than 0.05 is significant and indicates that there is a real effect between books and succinct translation.

### For *Figure 2*:

1. **Figure 2 data.csv** is not a complete dataset; it has some data points excised because the line ratios are #DIV/0, which is to say it describes moments in the translation where Scots lines appear to translate 0 lines of Latin, resulting in a line ratio divided by 0, which cannot exist.  This is due to the interference of narrative and speech boundaries.  R cannot process #DIV/0, so these results have been excised and preserved in **Figure 2 data (excised).csv**.
2. Download **Multivariable linear regression and Tukey test (Figure 2).R** and open it in RStudio[^8].
3. Download **Figure 2 data.csv**.
4. To run **Multivariable linear regression and Tukey test (Figure 2).R** on **Figure 2 data.csv**, you must first set your working directory.  Go to line 2 in the code and replace *\[your working directory here; use forward slashes]* with the path to the directory where you have saved **Figure 2 data.csv**.  If you have saved it to your desktop this will look like: *Desktop*.  For more complicated paths, use forward slashes.
5. Run **Multivariable linear regression and Tukey test (Figure 2).R** by clicking the 'Run' button or using the shortcut key Ctrl + Enter.  You will have to do this multiple times - as only one line of the code will run at each instance.
6. 
#### How the data relates to the graph:
1. **Figure 2 data.csv** is derived from **Line ratio and pragmatic annotation.csv** by taking the average line ratio for mortal speakers and divine speakers per book in the *Eneados*.
2. **Line ratio and pragmatic annotation.csv** is not a complete dataset; it has some data points excised because the line ratios are #DIV/0, which is to say it describes moments in the translation where Scots lines appear to translate 0 lines of Latin, resulting in a line ratio divided by 0, which cannot exist.  This is due to the interference of narrative and speech boundaries.  R cannot process #DIV/0, so these results have been excised and preserved in **Figure 2 data (excised).csv**.

#### How to check statistics:
3. Download **Multivariable linear regression and Tukey test (Figure 2).R** and open it in [RStudio](#rstudio).
4. Download **Line ratio and pragmatic annotation.csv**.
5. To run **Multivariable linear regression and Tukey test (Figure 2).R** on **Line ratio and pragmatic annotation.csv**, you must first set your working directory.  Go to line 2 in the code and replace *\[your working directory here; use forward slashes]* with the path to the directory where you have saved **Line ratio and pragmatic annotation.csv**.  If you have saved it to your desktop this will look like: *Desktop*.  For more complicated paths, use forward slashes.
6. Run **Multivariable linear regression and Tukey test (Figure 2).R** by clicking the 'Run' button or using the shortcut key Ctrl + Enter.  You will have to do this to run each line of code.
7. To read the [ANOVA](#anova) results, run lines 18-19 (contingent on running lines 1-14 first) and look at the values under *Pr(>F)*.  Each variable tested - *Book*, *Pragmatic type*, and *Mortality* will be given a value to indicate their significance.  A value less than 0.05 indicates the variable has a significant impact on line ratio.  
8. To read Tukey results, run lines 23-24 (contingent on running lines 1-18 first).  This will produce a list of values comparing each book to one another, each pragmatic type to one another, and each mortality to one another to determine which groups behave differently.  Look at the values under *p adj*; a value less than 0.05 indicates significant difference between groups.  

### For *Figure 3*:

1. Download **Linear regression and Tukey test (Figure 3).R** and open it in RStudio[^8].
2. Download **Figure 3 data.csv**.
3. To run **Linear regression and Tukey test (Figure 3).R** on **Figure 3 data.csv**, you must first set your working directory.  Go to line 2 in the code and replace *\[your working directory here; use forward slashes]* with the path to the directory where you have saved **Figure 3 data.csv**.  If you have saved it to your desktop this will look like: *Desktop*.  For more complicated paths, use forward slashes.
#### How to check statistics:
1. Download **Linear regression and Tukey test (Figure 3).R** and open it in [RStudio](#rstudio).
2. Download **Line ratio data.csv**.
3. To run **Linear regression and Tukey test (Figure 3).R** on **Line ratio data.csv**, you must first set your working directory.  Go to line 2 in the code and replace *\[your working directory here; use forward slashes]* with the path to the directory where you have saved **Line ratio data.csv**.  If you have saved it to your desktop this will look like: *Desktop*.  For more complicated paths, use forward slashes.
4. Run **Linear regression and Tukey test (Figure 3).R** by clicking the 'Run' button or using the shortcut key Ctrl + Enter.  You will have to do this multiple times - as only one line of the code will run at each instance - comments (prefixed by #) do not count.
5. To read the ANOVA[^9] results, run line 19 (contingent on running lines 1-18 first) and look at the value under *Pr(>F)*.  If that is less than 0.05, books have a significant impact on the number of Latin lines in each translation unit.
6. To read Tukey results, run lines 23-24 (contingent on running lines 1-18 first).  This will produce a list of values comparing each book to one another: II-I = Book II vs. Book I.  The p-values are listed under *p adj*.  These p-values have been copied over to **Figure 3 Tukey test results.xlsx** and arranged in a tabular format like so:
|  | I | II |
| -- | -- | -- |
| II | Book II vs. Book I |  |
| III | Book III vs. Book I | Book III vs. Book II |
7. colour-coded to indicate their meaning.  
5. To read the [ANOVA](#anova) results, run lines 18-19 (contingent on running lines 1-14 first) and look at the value under *Pr(>F)*.  A value less than 0.05 indicates that books have a significant impact on the number of Latin lines in each [TU](#tu).
6. To read Tukey results, run lines 23-24 (contingent on running lines 1-18 first).  This will produce a list of values comparing each book to one another to determine which groups behave differently.  Look at the values under *p adj*; a value less than 0.05 indicates significant difference between groups.

Results have been colour coded - green means that the p-value is less than 0.05 and indicates a significant difference, grey means that the p-value is greater than or equal to 0.05 and indicates no significant difference.  Grey results are represented by a line drawn between books in Figure 3, green results are represented by no line drawn between books in Figure 3. 
#### How the data relates to the graph:
8. These values have been copied over to **Figure 3 data.xlsx** and arranged in a tabular format, where rows and columns are each assigned a book number, and the value in each cell represents the p-value that results from a comparison of the book in the cell's row vs. the book in the cell's column.
9. Results have been colour coded - green means that the value is less than 0.05 and indicates a significant difference, grey means that the value is greater than or equal to 0.05 and indicates no significant difference.  Grey results are represented by a line drawn between books in *Figure 3*, green results are represented by no line drawn between books in *Figure 3*. 

## Licenses

Use these files to doublecheck my findings - or to produce your own analysis.
Use these files to doublecheck my findings - or to produce your own analysis.  Please attribute my work - this took a lot of time and effort to do.

The data is licensed under CC BY-SA 4.0. To view a copy of this license, visit [https://creativecommons.org/licenses/by-sa/4.0/](https://creativecommons.org/licenses/by-sa/4.0/).

The R scripts are marked with CC0 1.0. To view a copy of this license, visit https://creativecommons.org/publicdomain/zero/1.0/.

## Notes

[^1] TU = translation unit.
[^2] repo = repository.
[^3] R = row total for the respective cell in the observed values table.
[^4] x = multiplication.
[^5] C = column total for the respective cell in the observed values table.
[^6] / = division.
[^7] T = table total in the observed values table.
[^8] You can download RStudio at [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/).  You will first have to download R.
#### TU 
: translation unit.
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
