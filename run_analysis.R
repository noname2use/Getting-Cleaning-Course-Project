train<- read.table("./train/X_train.txt")

test<- read.table("./test/X_test.txt")

features<-read.table("./features.txt")
 
activitylabels<-read.table("./activity_labels.txt")  

trainlabel<-read.table("./train/y_train.txt")

testlabel<-read.table("./test/y_test.txt")

subjecttrain<-read.table("./train/subject_train.txt")

subjecttest<-read.table("./test/subject_test.txt")

traintest<-rbind(train, test)

features[,"V2"]<-make.names(features[,"V2"], unique=TRUE)

selectmean<-grep("mean",features[,"V2"]) 

selectstd<-grep("std",features[,"V2"]) 

selectmeanstd<-sort(c(selectmean,selectstd))

meanstd<-traintest[,selectmeanstd] 

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


meanstdcolname<-features[selectmeanstd,"V2"]

colnames(meanstd)<-c(meanstdcolname)

colnames(subjecttest)<-c("subjectID")

colnames(subjecttrain)<-c("subjectID")

colnames(testlabel)<-c("activity")

colnames(trainlabel)<-c("activity")


combinesubject<-rbind(subjecttrain, subjecttest)

combineactivity<-rbind(trainlabel, testlabel)

data<-cbind(combinesubject, combineactivity,meanstd)

data$subjectID<-as.factor(data$subjectID)

library(dplyr)

group<- group_by(data, subjectID, activity)

tidy<-summarise_each(group, funs(mean))

write.table(tidy, file ="tidydata.txt", row.name=FALSE)