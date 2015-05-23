# Getting-and-Cleaning-Data

Project for Getting and Cleaning Data, Coursera.

The purpose of this project was to demonstrate our ability to collect, work with, and clean a data set. We had to prepare tidy data that can be used for later analysis. The project has to obtain a non-tidy dataset of accelerometers data from the Samsung Galaxy S smartphone (see: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The course instructions were the following:

You should create one R script called run_analysis.R that does the following.
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive activity names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
This Github repository provides a script (run_analysis.R), a tidy dataset (tidymeans.txt), and a codebook (CodeBook.md).

### run_analysis.R

The script was implemented under Mac OS X 10.10 and RStudio. It was not tested under Windows environment nor the command-line version of R. Please run it from RStudio. The script takes less than a minute to complete assuming that data has been downloaded and unzipped to your current working directory already. (Hardware config is MacBook Pro 15 i7/16GB RAM)

The script performs the following high-level tasks:

- Set the working directory as UCI HAR Dataset 
- Loads the features, the subjects and activities for both training and test sets.
- It merges features, subjects, and activities.
- Keeps only the variable related to mean and std
- Creates the tiny data set with the average of each variable for each activity and each subject.

### CodeBook.md

The CodeBook contains a description of the original dataset, the data acquisition process, the data transformation process, the variables, and the tidy dataset format.
