#--------------------------------------------------------------------------------
# Name:     Download_and_unzip.R
# Issue:    Download and unzip a dataset collected from the accelerometers from 
#           the Samsung Galaxy S smartphone. Please read the README.txt file for 
#           more information.
# Author:   Jesus Santiago
# Date:     20/07/2014
#--------------------------------------------------------------------------------

# PLEASE ONLY USE THIS SCRIPT IF YOU NEED TO DOWNLOAD THE DATA. 
# IF YOU HAVE ALREADY DOWNLOADED AND UNZIPPED THE DATASET, RUN THE SCRIPT RUN_ANALYSIS.R

# Download data set
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, "dataset.zip")
dateDownloaded <- date()

# Unzip compressed files
unzip("dataset.zip")
