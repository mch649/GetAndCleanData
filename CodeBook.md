
<h4>Study Design</h4>  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

<h4>Data Set Information</h4>
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset.

Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
	

Data Set Characteristics: Multivariate, Time-Series<br/>
Number of Instances: 10299<br/>
Area: Computer<br/>
Attribute Characteristics: N/A<br/>
Number of Attributes: 561<br/>
Date Donated: 2012-12-10<br/>
Associated Tasks: Classification, Clustering<br/>
Missing Values? N/A<br/>
Number of Web Hits: 92623<br/>

<h4/>Attribute Information</h4>

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 
 

<h4>Summary</h4>  
i interpreted the assignment to mean include only 'test' and 'train' files with columns containing
'mean()' and 'std()' with 'activity' and 'subject' columns added from other data files.
 

<h4>Data columns</h4>  
 subject&nbsp;&nbsp;&nbsp;&nbsp;numeric(integer), length: 2  
 activity&nbsp;&nbsp;&nbsp;&nbsp;numeric(integer), length: 1  
 tBodyAcc_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAcc_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAcc_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAcc_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAcc_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAcc_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tGravityAcc_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tGravityAcc_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tGravityAcc_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tGravityAcc_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tGravityAcc_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tGravityAcc_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAccJerk_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAccJerk_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAccJerk_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAccJerk_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAccJerk_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAccJerk_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyro_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyro_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyro_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyro_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyro_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyro_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyroJerk_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyroJerk_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyroJerk_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyroJerk_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyroJerk_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyroJerk_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAccMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAccMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tGravityAccMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tGravityAccMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAccJerkMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyAccJerkMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyroMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyroMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyroJerkMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 tBodyGyroJerkMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAcc_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAcc_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAcc_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAcc_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAcc_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAcc_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAccJerk_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAccJerk_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAccJerk_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAccJerk_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAccJerk_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAccJerk_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyGyro_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyGyro_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyGyro_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyGyro_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyGyro_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyGyro_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAccMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyAccMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyBodyAccJerkMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyBodyAccJerkMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyBodyGyroMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyBodyGyroMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyBodyGyroJerkMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  
 fBodyBodyGyroJerkMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double, scientific notation), length: 15  



<h4>Data Source</h4>  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip<br/>
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
  
<h4>References</h4>  
http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/<br/>
http://dss.princeton.edu/online_help/analysis/codebook.htm<br/>
http://www.r-bloggers.com/reading-codebook-files-in-r/<br/>
http://www.inside-r.org/packages/cran/memisc/docs/codebook<br/>
https://daringfireball.net/projects/markdown/basics<br/>
  
  
