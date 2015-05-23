##Cleaning and Getting Data course project code book
###Analysis process

The analysis script, run_analysis.R reads in the processed experiment data and performs a number of steps 
to get it into summary form.

Both the processed test and training datasets are read in and merged into one data frame.
The data columns are then given names based on the features.txt file.
Columns that hold mean or standard deviation measurements are selected from the dataset, 
while the other measurement columns are excluded from the rest of the analysis.
The activity identifiers are replaced with the activity labels based on the activity_labels.txt file.
The data is then grouped by subject and activity, and the mean is calculated for every measurement column.
Invalid characters () are removed from the column names.

Each line in run_analysis.R is commented. Reference the file for more information on this process.

###Columns in output file

The columns included in the output file are listed below:

Subject - The id of the experiment participant.
Activity - The name of the activity that the measurements correspond to, like LAYING or WALKING.
All of the following fields represent the mean of recorded data points for the given subject and activity. 
The detailed description of the different measurement types can be found in the features_info.txt file.

tBodyAcc-mean-X
tBodyAcc-mean-Y
tBodyAcc-mean-Z
tGravityAcc-mean-X
tGravityAcc-mean-Y
tGravityAcc-mean-Z
tBodyAccJerk-mean-X
tBodyAccJerk-mean-Y
tBodyAccJerk-mean-Z
tBodyGyro-mean-X
tBodyGyro-mean-Y
tBodyGyro-mean-Z
tBodyGyroJerk-mean-X
tBodyGyroJerk-mean-Y
tBodyGyroJerk-mean-Z
tBodyAccMag-mean
tGravityAccMag-mean
tBodyAccJerkMag-mean
tBodyGyroMag-mean
tBodyGyroJerkMag-mean
fBodyAcc-mean-X
fBodyAcc-mean-Y
fBodyAcc-mean-Z
fBodyAccJerk-mean-X
fBodyAccJerk-mean-Y
fBodyAccJerk_mean_Z
fBodyGyro_mean_X
fBodyGyro_mean_Y
fBodyGyro_mean_Z
fBodyAccMag_mean
fBodyAccJerkMag_mean
fBodyGyroMag_mean
fBodyGyroJerkMag_mean
tBodyAcc_std_X
tBodyAcc_std_Y
tBodyAcc_std_Z
tGravityAcc_std_X
tGravityAcc_std_Y
tGravityAcc_std_Z
tBodyAccJerk_std_X
tBodyAccJerk_std_Y
tBodyAccJerk_std_Z
tBodyGyro-std-X
tBodyGyro-std-Y
tBodyGyro-std-Z
tBodyGyroJerk-std_X
tBodyGyroJerk-std_Y
tBodyGyroJerk-std_Z
tBodyAccMag-std
tGravityAccMag-std
tBodyAccJerkMag-std
tBodyGyroMag-std
tBodyGyroJerkMag-std
fBodyAcc-std-X
fBodyAcc-std-Y
fBodyAcc-std-Z
fBodyAccJerk-std-X
fBodyAccJerk-std-Y
fBodyAccJerk-std-Z
fBodyGyro-std_X
fBodyGyro-std_Y
fBodyGyro-std_Z
fBodyAccMag-std
fBodyAccJerkMag-std
fBodyGyroMag-std
fBodyGyroJerkMag-std
More information

Detailed information on the experiment and the data can be found in the README.txt and features_info.txt 
or find more information on the dataset homepage.
