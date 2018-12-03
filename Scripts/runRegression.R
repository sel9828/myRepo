library(dplyr)
library(readr)
library(fields)
library(lme4)
library(ggpplot2)


# Test the distance
gmpts.fit <- with(gmpts, lmer(d2ship ~ status + (1 | trackNum)))
gmpts.fit
summary(gmpts.fit)
