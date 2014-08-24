getting-cleaning-data
=====================

Getting and Cleaning Data Course Project - Manipulating Human Activity Recognition Using Smartphones Data

This repo contains files used to manipulate Human Activity Recognition Using Smartphone Data obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The repo contains the following files:

1.  CodeBook.md - This contains a description of the variables, the data, and any transformations performed on the data.

2.  run_analysis.R - This is an R script that does the following transformation to the data:
    a)  Merges the training and the test sets to create one data set
    b)  Extracts only the measurements on the mean and standard deviation for each measurement
    c)  Uses descriptive activity names to name the activities in the data set
    d)  Appropriately labels the data set with descriptive variable names
    e)  Creates a second, independent tidy data set with the average of each variable for each activity and each subject
