## Getting and cleaning data collected from the accelerometers from the Samsung Galaxy S smartphone

This repository includes a script to generate tidy data that can be used for later analysis. The data was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

[Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The script run_analysis.R downloads the data set from [HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extracts the files to your working directory. It performs the following tasks:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output is a txt file containing the average for each activity and subject.


