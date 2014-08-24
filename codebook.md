CodeBook
========

Summary:
========

The data was taken from the source files, and full descriptions of the source data can be found in the README.txt associated with those files.

Columns:
=======

activity - This field is a character field containing one of the six activity descriptions from the source data. Maximum field width is 18. Possible values are:
	WALKING
	WALKING_UPSTAIRS
	WALKING_DOWNSTAIRS
	SITTING
	STANDING
	LAYING 

subject - This field is an integer field containing a unique identifier for each person in the study. Possible values in the data are 1-30.

The following fields all contain similar data, and will all be described here for reasons of brevity. All fields contain a numeric value to 8 decimal places, and may include positive and negative values. Each field is a mean of the data contained in the original input data file. 

Each field name is derived from several pieces of data. The full field name is broken into parts as follows:

time - time
freq - frequency
Body - body movement
Gravity - gravity movement
Acc - acceleration
Gyro - gyroscope
Jerk - acceleration and velocity jerk
Mag - magnitude
Mean - mean
Std - standard deviation
XYZ - axial direction

Detailed descriptions of each of the fields are beyond the scope of this project, and further information may be found in the original README.txt the data came with.
 
timeBodyAccMeanX
timeBodyAccMeanY
timeBodyAccMeanZ
timeBodyAccStdX
timeBodyAccStdY
timeBodyAccStdZ
timeGravityAccMeanX
timeGravityAccMeanY
timeGravityAccMeanZ
timeGravityAccStdX
timeGravityAccStdY
timeGravityAccStdZ
timeBodyAccJerkMeanX
timeBodyAccJerkMeanY
timeBodyAccJerkMeanZ
timeBodyAccJerkStdX
timeBodyAccJerkStdY
timeBodyAccJerkStdZ
timeBodyGyroMeanX
timeBodyGyroMeanY
timeBodyGyroMeanZ
timeBodyGyroStdX
timeBodyGyroStdY
timeBodyGyroStdZ
timeBodyGyroJerkMeanX
timeBodyGyroJerkMeanY
timeBodyGyroJerkMeanZ
timeBodyGyroJerkStdX
timeBodyGyroJerkStdY
timeBodyGyroJerkStdZ
timeBodyAccMagMean
timeBodyAccMagStd
timeGravityAccMagMean
timeGravityAccMagStd
timeBodyAccJerkMagMean
timeBodyAccJerkMagStd
timeBodyGyroMagMean
timeBodyGyroMagStd
timeBodyGyroJerkMagMean
timeBodyGyroJerkMagStd
freqBodyAccMeanX
freqBodyAccMeanY
freqBodyAccMeanZ
freqBodyAccStdX
freqBodyAccStdY
freqBodyAccStdZ
freqBodyAccJerkMeanX
freqBodyAccJerkMeanY
freqBodyAccJerkMeanZ
freqBodyAccJerkStdX
freqBodyAccJerkStdY
freqBodyAccJerkStdZ
freqBodyGyroMeanX
freqBodyGyroMeanY
freqBodyGyroMeanZ
freqBodyGyroStdX
freqBodyGyroStdY
freqBodyGyroStdZ
freqBodyAccMagMean
freqBodyAccMagStd
freqBodyAccJerkMagMean
freqBodyAccJerkMagStd
freqBodyGyroMagMean
freqBodyGyroMagStd
freqBodyGyroJerkMagMean
freqBodyGyroJerkMagStd