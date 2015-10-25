---
title: "Getting and Cleaning Data Course Project Codebook"
author: "Christopher Hardison"
date: "Oct. 25, 2015"
---

## Project Description
The purpose of the project is to prepare a tidy data set from data in the Human Activity Recognition Using Smartphones Data Set 

##Study design and data processing

###Collection of the raw data
The Raw data was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Source of the raw data:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The data was provided in two separate sets of training and test. For each set three files were provided 

subject_test.txt/subject_train.txt - data indicating which subject observations were recorded from
X_test.txt/X_test.txt - observations from the accelerometers, detailed description below
y_test.txt/y_test.txt - data indicating which activity was being preformed when the observations were recorded

Descriptions of each column in the data sets were provided in a features.txt file. 

Descriptions of the activity types were provided in a activity_labels.txt file.

A detailed description of the raw data can be found in the README.txt and features_info.txt files included with the orginal data set. A portion of the README.txt file is included below to give an overview of the columns:

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
>These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##Creating the tidy datafile

###Obtaining Data
Data was downloaded from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

###Cleaning of the data
 - Observations from the X_test.txt/X_test.txt files was merged with the subject_test.txt/subject_train.txt and y_test.txt/y_test.txt files to create two data sets containing all information.

 - The two data sets, test and training, where then merged to form one data set. 

 - Information from the features.txt  file was used to give descriptive names to each of the columns. 

 - Information from the activity_labels.txt file was used to create a factor for activity with  descriptive values. 

 - A smaller data set was the created by only selecting the  observations that contained  information on the mean and standard deviation of observed values.
Mean values that were estimation or averaged based on the original data were excluded.

 - Modifications were  made to the column names to make them more descriptive.

 - The final tidy dataset was then created by taking the mean of the observed values by the subject and activity.
 
 - The created tidy data set contains 180 rows and 68 columns

 - For more information see the [README.md](https://github.com/crhardison/GettingAndCleaningDataCourseProject/blob/master/README.md) file for this project 

##Variables

###Subject
Identifier for the subject of the observation
 - Integer

###Activity
Activity that was being preformed when observation was observed
 - Factor with  6 levels
	1.	WALKING
	2.	WALKING_UPSTAIRS
	3.	WALKING_DOWNSTAIRS
	4.	SITTING
	5.	STANDING
	6.	LAYING

###Time-BodyAcc-mean-X
Mean of the time body accelerometer observation mean of the X axis
 - Numeric

###Time-BodyAcc-mean-Y
Mean of the time body accelerometer observation mean of the Y axis
 - Numeric

###Time-BodyAcc-mean-Z
Mean of the time body accelerometer observation mean of the Z axis
 - Numeric

###Time-BodyAcc-std-X    
Mean of the time body accelerometer observation standard deviation of the X axis
 - Numeric
 
###Time-BodyAcc-std-Y
Mean of the time body accelerometer observation standard deviation of the Y axis
- Numeric

###Time-BodyAcc-std-Z
Mean of the time body accelerometer observation standard deviation of the Z axis
- Numeric

###Time-GravityAcc-mean-X
Mean of the time gravity accelerometer observation mean of the X axis
- Numeric

###Time-GravityAcc-mean-Y
Mean of the time gravity accelerometer observation mean of the Y axis
- Numeric

###Time-GravityAcc-mean-Z
Mean of the time gravity accelerometer observation mean of the Z axis
- Numeric

###Time-GravityAcc-std-X
Mean of the time gravity accelerometer observation standard deviation of the X axis
- Numeric

###Time-GravityAcc-std-Y
Mean of the time gravity accelerometer observation standard deviation of the Y axis
- Numeric

###Time-GravityAcc-std-Z
Mean of the time gravity accelerometer observation standard deviation of the Z axis
- Numeric

###Time-BodyAccJerk-mean-X
Mean of the time body linear acceleration and angular velocity accelerometer observation mean of the X axis
 - Numeric

###Time-BodyAccJerk-mean-Y
Mean of the time body linear acceleration and angular velocity accelerometer observation mean of the Y axis
 - Numeric

###Time-BodyAccJerk-mean-Z
Mean of the time body linear acceleration and angular velocity accelerometer observation mean of the Z axis
 - Numeric

###Time-BodyAccJerk-std-X
Mean of the time body linear acceleration and angular velocity accelerometer standard deviation of the X axis
 - Numeric

###Time-BodyAccJerk-std-Y
Mean of the time body linear acceleration and angular velocity accelerometer standard deviation of the Y axis
 - Numeric

###Time-BodyAccJerk-std-Z
Mean of the time body linear acceleration and angular velocity accelerometer standard deviation of the Z axis
 - Numeric

###Time-BodyGyro-mean-X
Mean of the time body gyroscope observation mean of the X axis
 - Numeric
 
###Time-BodyGyro-mean-Y
Mean of the time body gyroscope observation mean of the Y axis
 - Numeric

###Time-BodyGyro-mean-Z
Mean of the time body gyroscope observation mean of the Z axis
 - Numeric

###Time-BodyGyro-std-X
Mean of the time body gyroscope observation standard deviation of the X axis
 - Numeric
 
###Time-BodyGyro-std-Y
Mean of the time body gyroscope observation standard deviation of the Y axis
 - Numeric

###Time-BodyGyro-std-Z
Mean of the time body gyroscope observation standard deviation of the Z axis
 - Numeric

###Time-BodyGyroJerk-mean-X
Mean of the time body linear acceleration and angular velocity gyroscope observation mean of the X axis
 - Numeric

###Time-BodyGyroJerk-mean-Y
Mean of the time body linear acceleration and angular velocity gyroscope observation mean of the Y axis
 - Numeric

###Time-BodyGyroJerk-mean-Z
Mean of the time body linear acceleration and angular velocity gyroscope observation mean of the Z axis
 - Numeric

###Time-BodyGyroJerk-std-X
Mean of the time body linear acceleration and angular velocity gyroscope observation standard deviation of the X axis
 - Numeric

###Time-BodyGyroJerk-std-Y
Mean of the time body linear acceleration and angular velocity gyroscope observation standard deviation of the Y axis
 - Numeric

###Time-BodyGyroJerk-std-Z
Mean of the time body linear acceleration and angular velocity gyroscope observation standard deviation of the Z axis
 - Numeric

###Time-BodyAccMag-mean
Mean of the time body accelerometer magnitude observation mean 
 - Numeric

###Time-BodyAccMag-std
Mean of the time body accelerometer magnitude observation standard deviation
 - Numeric

###Time-GravityAccMag-mean
Mean of the time gravity accelerometer magnitude observation mean 
 - Numeric

###Time-GravityAccMag-std
Mean of the time gravity accelerometer magnitude observation standard deviation
 - Numeric

###Time-BodyAccJerkMag-mean
Mean of the time body linear acceleration and angular velocity magnitude observation mean 
 - Numeric

###Time-BodyAccJerkMag-std
Mean of the time body linear acceleration and angular velocity magnitude observation standard deviation
 - Numeric

###Time-BodyGyroMag-mean
Mean of the time body gyroscope magnitude observation mean
 - Numeric

###Time-BodyGyroMag-std
Mean of the time body gyroscope magnitude observation standard deviation
 - Numeric

###Time-BodyGyroJerkMag-mean
Mean of the time body linear acceleration and angular velocity gyroscope magnitude observation mean 
 - Numeric

###Time-BodyGyroJerkMag-std
Mean of the time body linear acceleration and angular velocity gyroscope magnitude observation standard deviation 
 - Numeric

###Frequency-BodyAcc-mean-X
Mean of the frequency body accelerometer observation mean of the X axis
 - Numeric

###Frequency-BodyAcc-mean-Y
Mean of the frequency body accelerometer observation mean of the Y axis
 - Numeric

###Frequency-BodyAcc-mean-Z
Mean of the frequency body accelerometer observation mean of the Z axis
 - Numeric

###Frequency-BodyAcc-std-X
Mean of the frequency body accelerometer observation standard deviation of the X axis
 - Numeric

###Frequency-BodyAcc-std-Y
Mean of the frequency body accelerometer observation standard deviation of the Y axis
 - Numeric

###Frequency-BodyAcc-std-Z
Mean of the frequency body accelerometer observation standard deviation of the Z axis
 - Numeric

###Frequency-BodyAccJerk-mean-X
Mean of the frequency body linear acceleration and angular velocity accelerometer observation mean of the X axis
 - Numeric

###Frequency-BodyAccJerk-mean-Y
Mean of the frequency body linear acceleration and angular velocity accelerometer observation mean of the Y axis
 - Numeric

###Frequency-BodyAccJerk-mean-Z
Mean of the frequency body linear acceleration and angular velocity accelerometer observation mean of the Z axis
 - Numeric

###Frequency-BodyAccJerk-std-X
Mean of the frequency body linear acceleration and angular velocity accelerometer standard deviation of the X axis
 - Numeric

###Frequency-BodyAccJerk-std-Y
Mean of the frequency body linear acceleration and angular velocity accelerometer standard deviation of the Y axis
 - Numeric

###Frequency-BodyAccJerk-std-Z
Mean of the frequency body linear acceleration and angular velocity accelerometer standard deviation of the Z axis
 - Numeric

###Frequency-BodyGyro-mean-X
Mean of the frequency body gyroscope observation mean of the X axis
 - Numeric
 
###Frequency-BodyGyro-mean-Y
Mean of the frequency body gyroscope observation mean of the Y axis
 - Numeric

###Frequency-BodyGyro-mean-Z
Mean of the frequency body gyroscope observation mean of the Z axis
 - Numeric

###Frequency-BodyGyro-std-X
Mean of the frequency body gyroscope observation standard deviation of the X axis
 - Numeric
 
###Frequency-BodyGyro-std-Y
Mean of the frequency body gyroscope observation standard deviation of the Y axis
 - Numeric

###Frequency-BodyGyro-std-Z
Mean of the frequency body gyroscope observation standard deviation of the Z axis
 - Numeric

###Frequency-BodyAccMag-mean
Mean of the frequency body accelerometer magnitude observation mean 
 - Numeric

###Frequency-BodyAccMag-std
Mean of the frequency body accelerometer magnitude observation standard deviation
 - Numeric

###Frequency-BodyAccJerkMag-mean
Mean of the frequency body linear acceleration and angular velocity magnitude observation mean 
 - Numeric

###Frequency-BodyAccJerkMag-std
Mean of the frequency body linear acceleration and angular velocity magnitude observation standard deviation
 - Numeric

###Frequency-BodyGyroMag-mean
Mean of the frequency body gyroscope magnitude observation mean
 - Numeric

###Frequency-BodyGyroMag-std
Mean of the frequency body gyroscope magnitude observation standard deviation
 - Numeric

###Frequency-BodyGyroJerkMag-mean
Mean of the frequency body linear acceleration and angular velocity gyroscope magnitude observation mean 
 - Numeric

###Frequency-BodyGyroJerkMag-std
Mean of the frequency body linear acceleration and angular velocity gyroscope magnitude observation standard deviation 
 - Numeric
