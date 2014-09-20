Getting-and-Cleaning-Data
=========================

#Introduction

The purpose of this project is to use Samsung Galaxy smartphone data collected from the accelerometer/gyroscope during different user activities and to clean it via applying various data cleaning techniques. 

#Dataprocessing
The raw data "UCI HAR dataset" was processed by the following manipulation of the training and testing sets. 
The features file consists of 561 variables. 
They are captured in the X_test.txt file. The activity labels are found in the Y_test.txt file.  The test subjects
are in the subject_test.txt file. Same format was applied to the training dataset. The tidy data set consists of only the stdev and Mean variables, in units of g's for Acc and rad/sec for Gyro, aggregated (via mean) for each subject per activity. For example the extracted data  consisted of "tBodyAcc-mean()-X","tBodyAcc-mean()-Y",
"tBodyAcc-mean()-Z","tBodyAcc-std()-X","tBodyAcc-std()-Y" etc.



#Analysis of the dataset
Run_analysis.R was created by the following step:
  Training and test data were combined and only the mean and standard deviation columns were kept.
  Then numeric activity codes were converted to their labels
  Tidy dataset was created using the means for all the test subjects for each of the activities.
  Mytidydata.txt can be found in this repository

#The code book
The CodeBook.md file provides all the used data variables.
