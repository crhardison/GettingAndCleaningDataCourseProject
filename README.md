# GettingAndCleaningDataCourseProject
Course Project for Coursera Getting and Cleaning Data course

## Project Description
The purpose of the project is to prepare a tidy data set from data in the Human Activity Recognition Using Smartphones Data Set 

## Files included in Repo
 - run_analysis.R - R script to combine data and create tidy data set 
 - GettingAndCLeaningDataCourseProject.txt - text file containing the generated tidy data set
 - CodeBook.md - file explaining all variables and summaries calculated in created tidy data set, along with units, and any other relevant information
  
### [run_analysis.R](https://github.com/crhardison/GettingAndCleaningDataCourseProject/blob/master/run_analysis.R) - Analysis Script

The run_analysis.R script preforms the following process to create the tidy data set
 - Loads data files in to local data frames for manipulation 
 - The X_test.txt/X_test.txt files are merged with the subject_test.txt/subject_train.txt and y_test.txt/y_test.txt files to create two data sets containing all information.
 - The two data sets, test and training, are then merged to form one data set. 
 - Information from the features.txt  file is used to give descriptive names to each of the columns. 
 - Information from the activity_labels.txt file is used to create a factor for activity with descriptive values applied to the complete data set.  
 - A new data frame is created by only selecting the  observations that contain information on the mean and standard deviation of observed values.
Mean values that were estimation or averaged based on the original data are excluded.
 - Column names are manipulated to make them more descriptive.
 - The final tidy dataset is then created by taking the mean of the observed values by the subject and activity.
 - The tidy data set is then written to the file system

 
### [GettingAndCLeaningDataCourseProject.txt](https://github.com/crhardison/GettingAndCleaningDataCourseProject/blob/master/GettingAndCleaningDataCourseProject.txt) - Tidy Data Set 
Data set can be loaded and viewed with the following commands, when text file is located in working directory:
		`tidyData <- read.table("GettingAndCleaningDataCourseProject.txt", header = TRUE) ; 
		View(tidyData);`
 
 
### [CodeBook.md](https://github.com/crhardison/GettingAndCleaningDataCourseProject/blob/master/CodeBook.md) - Description of the Tidy Data Set
Give a detailed description the following: 
 - Original raw data
 - Process to transform raw data to  tidy data set
 - Structure of the created tidy data set
 - Details of all variables/columns in the created tidy data set
 
 
 