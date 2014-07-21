#--------------------------------------------------------------------------------
# Name:     Run_analysis.R
# Purpose:  Create a tidy dataset from the files contained in the UCI HAR Dataset
#           folder. Please read the README.md file for more information.
# Author:   Jesus Santiago
# Created:  20/07/2014
#--------------------------------------------------------------------------------

# PLEASE RUN THE CODE AS LONG AS THE UCI HAR DATASET FOLDER IS IN YOUR WORKING DIRECTORY

# Read files in the UCI HAR Dataset folder and assign them to variables
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
sbtrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
sbtest <- read.table("UCI HAR Dataset/test/subject_test.txt")
features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

# Modify activity labels (lowercase, no underscore)
activityLabels <- tolower(gsub("_", "", activities$V2))
# Add a column in ytrain and ytest with the corresponding activity labels
for(i in 1:nrow(ytrain)) {
  x <- ytrain$V1[i]
  ytrain$V2[i] <- activityLabels[x]
}
for(i in 1:nrow(ytest)) {
  x <- ytest$V1[i]
  ytest$V2[i] <- activityLabels[x]
}

# Bind xtest, ytest$V2(the column with the activity labels) and sbtest
testdata <- cbind(ytest$V2, xtest)
testdata <- cbind(sbtest, testdata)

# Bind xtrain, ytrain$V2 (the column with the activity labels) and sbtrain
traindata <- cbind(ytrain$V2, xtrain)
traindata <- cbind(sbtrain, traindata)

# Add names to the subject and activity columns in traindata and testdata
names(traindata)[1:2] <- c("subject", "activity")
names(testdata)[1:2] <- c("subject", "activity")

# Bind traindata and testdata
dataset <- rbind(traindata, testdata)

# Assign feature names to the variable columns in the complete data set
names(dataset)[3:ncol(dataset)] <- as.character(features$V2)

# Select only the features that include "mean()" and "std()"
selection <- grepl("(subject|activity|mean\\(\\)|std\\(\\))", names(dataset))
dataset <- dataset[, selection]

# Modify the name of the variables in the data set
varNames <- names(dataset)[3:ncol(dataset)]
oldPatterns <- c("^t", "^f", "Acc", "Gyro", "Mag", 
                 "-mean\\(\\)", "-std\\(\\)", "-X", "-Y", "-Z", "BodyBody")
newPatterns <- c("Time", "Frequency", "Acceleration", "Gyroscope", "Magnitude", 
                 "Mean", "StandardDev", "Xaxis", "Yaxis", "Zaxis", "Body")
change <- data.frame(oldPatterns, newPatterns)
for(i in 1:nrow(change)) {
  varNames <- (gsub(change[i,1], change[i,2], varNames))
}
names(dataset)[3:ncol(dataset)] <- varNames

# Order dataset by subject
library("plyr")
dataset <- arrange(dataset, subject)

# Save the data set as a text file
write.table(dataset, "UCIHARData.txt", row.names=FALSE)

# Create a new data set with the mean value of the variables for each activity and subject
dataset2 <- ddply(dataset, .(subject, activity), numcolwise(mean))

# Add "Average" to variable names in dataset2
varNames <- names(dataset2)[3:ncol(dataset2)]
for(i in 1:length(varNames)) {
  varNames[i] <- paste("Average", varNames[i], sep="")
}
names(dataset2)[3:ncol(dataset2)] <- varNames

# Save dataset2 as a text file
write.table(dataset2, "UCIHARAverage.txt", row.names=FALSE)
