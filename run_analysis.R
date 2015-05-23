run_analysis <- function() {
    setwd('UCI HAR Dataset/')
    
    ## Step 1 - Merging the training and the test sets to create one data set.
    #########################################################################
    #reading test tables
    subjectTest <- read.table("./test/subject_test.txt")
    yTest <- read.table("./test/y_test.txt")
    xTest <- read.table("./test/X_test.txt")
    
    #reading train tables
    subjectTrain <- read.table("./train/subject_train.txt")
    yTrain <- read.table("./train/y_train.txt")
    xTrain <- read.table("./train/X_train.txt")
    
    #merging train and test tables
    subjectTotal <- rbind(subjectTrain,subjectTest)
    yTotal <- rbind(yTrain,yTest)
    xTotal <- rbind(xTrain,xTest)
    
    ## removing unused variable to free memory
    rm(subjectTest,subjectTrain,yTest,yTrain,xTest,xTrain)
    
    ##Step 2 - Extracting only the measurements on the mean and standard deviation for each measurement. 
    #################################################################################################
    
    #reading features
    colNames <- read.table("features.txt")   
    
    #filtering only mean and std variables
    mean_and_std <- filter(colNames,grepl('-(mean|std)[(]',colNames$V2))
    
    #creating data frame with only needed columns 
    xTotal <- select(xTotal,mean_and_std$V1)
    
    ##Step 3 - Using descriptive activity names to name the activities in the data set
    ################################################################################################
    
    #reading activity labels
    actNames <- read.table("activity_labels.txt")
    
    #replacing activity code with activity name
    yTotal<-sapply(yTotal,function(i) actNames[yTotal[,],2])
    
    #Step 4 - Appropriately labeling the data set with descriptive variable names. 
    ###############################################################################################
    
    colnames(xTotal) <- mean_and_std$V2 
    xTotal <- cbind(yTotal,xTotal)
    xTotal <- cbind(subjectTotal,xTotal)
    colnames(xTotal)[1:2] <- c("Subject","Activity")
        
    #Step 5 - creating a second, independent tidy data set with the average of each variable for each activity and each subject
    ################################################################################################
    
    #creating a list of subjects
    subjects <- unique(xTotal$Subject)
    
    #creating a list of Activities
    activities <- as.character(unique(xTotal$Activity))
    
    #creating temporary empty variables
    subColumn <- vector()
    actColumn <- vector()
    tidyData <- data.frame()
    
    for( i in 1:length(subjects) ) {  #cycle through all subjects
        for( j in 1:length(activities) ) { #cycle through all activities 
            tVal <- filter(xTotal,Subject == subjects[i] & Activity == activities[j]) #filtering subject+activity rows
            tidyData <- rbind(tidyData,colMeans(tVal[3:ncol(xTotal)])) #calculate mean for every columns and add result to tidy dataframe
            
            #as tidyData data frame doesn't contain Subject and Activity variables adding those to temp variables 
            subColumn <- c(subColumn,subjects[i]) 
            actColumn <- c(actColumn,activities[j])
        }
    }
    
    #adding Action column
    tidyData <- cbind(actColumn,tidyData)
    
    #adding Subject column
    tidyData <- cbind(subColumn,tidyData)
    
    #set column names
    colnames(tidyData) <- colnames(xTotal)
    
    setwd('..')
    
    return(tidyData)
}
