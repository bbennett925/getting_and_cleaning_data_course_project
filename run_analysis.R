## Load libraries 
library(dplyr)

## Read Data into R
subject_test <- read.table("./test/subject_test.txt")
set_test <- read.table("./test/X_test.txt")
labels_test <- read.table("./test/Y_test.txt")

subject_train <- read.table("./train/subject_train.txt")
set_train <- read.table("./train/X_train.txt")
labels_train <- read.table("./train/Y_train.txt")

features <- read.table("./features.txt")
labels_act <- read.table("./activity_labels.txt")

# Rename variables
names(subject_train) <- "subject"
names(labels_train) <- "activity"

names(subject_test) <- "subject"
names(labels_test) <- "activity"

## Merges the training and the test sets to create one data set.
train <- cbind(subject_train, labels_train, set_train)
test <- cbind(subject_test, labels_test, set_test)
final <- rbind(train, test)

## Uses descriptive activity names to name the activities in the data set
final[["activity"]] <- labels_act[ match(final[['activity']], labels_act[['V1']] ) , 'V2']

## Renames columns to descriptive phrases
names(final) <- c("subject", "activity", as.character(features$V2))

##Extracts only the measurements on the mean and standard deviation for each measurement. 
names.mean <- as.character(features$V2[grep('mean()',features$V2)])
names.std <- as.character(features$V2[grep('std()',features$V2)])

final <- final[,c("subject", "activity", names.mean, names.std)]

# From the data set in step 4, creates a second, independent tidy data set with the
#average of each variable for each activity and each subject.
df = final %>% group_by(subject, activity) %>% summarise_each(funs(mean))

## Write tidy data set of means for all values to file called submission
write.table(df, "./submission.txt", row.name=FALSE)



