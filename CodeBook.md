CodeBook
========

Data Set Information:
=====================
(from original data set description)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING-UPSTAIRS, WALKING-DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


Data Fields
===========
(from original features file description)

Numeric data (other than subject and activity) are normalized in the range from -1 to 1

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


subject 
-------
The subject wearing the smartphone

Values: integer [1..30]

activity
-------
The recorded activity

One of  ["Walk", "UpStairs", "DownStairs", "Sit", "Stand", "Lay"]

Body XYZ Acceleration (Mean)
----------------------------
* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ

Body XYZ Acceleration (Standard Deviation)
------------------------------------------
* tBodyAccStDevX
* tBodyAccStDevY
* tBodyAccStDevZ

Gravity XYZ Acceleration (Mean)
-------------------------------
* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ

Gravity XYZ Acceleration (Standard Deviation)
---------------------------------------------
* tGravityAccStDevX
* tGravityAccStDevY
* tGravityAccStDevZ

Derivative Body XYZ Acceleration (Mean)
---------------------------------------
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ

Derivative Body XYZ Acceleration (Standard Deviation)
-----------------------------------------------------
* tBodyAccJerkStDevX
* tBodyAccJerkStDevY
* tBodyAccJerkStDevZ

Body XYZ Angular Velocity (Mean)
--------------------------------
* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ

Body XYZ Angular Velocity (Standard Deviation)
----------------------------------------------
* tBodyGyroStDevX
* tBodyGyroStDevY
* tBodyGyroStDevZ

Derivative Body XYZ Angular Velocity (Mean)
-------------------------------------------
* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ

Derivative Body XYZ Angular Velocity (Standard Deviation)
---------------------------------------------------------
* tBodyGyroJerkStDevX
* tBodyGyroJerkStDevY
* tBodyGyroJerkStDevZ


Body Acceleration Magnitude (Mean and Standard Deviation)
---------------------------------------------------------
* tBodyAccMagMean
* tBodyAccMagStDev

Gravity Acceleration Magnitude (Mean and Standard Deviation)
------------------------------------------------------------
* tGravityAccMagMean
* tGravityAccMagStDev

Derivative Body Acceleration Magnitude (Mean and StdDev)
--------------------------------------------------------
* tBodyAccJerkMagMean
* tBodyAccJerkMagStDev

Angular Velocity Magnitude (Mean and StdDev)
--------------------------------------------
* tBodyGyroMagMean
* tBodyGyroMagStDev

Derivative Angular Velocity Magnitude (Mean and StdDev)
-------------------------------------------------------
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStDev


FFT Transform of corresponding Time Domain signals
--------------------------------------------------
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccStDevX
* fBodyAccStDevY
* fBodyAccStDevZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkStDevX
* fBodyAccJerkStDevY
* fBodyAccJerkStDevZ
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyroStDevX
* fBodyGyroStDevY
* fBodyGyroStDevZ
* fBodyAccMagMean
* fBodyAccMagStDev
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagStDev
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagStDev
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagStDev
