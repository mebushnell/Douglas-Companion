#Set your working directory.
setwd("[your working directory here; use forward slashes]")

#Load in the packages. 
library(ggplot2)
library(multcomp)
library(plyr)

#read in the data
book<- read.csv("Figure 3 data.csv")

#Creating linear model that tests effect of Book, Pragmatic typ, and Mortality 
#on Line ratios.
lm<-lm(Number.of.Latin.lines ~ Book, book)

#Analysis of variance on linear model; produces p-values to indicate which 
#variable is significant.
av<-aov(lm)
summary(av)

#Tukey test; indicates where significant differences lie between variable 
#values.
tukey<-TukeyHSD(av)
tukey
