Codebook.md
========================
Introduction
------------
This file contains information about the variables included in the "*UCAHARData.txt*" and "*UCAHARAverage.txt*" files. These files contain two independent tidy data sets that are the result of running the Run_analysis.R script. 

The information is divided in three sections:

* *Experimental study design*: information about the experimental study design used to obtain the raw data.
* *Summary choices*: information about the choices made to clean and summarise the raw data. 
* *Code book*: information about the variables in the *UCAHARData.txt* and *UCAHARAverage.txt* data sets.

Experimental study design
-------------------------
*This section has been extracted from the "README.txt" and the "features_info.txt" files included in the original UCI HAR Dataset. Please read the original files for additional details on the study design.*

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency measurements. 

Summary choices for the tidy dataset
------------------------------------
Only the measurements on the mean and standard deviation are selected from the original raw data set and included in the "UCIHARData.txt" file. Note that other features that may include "mean" in their names (for example, "meanFreq") are excluded, as they are not considered to be mean measurements in a strict sense. A total of 66 measurements are considered.

"UCIHARAverage.txt" data set provides the average value of each measurement for each activity and each subject.

For a detailed explanation on the process of selecting and summarising data, please refer to the "README.md" file in this repo.

Code book
---------
**UCAHURData.txt**

* "subject"
  * Identifier of the subject that carried out the experiment.
  * Range: from 1 to 30

* "activity"
  * The activity perfomed by the subject:
    * walking
    * walkingupstairs
    * walkingdownstairs
    * sitting
    * standing
    * laying
    
* "TimeBodyAccelerationMeanXaxis"
  * Body acceleration time signal for the X axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationMeanYaxis" 
  * Body acceleration time signal for the Y axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationMeanZaxis" 
  * Body acceleration time signal for the Z axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationStandardDevXaxis" 
  * Body acceleration time signal for the X axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationStandardDevYaxis" 
  * Body acceleration time signal for the Y axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]
  
* "TimeBodyAccelerationStandardDevZaxis" 
  * Body acceleration time signal for the Z axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeGravityAccelerationMeanXaxis" 
  * Gravity acceleration time signal for the X axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeGravityAccelerationMeanYaxis" 
  * Gravity acceleration time signal for the Y axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeGravityAccelerationMeanZaxis" 
  * Gravity acceleration time signal for the Z axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeGravityAccelerationStandardDevXaxis" 
  * Gravity acceleration time signal for the X axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeGravityAccelerationStandardDevYaxis" 
  * Gravity acceleration time signal for the Y axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeGravityAccelerationStandardDevZaxis" 
  * Gravity acceleration time signal for the Z axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationJerkMeanXaxis"
  * Body acceleration jerk time signal for the X axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationJerkMeanYaxis"
  * Body acceleration jerk time signal for the Y axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationJerkMeanZaxis"
  * Body acceleration jerk time signal for the Z axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationJerkStandardDevXaxis"
  * Body acceleration jerk time signal for the X axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationJerkStandardDevYaxis"
  * Body acceleration jerk time signal for the Y axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationJerkStandardDevZaxis"
  * Body acceleration jerk time signal for the Z axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeMeanXaxis" 
  * Body angular velocity time signal for the X axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeMeanYaxis" 
  * Body angular velocity time signal for the Y axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeMeanZaxis" 
  * Body angular velocity time signal for the Z axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeStandardDevXaxis" 
  * Body angular velocity time signal for the X axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeStandardDevYaxis" 
  * Body angular velocity time signal for the Y axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeStandardDevZaxis"
  * Body angular velocity time signal for the Z axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeJerkMeanXaxis"
  * Body angular velocity jerk time signal for the X axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeJerkMeanYaxis"
  * Body angular velocity jerk time signal for the Y axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeJerkMeanZaxis"
  * Body angular velocity time signal for the Z axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeJerkStandardDevXaxis"
  * Body angular velocity jerk time signal for the X axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeJerkStandardDevYaxis"
  * Body angular velocity jerk time signal for the Y axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeJerkStandardDevZaxis"
  * Body angular velocity time signal for the Z axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationMagnitudeMean"
  * Body acceleration time magnitude calculated from the three dimensional time signal. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationMagnitudeStandardDev"
  * Body acceleration time magnitude calculated from the three dimensional time signal. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeGravityAccelerationMagnitudeMean"
  * Gravity acceleration time magnitude calculated from the three dimensional time signal. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeGravityAccelerationMagnitudeStandardDev" 
  * Gravity acceleration time magnitude calculated from the three dimensional time signal. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationJerkMagnitudeMean" 
  * Body acceleration jerk time magnitude calculated from the three dimensional time signal. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyAccelerationJerkMagnitudeStandardDev" 
  * Body acceleration jerk time magnitude calculated from the three dimensional time signal. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeMagnitudeMean" 
  * Body angular velocity time magnitude calculated from the three dimensional time signal. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeMagnitudeStandardDev" 
  * Body angular velocity time magnitude calculated from the three dimensional time signal. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeJerkMagnitudeMean" 
  * Body angular velocity jerk time magnitude calculated from the three dimensional time signal. Mean value.
  * Range: normalized and bounded within [-1,1]

* "TimeBodyGyroscopeJerkMagnitudeStandardDev" 
  * Body angular velocity jerk time magnitude calculated from the three dimensional time signal. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationMeanXaxis" 
  * Body acceleration frequency signal for the X axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationMeanYaxis"  
  * Body acceleration frequency signal for the Y axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationMeanZaxis"  
  * Body acceleration frequency signal for the Z axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationStandardDevXaxis" 
  * Body acceleration frequency signal for the X axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationStandardDevYaxis" 
  * Body acceleration frequency signal for the Y axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]
  
* "FrequencyBodyAccelerationStandardDevZaxis" 
  * Body acceleration frequency signal for the Z axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationJerkMeanXaxis"
  * Body acceleration jerk frequency signal for the X axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationJerkMeanYaxis"
  * Body acceleration jerk frequency signal for the Y axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationJerkMeanZaxis"
  * Body acceleration jerk frequency signal for the Z axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationJerkStandardDevXaxis"
  * Body acceleration jerk frequency signal for the X axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationJerkStandardDevYaxis"
  * Body acceleration jerk frequency signal for the Y axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationJerkStandardDevZaxis"
  * Body acceleration jerk frequency signal for the Z axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyGyroscopeMeanXaxis"
  * Body angular velocity frequency signal for the X axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyGyroscopeMeanYaxis"
  * Body angular velocity frequency signal for the Y axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyGyroscopeMeanZaxis"
  * Body angular velocity frequency signal for the Z axis. Mean value.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyGyroscopeStandardDevXaxis" 
  * Body angular velocity frequency signal for the X axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyGyroscopeStandardDevYaxis" 
  * Body angular velocity frequency signal for the Y axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyGyroscopeStandardDevZaxis"
  * Body angular velocity frequency signal for the Z axis. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationMagnitudeMean" 
  * Body acceleration frequency magnitude calculated from the three dimensional time signal. Mean value.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationMagnitudeStandardDev" 
  * Body acceleration frequency magnitude calculated from the three dimensional time signal. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationJerkMagnitudeMean" 
  * Body acceleration jerk frequency magnitude calculated from the three dimensional time signal. Mean value.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyAccelerationJerkMagnitudeStandardDev" 
  * Body acceleration jerk frequency magnitude calculated from the three dimensional time signal. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyGyroscopeMagnitudeMean" 
  * Body angular velocity frequency magnitude calculated from the three dimensional time signal. Mean value.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyGyroscopeMagnitudeStandardDev" 
  * Body angular velocity frequency magnitude calculated from the three dimensional time signal. Standard deviation.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyGyroscopeJerkMagnitudeMean"  
  * Body angular velocity jerk frequency magnitude calculated from the three dimensional time signal. Mean value.
  * Range: normalized and bounded within [-1,1]

* "FrequencyBodyGyroscopeJerkMagnitudeStandardDev"  
  * Body angular velocity jerk frequency magnitude calculated from the three dimensional time signal. Standard deviation.
  * Range: normalized and bounded within [-1,1]

**UCAHURAverage.txt**

The variables included in "UCIHARAverage.txt" are the same as those included in "UCIHARData.txt". As is indicated in the column names, each measurement in this data set represents the average value of the corresponding measurement for each activity and each subject in "UCIHARData.txt".
