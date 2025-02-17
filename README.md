# Douglas-Companion

Data deposited for my chapter in the Critical Companion to Gavin Douglas *Translating the Aeneied*.

## List of figures with descriptions

1. *Figure 1*: Percentage of succinct translation units per book in the ‘Eneados’.
2. *Figure 2*: Average line ratios for divine and mortal speakers over the course of the ‘Eneados’.
3. *Figure 3*: Visual representation of results from a Tukey test comparing the number of Latin lines per translation unit in every book of the ‘Eneados’.

## List of files with descriptions

1. **Figure 1 data and chi-squared test.xlsx** - Excel file containing number of succinct translation units and non-succinct translation units per book in the Eneados; also contains expected data used for the chi-squared test, and chi-squared test outcome determined using Excel formulas.
2. **Figure 2 data (excised).csv** - CSV file containing data that was excised from **Figure 2 data.csv**.
3. **Figure 2 data.csv** - CSV file containing line ratios for each TU[^1] in the *Eneados* factoring interference from narrative and speech boundaries; includes categorisation by pragmatic type, speaker identification, and the identification of the speaker's mortality (i.e. if they are a god or a mortal).
4. **Figure 3 Tukey test results.xlsx** - Excel file containing Tukey test results from running **Figure 3 data.csv** through **Linear regression and Tukey test (Figure 3).R** in tabular form.
5. **Figure 3 data.csv** - CSV file containing line ratios for each TU[^1] in the *Eneados* barring interference from narrative and speech boundaries.
6. **Linear regression and Tukey test (Figure 3).R** - R script for performing a linear regression and Tukey test on **Figure 3 data.csv**.
7. **Multivariable linear regression and Tukey test (Figure 2).R** - R script for performing a multivariate linear regression and Tukey test on **Figure 2 data.csv**.
8. **README.md** - The file you are reading now with instructions about how to use the other files in this repo[^2].

## How these files work

### For *Figure 1*:

1. **Figure 1 data and chi-squared test.xlsx** is derived from **Figure 3 data.csv**.  All line ratios less than or equal to 1 have been categorised as 'succinct', and everything greater than 1 have been listed as 'not succinct'.
2. Within **Figure 1 data and chi-squared test.xlsx**, there are two tables: a table of observed values (derived from **Figure 3 data.csv**) and a table of expected values, which is hypothetical.  Expected values are used as a benchmark to test the null hypothesis - i.e., the possibility that books have no impact on the number of succinct TUs[^1] at all.  For each cell, the expected value is calculated in this way: (R[^3] x[^4] C[^5]) /[^6] T[^7].
3. The chi-squared test was performed within **Figure 1 data and chi-squared test.xlsx** using an Excel formula.  A value less than 0.05 is significant and indicates that there is a real effect between books and succinct translation.

### For *Figure 2*:

1. **Figure 2 data.csv** is not a complete dataset; it has some data points excised because the line ratios are #DIV/0, which is to say it describes moments in the translation where Scots lines appear to translate 0 lines of Latin, resulting in a line ratio divided by 0, which cannot exist.  This is due to the interference of narrative and speech boundaries.  R cannot process #DIV/0, so these results have been excised and preserved in **Figure 2 data (excised).csv**.
2. Download **Multivariable linear regression and Tukey test (Figure 2).R** and open it in RStudio[^8].
3. Download **Figure 2 data.csv**.
4. To run **Multivariable linear regression and Tukey test (Figure 2).R** on **Figure 2 data.csv**, you must first set your working directory.  Go to line 2 in the code and replace *\[your working directory here; use forward slashes]* with the path to the directory where you have saved **Figure 2 data.csv**.  If you have saved it to your desktop this will look like: *Desktop*.  For more complicated paths, use forward slashes.
5. Run **Multivariable linear regression and Tukey test (Figure 2).R** by clicking the 'Run' button or using the shortcut key Ctrl + Enter.  You will have to do this multiple times - as only one line of the code will run at each instance.
6. 

### For *Figure 3*:

1. Download **Linear regression and Tukey test (Figure 3).R** and open it in RStudio[^8].
2. Download **Figure 3 data.csv**.
3. To run **Linear regression and Tukey test (Figure 3).R** on **Figure 3 data.csv**, you must first set your working directory.  Go to line 2 in the code and replace *\[your working directory here; use forward slashes]* with the path to the directory where you have saved **Figure 3 data.csv**.  If you have saved it to your desktop this will look like: *Desktop*.  For more complicated paths, use forward slashes.
4. Run **Linear regression and Tukey test (Figure 3).R** by clicking the 'Run' button or using the shortcut key Ctrl + Enter.  You will have to do this multiple times - as only one line of the code will run at each instance - comments (prefixed by #) do not count.
5. To read the ANOVA[^9] results, run line 19 (contingent on running lines 1-18 first) and look at the value under *Pr(>F)*.  If that is less than 0.05, books have a significant impact on the number of Latin lines in each translation unit.
6. To read Tukey results, run lines 23-24 (contingent on running lines 1-18 first).  This will produce a list of values comparing each book to one another: II-I = Book II vs. Book I.  The p-values are listed under *p adj*.  These p-values have been copied over to **Figure 3 Tukey test results.xlsx** and arranged in a tabular format like so:
|  | I | II |
| -- | -- | -- |
| II | Book II vs. Book I |  |
| III | Book III vs. Book I | Book III vs. Book II |
7. colour-coded to indicate their meaning.  

Results have been colour coded - green means that the p-value is less than 0.05 and indicates a significant difference, grey means that the p-value is greater than or equal to 0.05 and indicates no significant difference.  Grey results are represented by a line drawn between books in Figure 3, green results are represented by no line drawn between books in Figure 3. 

## Licenses

Use these files to doublecheck my findings - or to produce your own analysis.

## Notes

[^1] TU = translation unit.
[^2] repo = repository.
[^3] R = row total for the respective cell in the observed values table.
[^4] x = multiplication.
[^5] C = column total for the respective cell in the observed values table.
[^6] / = division.
[^7] T = table total in the observed values table.
[^8] You can download RStudio at [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/).  You will first have to download R.
