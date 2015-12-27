==================================================================			
Human Activity Recognition Using Smartphones Dataset[1] 			
			
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support 			
			
Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012			
Version 1.0			
==================================================================			
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.			
Smartlab - Non Linear Complex Systems Laboratory			
DITEN - Università degli Studi di Genova.			
Via Opera Pia 11A, I-16145, Genoa, Italy.			
activityrecognition@smartlab.ws			
www.smartlab.ws			
==================================================================			
			
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, 	
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we 	
captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained 	
dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 			

==================================================================	

List of transformations:
i) Re-labelled "activity" variable:
	1= WALKING

	2= WALKING_UPSTAIRS

	3 = WALKING_DOWNSTAIRS

	4= SITTING

	5= STANDING

	6= LAYING

ii) Made each variable name in the "features.txt" file unique and readable in R using the make.names command:
	(features[,"V2"]<-make.names(features[,"V2"], unique=TRUE))

==================================================================				
List of variables:			
	1	subjectID			The ID of each participant in the study. Ranges from 1 - 30
	2	activity 			Type of activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 							wearing a smartphone (Samsung Galaxy S II) on the waist.
	3	 tBodyAcc.mean...X		mean value of body acceleration in the X axis in the time domain.
	4	tBodyAcc.mean...Y		mean value of body acceleration in the Y axis in the time domain.
	5	tBodyAcc.mean...Z		mean value of body acceleration in the Z axis in the time domain.
	6	tBodyAcc.std...X		standard deviation value of body acceleration in the X axis in the time domain.
	7	tBodyAcc.std...Y 		standard deviation value of body acceleration in the Y axis in the time domain.
	8	tBodyAcc.std...Z		standard deviation value of body acceleration in the Z axis in the time domain.            
	9	tGravityAcc.mean...X	mean value of gravity acceleration in the X axis in the time domain.
	10	tGravityAcc.mean...Y	mean value of gravity acceleration in the Y axis in the time domain.
	11	tGravityAcc.mean...Z 	mean value of gravity acceleration in the Z axis in the time domain.
	12	tGravityAcc.std...X	 	standard deviation value of gravity acceleration in the X axis in the time domain.
	13	 tGravityAcc.std...Y 		standard deviation value of gravity acceleration in the Y axis in the time domain.
	14	 tGravityAcc.std...Z 		standard deviation value of gravity acceleration in the Z axis in the time domain.
	15	 tBodyAccJerk.mean...X 	mean value of body jerk acceleration in the X axis in the time domain.
	16	tBodyAccJerk.mean...Y 	mean value of body jerk acceleration in the Y axis in the time domain.
	17	tBodyAccJerk.mean...Z 	mean value of body jerk acceleration in the Z axis in the time domain.   
	18	tBodyAccJerk.std...X 	standard deviation of body jerk acceleration in the X axis in the time domain.
	19	tBodyAccJerk.std...Y 	standard deviation of body jerk acceleration in the Y axis in the time domain.           
	20	 tBodyAccJerk.std...Z 	standard deviation of body jerk acceleration in the Z axis in the time domain.           
	21	tBodyGyro.mean...X 		mean value of body gyroscope in the X axis in the time domain.
	22	tBodyGyro.mean...Y 		mean value of body gyroscope in the Y axis in the time domain.             
	23	tBodyGyro.mean...Z 		mean value of body gyroscope in the Z axis in the time domain.
	24	tBodyGyro.std...X 		standard deviation of body gyroscope in the X axis in the time domain.
	25	tBodyGyro.std...Y 		standard deviation of body gyroscope in the Y axis in the time domain.
	26	tBodyGyro.std...Z 		standard deviation of body gyroscope in the Z axis in the time domain.             
	27	tBodyGyroJerk.mean...X 	mean value of body jerk gyroscope in the X axis in the time domain.
	28	tBodyGyroJerk.mean...Y       	mean value of body jerk gyroscope in the Y axis in the time domain.   
	29	tBodyGyroJerk.mean...Z	mean value of body jerk gyroscope in the Z axis in the time domain.          
	30	tBodyGyroJerk.std...X	 standard deviation of body jerk gyroscope in the X axis in the time domain.
	31	tBodyGyroJerk.std...Y           	standard deviation of body jerk gyroscope in the Y axis in the time domain.
	32	 tBodyGyroJerk.std...Z          	standard deviation of body jerk gyroscope in the Z axis in the time domain.  
	33	tBodyAccMag.mean.. 	mean value of body acceleration magnitude in the time domain.
	34	 tBodyAccMag.std.. 		standard deviation of body acceleration magnitude in the time domain.    
	35	tGravityAccMag.mean..        	mean value of gravity acceleration magnitude in the time domain.  
	36	 tGravityAccMag.std..        	standard deviation of gravity acceleration magnitude in the time domain.            
	37	tBodyAccJerkMag.mean..          mean value of body jerk acceleration magnitude in the time domain.      
	38	tBodyAccJerkMag.std.. 	standard deviation of body jerk acceleration magnitude in the time domain.                   
	39	tBodyGyroMag.mean.. 	mean value of body gyroscope magnitude in the time domain.                           
	40	 tBodyGyroMag.std..                    standard deviation of body gyroscope magnitude in the time domain.             
	41	tBodyGyroJerkMag.mean..        mean value of body jerk gyroscope magnitude in the time domain.    
	42	 tBodyGyroJerkMag.std..	standard deviation of body jerk gyroscope magnitude in the time domain.                           
	43	fBodyAcc.mean...X 		mean value of body acceleration in the X axis in the frequency domain.
	44	fBodyAcc.mean...Y             	mean value of body acceleration in the Y axis in the frequency domain.
	45	fBodyAcc.mean...Z		mean value of body acceleration in the Z axis in the frequency domain.
	46	fBodyAcc.std...X          	standard deviation value of body acceleration in the X axis in the frequency domain.
	47	fBodyAcc.std...Y         	standard deviation value of body acceleration in the Y axis in the frequency domain.
	48	fBodyAcc.std...Z              	standard deviation value of body acceleration in the Z axis in the frequency domain.            
	49	fBodyAcc.meanFreq...X           	mean value of body acceleration in the X axis in the mean frequency domain.
	50	fBodyAcc.meanFreq...Y     	mean value of body acceleration in the Y axis in the mean frequency domain.
	51	fBodyAcc.meanFreq...Z         	mean value of body acceleration in the Z axis in the mean frequency domain.
	52	fBodyAccJerk.mean...X  	mean value of body jerk acceleration in the X axis in the frequency domain.
	53	fBodyAccJerk.mean...Y  	mean value of body jerk acceleration in the Y axis in the frequency domain.
	54	fBodyAccJerk.mean...Z  	mean value of body jerk acceleration in the Z axis in the frequency domain.   
	55	fBodyAccJerk.std...X      	standard deviation of body jerk acceleration in the X axis in the frequency domain.
	56	fBodyAccJerk.std...Y           	standard deviation of body jerk acceleration in the Y axis in the frequency domain.           
	57	fBodyAccJerk.std...Z           	standard deviation of body jerk acceleration in the Z axis in the frequency domain.           
	58	fBodyAccJerk.meanFreq...X     	mean value of body jerk acceleration in the X axis in the mean frequency domain.
	59	fBodyAccJerk.meanFreq...Y	mean value of body jerk acceleration in the Y axis in the mean frequency domain.
	60	fBodyAccJerk.meanFreq...Z   	mean value of body jerk acceleration in the Z axis in the mean frequency domain.   
	61	fBodyGyro.mean...X      	mean value of body gyroscope in the X axis in the frequency domain.
	62	fBodyGyro.mean...Y        	mean value of body gyroscope in the Y axis in the frequency domain.             
	63	fBodyGyro.mean...Z           	mean value of body gyroscope in the Z axis in the frequency domain.
	64	fBodyGyro.std...X            	standard deviation of body gyroscope in the X axis in the frequency domain.
	65	fBodyGyro.std...Y           	standard deviation of body gyroscope in the Y axis in the frequency domain.
	66	fBodyGyro.std...Z         	standard deviation of body gyroscope in the Z axis in the frequency domain.             
	67	fBodyGyro.meanFreq...X         	mean value of body jerk gyroscope in the X axis in the mean frequency domain.
	68	fBodyGyro.meanFreq...Y       	mean value of body jerk gyroscope in the Y axis in the mean frequency domain.   
	69	fBodyGyro.meanFreq...Z        	mean value of body jerk gyroscope in the Z axis in the mean frequency domain.          
	70	fBodyAccMag.mean..    	mean value of body acceleration magnitude in the frequency domain.
	71	fBodyAccMag.std..            	standard deviation of body acceleration magnitude in the frequency domain.    
	72	fBodyAccMag.meanFreq..        	mean value of body acceleration magnitude in the mean frequency domain.    
	73	fBodyBodyAccJerkMag.mean.. 	mean value of body body jerk magnitude in the frequency domain.
	74	fBodyBodyAccJerkMag.std..   	standard deviation of body body jerk magnitude in the frequency domain.
	75	fBodyBodyAccJerkMag.meanFreq..	mean value of body body jerk magnitude in the mean frequency domain.
	76	fBodyBodyGyroMag.mean..   	mean value of body body gyroscope magnitude in the frequency domain.
	77	fBodyBodyGyroMag.std..    	standard deviation of body body gyroscope magnitude in the frequency domain.    
	78	fBodyBodyGyroMag.meanFreq..   	mean value of body body gyroscope magnitude in the mean frequency domain.
	79	fBodyBodyGyroJerkMag.mean..    	mean value of body body jerk gyro magnitude in the  frequency domain.
	80	fBodyBodyGyroJerkMag.std..	standard deviation of body body gyroscope jerk magnitude in the frequency domain.    
	81	fBodyBodyGyroJerkMag.meanFreq..	mean value of body body gyroscope jerk magnitude in the mean frequency domain.
