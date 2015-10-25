

##load dplyr
library(dplyr)

## Load features file
features <- tbl_df(read.table(".\\UCI HAR Dataset\\features.txt", stringsAsFactors = FALSE))

## Load Activities file
activities <- tbl_df(read.table(".\\UCI HAR Dataset\\activity_labels.txt"))

## Load test data files 
subjectTest <- tbl_df(read.table(".\\UCI HAR Dataset\\test\\subject_test.txt"))
xTest <- tbl_df(read.table(".\\UCI HAR Dataset\\test\\X_test.txt"))
yTest <- tbl_df(read.table(".\\UCI HAR Dataset\\test\\Y_test.txt"))

## Bind test data frames together
test <- bind_cols(subjectTest, yTest) %>% bind_cols(xTest)
    
## Set column names for test data frame
names(test) <- c("Subject", "Activity", features$V2)

## Load train data files 
subjectTrain <- tbl_df(read.table(".\\UCI HAR Dataset\\train\\subject_train.txt"))
xTrain <- tbl_df(read.table(".\\UCI HAR Dataset\\train\\X_train.txt"))
yTrain <- tbl_df(read.table(".\\UCI HAR Dataset\\train\\Y_train.txt"))

## Bind train data frames together
train <- bind_cols(subjectTrain, yTrain) %>% bind_cols(xTrain)

## Set column names for train data frame
names(train) <- c("Subject", "Activity", features$V2)

## Bind the columns of the test and train data frames to create our 
## complet set data frame with all data
completeSet <- bind_rows(test, train)


## Remove columns with duplicate names since they are not needed for final analysis
completeSet <- completeSet[ !duplicated(names(completeSet)) ]

## Select only the columns that pertain to the  mean and std for measurments 
result <- select(completeSet, matches("(Subject|Activity|(mean|std)\\(\\))"))

## Change column names to be more clearly understood
names(result) <- lapply(names(result), 
                        function(x) 
                          sub("BodyBody", "Body", 
                              sub("^f", "Frequency-", 
                                  sub("^t", "Time-", 
                                      sub("\\(\\)", "", x)))))

## Set the activites factor values in the result data frame
result$Activity <- activities$V2[result$Activity]

## Create the tidy data set by grouping by subject and activity and taking the mean
## of all other columns
tidySet <- group_by(result, Subject, Activity) %>% summarize_each(funs(mean))

## write the tidy data set out
write.table(tidySet, file = "GettingAndCleaningDataCourseProject.txt", row.names = FALSE)
