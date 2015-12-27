##You should create one R script called run_analysis.R that does the following. 
##1. Merges the training and the test sets to create one data set.
##2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##3. Uses descriptive activity names to name the activities in the data set
##4. Appropriately labels the data set with descriptive variable names. 
##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Load the training and test datasets and respective subject and activity labels

##load the datasets
train<- read.table("./train/X_train.txt")
test<- read.table("./test/X_test.txt")

##load the column labels/List of all features.
features<-read.table("./features.txt")
 
##load the activity labels
activitylabels<-read.table("./activity_labels.txt")  ##Links the class labels with their activity name.
trainlabel<-read.table("./train/y_train.txt")
testlabel<-read.table("./test/y_test.txt")

##load the subject labels. Each row identifies the subject who performed the activity for each window sample.
subjecttrain<-read.table("./train/subject_train.txt")
subjecttest<-read.table("./test/subject_test.txt")

## 1. Merges the training and the test sets to create one data set.
traintest<-rbind(train, test)

##2. Extracts only the measurements on the mean and standard deviation for each measurement. 

features[,"V2"]<-make.names(features[,"V2"], unique=TRUE)
selectmean<-grep("mean",features[,"V2"]) ##selects the index of columns to select which contains "mean"
selectstd<-grep("std",features[,"V2"]) ##selects the index of columns to select which contains "std"
selectmeanstd<-sort(c(selectmean,selectstd)) ##combines the index of columns to select in the combined dataset. 

meanstd<-traintest[,selectmeanstd] 

##3. Uses descriptive activity names to name the activities in the data set
library(plyr)
testlabel$V1<- as.factor(testlabel$V1)
testlabel$V1<-revalue(testlabel$V1, c(
				"1"="WALKING", 
				"2" = "WALKING_UPSTAIRS", 
				"3" = "WALKING_DOWNSTAIRS", 
				"4" = "SITTING", 
				"5" = "STANDING", 
				"6"= "LAYING"))

trainlabel$V1<- as.factor(trainlabel$V1)
trainlabel$V1<-revalue(trainlabel$V1, c(
				"1"="WALKING", 
				"2" = "WALKING_UPSTAIRS", 
				"3" = "WALKING_DOWNSTAIRS", 
				"4" = "SITTING", 
				"5" = "STANDING", 
				"6"= "LAYING"))

##4. Appropriately labels the data set with descriptive variable names. 

##use the selected column names to label the meanstd dataset
meanstdcolname<-features[selectmeanstd,"V2"]
colnames(meanstd)<-c(meanstdcolname)

##label the column names in the respective datasets 
colnames(subjecttest)<-c("subjectID")
colnames(subjecttrain)<-c("subjectID")
colnames(testlabel)<-c("activity")
colnames(trainlabel)<-c("activity")


##combine the activity labels and subject labels with the meanstd dataset
combinesubject<-rbind(subjecttrain, subjecttest)
combineactivity<-rbind(trainlabel, testlabel)
data<-cbind(combinesubject, combineactivity,meanstd)

##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##set the subjectID as a factor
data$subjectID<-as.factor(data$subjectID)

library(dplyr)

##group into subjectID and activity
group<- group_by(data, subjectID, activity)

##summarise each group by mean
tidy<-summarise_each(group, funs(mean))

##create the tidy data set.
write.table(tidy, file ="tidydata.txt", row.name=FALSE)