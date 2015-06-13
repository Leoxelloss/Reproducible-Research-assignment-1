---
title: "Reproducible Research Assignment 1"
author: "Liao Dehui"
date: "Wednesday, June 10, 2015"
output: slidy_presentation
---

## Description

This file will detail the steps of obtaining the answer for the solution for the questions in assignment 1.

## Loading and preprocessing the data

```{r}
setwd("E:/workspace/assignment/Reproducible-Research-assignment-1") ##setting the working directory
data<-read.csv("activity.csv")                                      ## reading the data
summary(data)
```

## What is mean total number of steps taken per day?
```{r}
mean <-aggregate(data$steps,by=list(data$date),mean)
median <-aggregate(data$steps,by=list(data$date),median)
```
The mean for each day is `r mean`.
The median for each day is `r median`.