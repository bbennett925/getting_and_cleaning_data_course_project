==================================================================
Tidying Data: Summarizing the "Human Activity Recognition Using Smartphones Data
==================================================================
  Brittany Bennett
For Coursera, Getting and Cleaning Data

==================================================================
This project explores the methods used to clean a data set using the "tidy data" principles. These principles are:
1. Each variable you measure should be in one column
2. Each different observation of that variable should be in a different row
3. There should be one table for each "kind" of variable
4. If you have multiple tables, they should include a column in the table that allows them to be linked

The data was taken from the Human Activity Recognition Using Smartphones Dataset project. The paper for this project can be found here: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The raw data can be downloaded here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The run_analysis.R code does the following to the raw data:
1. Merges the training and the test sets to create one data set.
2. Uses descriptive activity names to name the activities in the data set
3. Extracts only the measurements on the mean and standard deviation for each measurement. 
4. Labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


==================================================================
Brittany Bennett, December 2014
