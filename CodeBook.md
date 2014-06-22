<h4>Abstract</h4>
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
	
<h4>Study Design</h4>  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

<h4>Data Set Information</h4>
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

<ul>
<li>Data Set Characteristics: Multivariate, Time-Series</li>
<li>Number of Instances: 10299</li>
<li>Area: Computer</li>
<li>Attribute Characteristics: N/A</li>
<li>Number of Attributes: 561</li>
<li>Date Donated: 2012-12-10</li>
<li>Associated Tasks: Classification, Clustering</li>
<li>Missing Values: N/A</li>
<li>Number of Web Hits: 92623</li>
</ul>

<h4/>Attribute Information</h4>
For each record in the dataset it is provided:
<ul>
<li>Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration</li>
<li>Triaxial Angular velocity from the gyroscope</li>
<li>A 561-feature vector with time and frequency domain variables</li>
<li>Its activity label</li>
<li>An identifier of the subject who carried out the experiment</li>
</ul>

<h4>Data columns</h4>  
 subject&nbsp;&nbsp;&nbsp;&nbsp;numeric(integer), length: 2  
 activity&nbsp;&nbsp;&nbsp;&nbsp;numeric(integer), length: 1  
 tBodyAcc_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAcc_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAcc_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAcc_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAcc_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAcc_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tGravityAcc_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tGravityAcc_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tGravityAcc_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tGravityAcc_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tGravityAcc_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tGravityAcc_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAccJerk_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAccJerk_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAccJerk_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAccJerk_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAccJerk_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAccJerk_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyGyro_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyGyro_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyGyro_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyGyro_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyGyro_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed   
 tBodyGyro_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyGyroJerk_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed    
 tBodyGyroJerk_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyGyroJerk_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyGyroJerk_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed    
 tBodyGyroJerk_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyGyroJerk_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAccMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAccMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tGravityAccMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tGravityAccMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAccJerkMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyAccJerkMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyGyroMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyGyroMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyGyroJerkMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 tBodyGyroJerkMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double), length: 1.16, signed  
 fBodyAcc_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyAcc_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyAcc_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyAcc_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyAcc_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyAcc_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyAccJerk_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyAccJerk_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyAccJerk_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyAccJerk_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyAccJerk_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyAccJerk_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyGyro_X_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyGyro_Y_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyGyro_Z_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyGyro_X_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyGyro_Y_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyGyro_Z_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyAccMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyAccMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyBodyAccJerkMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyBodyAccJerkMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyBodyGyroMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyBodyGyroMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyBodyGyroJerkMag_mean&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  
 fBodyBodyGyroJerkMag_std&nbsp;&nbsp;&nbsp;&nbsp;numeric(double),  length: 1.16, signed  


<h4>References</h4>  
http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/<br/>
http://dss.princeton.edu/online_help/analysis/codebook.htm<br/>
http://www.r-bloggers.com/reading-codebook-files-in-r/<br/>
http://www.inside-r.org/packages/cran/memisc/docs/codebook<br/>
https://daringfireball.net/projects/markdown/basics<br/>
  
  
<h4>Data Source</h4>  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip<br/>
<h6>Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012</h6>
  
<h6>Archive page last accessed: June 19, 2014</h6>
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#<br/>
