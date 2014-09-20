Getting-and-Cleaning-Data
=========================

#Introduction

The purpose of this project is to use the Samsung Galaxy smartphone data collected from the accelerometers and clean it via applying various data cleaning techniques. 

#Dataprocessing
The raw data"UCI HAR dataset" repository was processed by following various manipulation
from training and testing sets. The features file consists of 561 variables that are not labeled very well. 
They are captured in the X_test.txt file. The activity labels are found in the y_test.txt file.  The test subjects
are in the subject_test.txt file. Same format was applied to the training dataset.



#Analysis of the dataset
Run_analysis.R was created by the following step:
  Merge and aggregate was performed to obtain the mean and standard deviation data
  Tidy dataset was created using the means for all the test subject for each of the activity.
  Mytidydata.txt can be found in this repository

#The code book
The CodeBook.md file provides all the used data variables.
