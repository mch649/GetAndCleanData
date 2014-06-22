
run_analysis <- function(){

    cat("\n\n 
        
        run_analysis.R -

        The purpose of this script is to demonstrate how to use `tidy data` 
        techniques, as shown in Coursera's online Data Science class,
        \"Getting and Cleaning Data\".\n

        Except for a prompt to continue and another prompt at the script end for
        choice of file format, the script is completely automated.\n

        This R script will take a minute or so to (re)run if you have already
        downloaded the data sets. Otherwise it may take as long as on my machine
        - approximately 5 minutes.
        The script is divided into steps 0-6. Data will be downloaded from the
        hard-coded URL to your current workspace, unzipped and processed using 
        the R packages `utils` and `reshape2`. The script requires the two
        packages - you will need to install them as necessary.
        The script uses melt() and dcast() to perform data manipulations to tidy the data.
        The script produces an output file, `tidydata`, in the current workspace.

        The script pauses at the end, waiting for the user to press a single key
        to select an output file format. By pressing T,C or ENTER, you can choose 
        a TAB, CSV, or SPACE delimited format.
        
        This helped me to check the data file on my Windows machine as double-clicking
        on the TAB or CSV data file conveniently loads the data into Excel.
        Reminder: Excel may display data according to default format.

        The function is called simply: run_analysis().
        
    \n\n")

    cat("Pressing ENTER will complete the script, `Q` will quit.\n")
    response <- toupper(readline("Press ENTER to continue, Q to quit: "))
    if(response == "Q"){ cat("Goodbye"); stop() }#if
    
    require(utils)
    require(reshape2)
    
    
    # 0) download and unzip dataset from internet source into workspace
    cat("\n\nStep 0. Download and unzip datasets to current workspace.\n")

    filename <- "UCIHARDataset.zip"
    foldername <- "UCI HAR Dataset"
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

    # download
    if(!file.exists(filename)){
        print(paste("downloading file:",filename))
        print("takes approx. 5 minutes on my pc")
        download.file(url,destfile=filename,method="curl")
    }else{
        print(paste("file:",filename," , already exists."))
    }#if

    # unzip
    if(!foldername %in% dir()){
        unzip(filename)
    }else{
        print(paste("folder:",foldername," , already exists."))
    }#if



    # 1) Read and merge the training and the test sets to create one data set.
    cat("\n\nStep 1. Read data files and merge into a single dataset from `test` and `train` sets.\n")

    # `features.txt` data for column selection and naming
    features_data <- read.table("./UCI HAR Dataset/features.txt")
    features <-as.matrix(features_data$V2)
    f <- as.vector(features,mode="character")

    # `test` data
    X_test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")
    y_test_data <- read.table("./UCI HAR Dataset/test/y_test.txt")
    # apply originial column names
    colnames(X_test_data)<- features
    # append additional data column
    subject_test_data <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    X_test_data["subject"] <- subject_test_data  # add `subject` column for dataset 'test'
    X_test_data["activity"] <- y_test_data       # add `activity` column for dataset 'test'


    # `train` data
    X_train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")
    y_train_data <- read.table("./UCI HAR Dataset/train/y_train.txt")
    # apply originial column names
    colnames(X_train_data)<- features
    # append additional data column
    subject_train_data <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    X_train_data["subject"] <- subject_train_data  # add `subject` column for dataset 'train'
    X_train_data["activity"] <- y_train_data       # add `activity` column for dataset 'train'


    # merge both datasets together
    # contains all 563 columns of read data
    merged_data <- merge(X_test_data,X_train_data,all=TRUE)



    # 2) Work on column name simplification and column selection for analysis.
    cat("\n\nStep 2. Work on column name simplification and column selection for analysis.\n")

    # collect original column names
    merged_data_names <- names(merged_data)

    # eliminate unwanted column name characters and rename selected columns
    column_names <- gsub("()", "", merged_data_names, fixed = TRUE)
    column_names <- gsub("-mean", "_mean", column_names, fixed = TRUE)
    column_names <- gsub("-std", "_std", column_names, fixed = TRUE)
    column_names <- gsub("_mean-X", "_X_mean", column_names, fixed = TRUE)
    column_names <- gsub("_mean-Y", "_Y_mean", column_names, fixed = TRUE)
    column_names <- gsub("_mean-Z", "_Z_mean", column_names, fixed = TRUE)
    column_names <- gsub("_std-X", "_X_std", column_names, fixed = TRUE)
    column_names <- gsub("_std-Y", "_Y_std", column_names, fixed = TRUE)
    column_names <- gsub("_std-Z", "_Z_std", column_names, fixed = TRUE)

    # reapply simplified column names to merged data set
    colnames(merged_data) <- column_names

    # eliminate columns with `meanFreq`
    column_names_longlist <- column_names[grep("-mean()|-mean()-X|-mean()-Y|-mean()-Z|-std()|-std()-X|-std()-Y|-std()-Z",f)]
    column_names_freqlist <- column_names[grep("-meanFreq()|-meanFreq()-X|-meanFreq()-Y|-meanFreq()-Z",f)]
    column_names_difflist <- setdiff(column_names_longlist,column_names_freqlist)
    column_names_difflist[67] <- "subject"
    column_names_difflist[68] <- "activity"
    
    # select desired columns by names that include `mean`, `std`, `activity` and `subject`
    merged_data <- merged_data[,column_names_difflist]
    
    #reorganize columns; place subject and activity as first 2 columns
    mydata <- merged_data[c(67:68,1:66)]

    # dump unnecessary data - free memory
    rm(X_test_data,y_test_data,X_train_data,y_train_data,subject_test_data,subject_train_data,merged_data_names,column_names,merged_data)



    # 3) Insert descriptive activity names into the data set.
    cat("\n\nStep 3. Alter activity names for activity column.\n")

    activities <- factor(mydata$activity)
    new_activity_labels <- c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
    mydata$activity <- factor(activities,levels=c(1:6),labels=c(new_activity_labels))



    # 4) Create a second, independent tidy data set with the average of
    #    each variable for each activity and each subject. Write to file.
    cat("\n\nStep 4. Run `melt` and `dcast` on data to create `tidy` output text.\n")

    meltdata <- melt(mydata,c("subject","activity"),measure.vars=colnames(mydata)[3:68])
    tidydata <- dcast(meltdata,subject + activity ~ variable,mean)

    
    
    # 5) Write data output file.
    cat("\n\nStep 5. Select a data format for the output file.\n")
    
    print("Would you like a TAB, COMMA, or SPACE delimited output file?")
    response <- toupper(readline("Enter a 'T', 'C' or just press ENTER [T/C/ENTER]: "))
    
    if(response == 'T'){
        write.table(tidydata,file="tidydata.tab",sep="\t", row.names = F)
        extension <- "tab"
    }else if (response == 'C'){
        write.table(tidydata,file="tidydata.csv",sep=",", row.names = F)
        extension <- "csv"
    }else{
        write.table(tidydata,file="tidydata.txt",sep=" ", row.names = F)
        extension <- "txt"
    }#if
        
    
    
    # 6) Complete.  
    cat("\n\nStep 6. Script completed. There should be a file in your workspace named: ",
    paste('tidydata',extension, sep='.'))
    
}#run_analysis()

#run_analysis()

