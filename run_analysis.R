# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(plyr)
# First, download and unzip the data file if that was not already done
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filename <- "UCI_HAR.zip"
dataDir <- "UCI HAR Dataset"

if (!file.exists(filename)) {
  download.file(fileUrl, destfile = filename, method="curl")  
}

if (!dir.exists(dataDir)) {
  unzip(filename)
}

# Load data
# Activity Labels
activityLabels <- read.table(file.path(dataDir, "activity_labels.txt"))
print(activityLabels)

# Features
features <- read.table(file.path(dataDir, "features.txt"))
head(features)

# Test Data
subjectTest <- read.table(file.path(dataDir, "test", "subject_test.txt"))
xTest <- read.table(file.path(dataDir, "test", "X_test.txt"))
yTest <- read.table(file.path(dataDir, "test", "y_test.txt"))

str(subjectTest)
str(xTest)
str(yTest)

# Train Data
subjectTrain <- read.table(file.path(dataDir, "train", "subject_train.txt"))
xTrain <- read.table(file.path(dataDir, "train", "X_train.txt"))
yTrain <- read.table(file.path(dataDir, "train", "y_train.txt"))

str(subjectTrain)
str(xTrain)
str(yTrain)

# Replace header names
names(xTest) <- features$V2
names(xTrain) <- features$V2

names(subjectTest) <- "subject"
names(subjectTrain) <- "subject"

names(yTest) <- "activity"
names(yTrain) <- "activity"

# Bind data
testData <- cbind(xTest, yTest, subjectTest)
trainData <- cbind(xTrain, yTrain, subjectTrain)

# Merge the training and the test sets to create one data set.
mergedDataset <- rbind(testData, trainData)

# Extract only the measurements on the mean and standard deviation for each measurement
measurements <- features$V2[grep("mean|std", names(mergedDataset), ignore.case = TRUE)]
selectedFeatures <- c(measurements, which(colnames(mergedDataset)=="subject"), which(colnames(mergedDataset)=="activity"))

dataset = mergedDataset[, selectedFeatures]
names(dataset)

# Uses descriptive activity names to name the activities in the data set
head(dataset$activity)
dataset$activity <- factor(dataset$activity, levels = activityLabels$V1, labels = activityLabels$V2)
head(dataset$activity)

# Appropriately labels the data set with descriptive variable names
# Used labels from "features.txt", previously assigned to the new data set along with "subject" and "activity"
names(dataset)
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
tidyDataset <- ddply(dataset, .(activity, subject), numcolwise(mean))

write.table(tidyDataset, file="tidyData.txt", row.names = FALSE)