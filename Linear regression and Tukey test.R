#Set your working directory.
setwd("G:/Ch 7 2025-02-03")

#Load in the packages. 
library(ggplot2)
library(multcomp)
library(plyr)

#read in the data
book<- read.csv("Line ratio data.csv")

#Figure 1.

#Creating linear model that tests effect of Book on Line ratios.
lm1<-lm(Line.ratio ~ Book, book)

#Analysis of variance on linear model; produces p-values to indicate which 
#variable is significant.
av1<-aov(lm1)
summary1(av1)

#Figure 4.

#Creating linear model that tests effect of Book on Number of Latin lines.
lm4<-lm(Number.of.Latin.lines ~ Book, book)

#Analysis of variance on linear model; produces p-values to indicate which 
#variable is significant.
av4<-aov(lm4)
summary4(av4)

#Tukey test; indicates where significant differences lie between variable 
#values.
tukey4<-TukeyHSD(av4)
tukey4