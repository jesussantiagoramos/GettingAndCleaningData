Readme.md
=========
Introduction
------------
The purpose of the scripts included in this repo is to obtain two indeendent tidy data sets from the Human Activity Recognition Using Smartphones Dataset (Version 1.0). The raw data set contains data collected from the accelerometers from the Samsung Galaxy S smartphone. More information about the data and the experimental study design can be found in the Codebook.md file in this repo and in the README.txt file included with the original data set. A full description of the study is available at this [site] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

Files included in this repo
--------------------------
1. *Download and unzip.R*: download the raw data set to the working directory and unzip the files.
2. *Run_analysis.R*: process the data files and generate two text files containing the tidy data needed for analysis.
3. *Codebook.md*: contains information about the variables included in the output files created with Run_analysis.R.

Downloading the data set with Download_and unzip.R
--------------------------------------------------
The script Download_and_unzip.R involves the following steps:

1. The raw data set ("Dataset.zip") is downloaded to the working directory. 
2. Dataset.zip is unzipped. A folder "UCI HAR Dataset" is created in the working directory, cotaining all the raw data files. **Please do not modify the files in this folder**. 

Obtaining two tidy data sets with Run_analysis.R
---------------------------------------------
The script Run_analysis.R involves the following steps:

1. Test and train raw data sets are merged in one single table. This initial data set has a dimension of 563 columns (subject identifier, activity class code and 561 variables) and 10299 rows (experimental records).
2. From this data set, the measurements on the mean and standard deviation are selected. The variables selected are the ones that include "mean()" or "std()" in their names. Note that other features that may include "mean" in their names (for example, "meanFreq") are excluded, as they are not considered to be mean measurements in a strict sense. A total of 66 variables are selected, the rest are removed from the data set (please read the Codebook.md file for a comprehensive list of the variables finally considered).
3. Activity labels are assigned to the numerical activity class codes in the original data set. The labels have been modified (lowercase, underscores removed) to facilitate their use:

	| Original		| Final 		|
	|:----------------------|:----------------------|
	| "WALKING" 		| "walking" 		|
	| "WALKING_UPSTAIRS"	| "walkingupstairs" 	|	
	| "WALKING_DOWNSTAIRS"	| "walkingdownstairs"	| 
	| "SITTING"		| "sitting"		| 
	| "STANDING"		| "standing"		| 
	| "LAYING"		| "laying" 		|

4. In order to increase readability, original experimental variable names are also modified (no abbreviations; CamelCase; parenthesis and dashes removed). The resulting feature names are more descriptive, longer but easier to understand. This table summarises the chnges made:

	| Original	| Final 	|
	|:--------------|:--------------|
	| initial "t" 	| "Time" 	|
	| initial "f"	| "Frequency" 	|	
	| "Acc"		| "Acceleration"| 
	| "Gyro"	| "Gyroscope"	| 
	| "Mag"		| "Magnitude"	| 
	| "-mean()"	| "Mean" 	|
	| "-std()"	| "StandardDev" |
	| "-X"		| "Xaxis"	| 
	| "-Y"		| "Yaxis"	| 
	| "-Z"		| "Zaxis"	| 
	| "BodyBody"	| "Body"	| 

5. The data set is saved to a text file ("UCIHARData.txt") in the working directory.
6. A second, independent data set is created to summarize the first data set. The average value of each experimental variable is calculated for each activity and each subject. The resulting data set has 180 rows and 68 columns. The word "Average" is added to each feature name. The data set is saved to a text file ("UCIHARAverage.txt") in the working directory.

How to read output text files
-----------------------------
To read the text files created as the output of Run_analysis.R, you can use the
read.table command in R. The option header=TRUE is recommended in order to read the column names properly. 

UCI HAR Dataset License
-----------------------
Use of this data set in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This data set is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

R scripts and Codebook author
-----------------------------
Jesús Santiago. July 2014.

