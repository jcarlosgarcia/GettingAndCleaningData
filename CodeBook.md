# CodeBook

This code book describes the tidy data set generated from the [HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
The original data is described in [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+ Activity+ Recognition+ Using+ Smartphones)

## Data Transformations

The original data set is split in several files, divided into test and train sets. The script + + run_analysis.R+ +  performs the following tasks to create a new data set 
which only includes the measurements on the mean and standard deviation for each measurement, along with the activity and the subject:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output is a text file data set containing the average of each extracted feature for each activity and subject.


## Selected Features

All the features including "mean" or "std" are selected, corresponding to all the measurements on the mean and standard deviation.
According to the UCI source dataset, all features were calculated from the smartphone's accelerometer and gyroscope 3-axial raw signals.
The accelerometers were in standard gravity units 'g' (approximately 9.8 meters per second per second (m/s^2)), and the gyroscopes are in
radians per second.

These features were normalized and bounded within [-1, 1], so all the measurements are within the range -1 to 1.

+ tBodyAcc_mean_X: Mean value of X coordinate of body acceleration captured by accelerometer in the time domain
+ tBodyAcc_mean_Y: Mean value of Y coordinate of body acceleration captured by accelerometer in the time domain
+ tBodyAcc_mean_Z: Mean value of Z coordinate of body acceleration captured by accelerometer in the time domain
+ tBodyAcc_std_X: Standard deviation of X coordinate of body acceleration captured by accelerometer in the time domain
+ tBodyAcc_std_Y: Standard deviation of Y coordinate of body acceleration captured by accelerometer in the time domain
+ tBodyAcc_std_Z: Standard deviation of Z coordinate of body acceleration captured by accelerometer in the time domain
+ tGravityAcc_mean_X: Mean value of X coordinate of gravity acceleration captured by accelerometer in the time domain
+ tGravityAcc_mean_Y: Mean value of Y coordinate of gravity acceleration captured by accelerometer in the time domain
+ tGravityAcc_mean_Z: Mean value of Z coordinate of gravity acceleration captured by accelerometer in the time domain
+ tGravityAcc_std_X: Standard deviation of X coordinate of gravity acceleration captured by accelerometer in the time domain
+ tGravityAcc_std_Y: Standard deviation of Y coordinate of gravity acceleration captured by accelerometer in the time domain
+ tGravityAcc_std_Z: Standard deviation of Z coordinate of gravity acceleration captured by accelerometer in the time domain
+ tBodyAccJerk_mean_X: Mean value of X coordinate of body acceleration jerk captured by accelerometer in the time domain
+ tBodyAccJerk_mean_Y: Mean value of Y coordinate of body acceleration jerk captured by accelerometer in the time domain
+ tBodyAccJerk_mean_Z: Mean value of Z coordinate of body acceleration jerk captured by accelerometer in the time domain
+ tBodyAccJerk_std_X: Standard deviation of X coordinate of body acceleration jerk captured by accelerometer in the time domain
+ tBodyAccJerk_std_Y: Standard deviation ofYX coordinate of body acceleration jerk captured by accelerometer in the time domain
+ tBodyAccJerk_std_Z: Standard deviation of Z coordinate of body acceleration jerk captured by accelerometer in the time domain
+ tBodyGyro_mean_X: Mean value of X coordinate of body acceleration captured by gyroscope in the time domain
+ tBodyGyro_mean_Y: Mean value of Y coordinate of body acceleration captured by gyroscope in the time domain
+ tBodyGyro_mean_Z: Mean value of Z coordinate of body acceleration captured by gyroscope in the time domain
+ tBodyGyro_std_X: Standard deviation of X coordinate of body acceleration captured by gyroscope in the time domain
+ tBodyGyro_std_Y: Standard deviation of Y coordinate of body acceleration captured by gyroscope in the time domain
+ tBodyGyro_std_Z: Standard deviation of Z coordinate of body acceleration captured by gyroscope in the time domain
+ tBodyGyroJerk_mean_X: Mean value of X coordinate of body acceleration jerk captured by gyroscope in the time domain
+ tBodyGyroJerk_mean_Y: Mean value of Y coordinate of body acceleration jerk captured by gyroscope in the time domain
+ tBodyGyroJerk_mean_Z: Mean value of Z coordinate of body acceleration jerk captured by gyroscope in the time domain
+ tBodyGyroJerk_std_X: Standard deviation of X coordinate of body acceleration jerk captured by gyroscope in the time domain
+ tBodyGyroJerk_std_Y: Standard deviation of Y coordinate of body acceleration jerk captured by gyroscope in the time domain
+ tBodyGyroJerk_std_Z: Standard deviation of Z coordinate of body acceleration jerk captured by gyroscope in the time domain
+ tBodyAccMagnitude_mean: Mean value of magnitude of body acceleration captured by accelerator in the time domain
+ tBodyAccMagnitude_std: Standard deviation of magnitude of body acceleration captured by accelerator in the time domain
+ tGravityAccMagnitude_mean: Mean value of magnitude of gravity acceleration captured by accelerator in the time domain
+ tGravityAccMagnitude_std: Standard deviation of magnitude of gravity acceleration captured by accelerator in the time domain
+ tBodyAccJerkMagnitude_mean: Mean value of magnitude of body acceleration jerk captured by accelerometer in the time domain
+ tBodyAccJerkMagnitude_std: Standard deviation of magnitude of body acceleration jerk captured by accelerometer in the time domain
+ tBodyGyroMagnitude_mean: Mean value of magnitude of body acceleration captured by gyroscope in the time domain
+ tBodyGyroMagnitude_std: Standard deviation of magnitude of body acceleration captured by gyroscope in the time domain
+ tBodyGyroJerkMagnitude_mean: Mean value of magnitude of body acceleration jerk captured by gyroscope in the time domain
+ tBodyGyroJerkMagnitude_std: Standard deviation of magnitude of body acceleration jerk captured by gyroscope in the time domain
+ fBodyAcc_mean_X: Mean value of X coordinate of body acceleration captured by accelerometer in the frequency domain
+ fBodyAcc_mean_Y: Mean value of Y coordinate of body acceleration captured by accelerometer in the frequency domain
+ fBodyAcc_mean_Z: Mean value of Z coordinate of body acceleration captured by accelerometer in the frequency domain
+ fBodyAcc_std_X: Standard deviation value of X coordinate of body acceleration captured by accelerometer in the frequency domain
+ fBodyAcc_std_Y: Standard deviation value of Y coordinate of body acceleration captured by accelerometer in the frequency domain
+ fBodyAcc_std_Z: Standard deviation value of Z coordinate of body acceleration captured by accelerometer in the frequency domain
+ fBodyAccJerk_mean_X: Mean value of X coordinate of body acceleration jerk captured by accelerometer in the frequency domain
+ fBodyAccJerk_mean_Y: Mean value of Y coordinate of body acceleration jerk captured by accelerometer in the frequency domain
+ fBodyAccJerk_mean_Z: Mean value of Z coordinate of body acceleration jerk captured by accelerometer in the frequency domain
+ fBodyAccJerk_std_X: Standard deviation of X coordinate of body acceleration jerk captured by accelerometer in the frequency domain
+ fBodyAccJerk_std_Y: Standard deviation of Y coordinate of body acceleration jerk captured by accelerometer in the frequency domain
+ fBodyAccJerk_std_Z: Standard deviation of Z coordinate of body acceleration jerk captured by accelerometer in the frequency domain
+ fBodyGyro_mean_X: Mean value of X coordinate of body acceleration captured by gyroscope in the frequency domain
+ fBodyGyro_mean_Y: Mean value of Y coordinate of body acceleration captured by gyroscope in the frequency domain
+ fBodyGyro_mean_Z: Mean value of Z coordinate of body acceleration captured by gyroscope in the frequency domain
+ fBodyGyro_std_X: Standard deviation of X coordinate of body acceleration captured by gyroscope in the frequency domain
+ fBodyGyro_std_Y: Standard deviation of Y coordinate of body acceleration captured by gyroscope in the frequency domain
+ fBodyGyro_std_Z: Standard deviation of Z coordinate of body acceleration captured by gyroscope in the frequency domain
+ fBodyAccMagnitude_mean: Mean value of magnitude of body acceleration captured by accelerator in the frequency domain
+ fBodyAccMagnitude_std: Standard deviation of magnitude of body acceleration captured by accelerator in the frequency domain
+ fBodyAccJerkMagnitude_mean: Mean value of magnitude of body acceleration jerk captured by accelerometer in the frequency domain
+ fBodyAccJerkMagnitude_std: Standard deviation of magnitude of body acceleration jerk captured by accelerometer in the frequency domain
+ fBodyGyroMagnitude_mean: Mean value of magnitude of body acceleration captured by gyroscope in the frequency domain
+ fBodyGyroMagnitude_std: Standard deviation of magnitude of body acceleration captured by gyroscope in the frequency domain
+ fBodyGyroJerkMagnitude_mean: Mean value of magnitude of body acceleration jerk captured by gyroscope in the frequency domain
+ fBodyGyroJerkMagnitude_std: Standard deviation of magnitude of body acceleration jerk captured by gyroscope in the frequency domain

## Activity

Type of activity performed when the corresponding measurements were taken, within a range from 1 to 6.

+ WALKING (1): subject was walking during the test
+ WALKING_UPSTAIRS (2): subject was walking up a staircase during the test
+ WALKING_DOWNSTAIRS (3): subject was walking down a staircase during the test
+ SITTING (4): subject was sitting during the test
+ STANDING (5): subject was standing during the test
+ LAYING (6): subject was laying down during the test

## Subject

Identifies the subject who performed the activity within a range from 1 to 30



