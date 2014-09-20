
##You should create one R script called run_analysis.R that does the following. 

##Merges the training and the test sets to create one data set.
##Extracts only the measurements on the mean and standard deviation for each measurement. 
##Uses descriptive activity names to name the activities in the data set
##Appropriately labels the data set with descriptive variable names. 
##Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


##set working directory into Test

setwd("~/data cleaning/UCI HAR Dataset")

##Read and Create Train set variables

train_st <- read.table("train/subject_train.txt")
train_x <- read.table("train/x_train.txt")
train_y <- read.table("train/y_train.txt")

##Read and create Test set variables

test_st <- read.table("test/subject_test.txt")
test_x <- read.table("test/x_test.txt")
test_y <- read.table("test/y_test.txt")

##Use features to get the header names for the dataset
features <- read.table("features.txt")
activity <- read.table("activity_labels.txt")

##create dataframe and merge both training and test dataset together
df1 <- rbind(train_x, test_x)

##Extract only the measured mean and std variables only
names(df1) <- features$V2

cleandf1 <- grep("-mean\\(\\)", names(df1))
cleandf2 <- grep("-std\\(\\)", names(df1))
clean <- c(cleandf1, cleandf2)
stripclean <-df1[ ,sort(clean)]

##Subject
df2 <- rbind(train_st, test_st)
stripclean$Subject <- df2[,1]

##Lookup activity label names 

df3 <- rbind(train_y, test_y)
stripclean$merge <- df3[,1]

## Use descriptive activity names to name the activities for the dataset
names(activity) <- c("merge", "Activity")

mydata <- merge(stripclean, activity)
mydata_clean <- mydata[,2:ncol(mydata)]

##Create Independent tidy data and write it into a file
tidy_data <- aggregate(. ~ Subject+Activity, data=mydata_clean, FUN= mean)
write.table(tidy_data, file = "mytidydata.txt",row.names=FALSE,col.names=TRUE,sep=",")


