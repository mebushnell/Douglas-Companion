#Set your working directory.
setwd("[your working directory here; use forward slashes]")

#Load in the packages. 
library(ggplot2)
library(multcomp)
library(plyr)

#read in the data
mortality<- read.csv("Figure 2 data.csv")

#Figure 3.

#Creating linear model that tests effect of Book, Pragmatic typ, and Mortality 
#on Line ratios.
lm3<-lm(Line.ratio ~ Book + Pragmatic.type + Mortality, mortality)

#Analysis of variance on linear model; produces p-values to indicate which 
#variable is significant.
av3<-aov(lm3)
summary(av3)

#Tukey test; indicates where significant differences lie between variable 
#values.
tukey3<-TukeyHSD(av3)
tukey3