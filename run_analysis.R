##load and run an analysis of the data in the class assignment

##prerequisite is the package reshape2

## the following files must be in the working directory
## features.txt
## X_test.txt 
## X_train.txt
## Y_test.txt
## Y_train.txt
## subject_test.txt
## subject_train.txt
## activity_labels.txt

##process as follows:

##make sure the library reshape2 is loaded
library(reshape2)

## load the features file to use as column names, and do some processing to clean up the variable names [instruction step 4]
features <- read.table("./features.txt")
##remove some extraneous characters
features$V2 <- gsub('-','',features$V2)
features$V2 <- gsub('\\(','',features$V2)
features$V2 <- gsub('\\)','',features$V2)
##convert t and f to time and freq for easier reading
features$V2 <- gsub('^t','time',features$V2)
features$V2 <- gsub('^f','freq',features$V2)
##capitalize mean and std to help the later grep
features$V2 <- gsub('mean','Mean',features$V2)
features$V2 <- gsub('std','Std',features$V2)
##get rid of Mean because we don't want to use this field later
features$V2 <- gsub('gravityMean','gravity',features$V2)
##a little data cleanup
features$V2 <- gsub('BodyBody','Body',features$V2)

##load the X_test and X_train files and combine them, using the variable names from the previous step [project instruction step 1], then clean up
testdata <- read.table("X_test.txt",col.names=features$V2)
traindata <- read.table("X_train.txt",col.names=features$V2)
alldata <- rbind(testdata,traindata)
rm(testdata, traindata, features)

##load the Y_test and Y_train files and combine them, then clean up
ytestdata <- read.table("Y_test.txt",col.names=c("activitynum"))
ytraindata <- read.table("Y_train.txt",col.names=c("activitynum"))
allydata <- rbind(ytestdata,ytraindata)
rm(ytestdata, ytraindata)

##load the subject_test and subject_train files and combine them, then clean up
subjecttestdata  <- read.table("subject_test.txt",col.names=c("subject"))
subjecttraindata  <- read.table("subject_train.txt",col.names=c("subject"))
allsubjectdata <- rbind(subjecttestdata, subjecttraindata)
rm(subjecttestdata, subjecttraindata)

##split out the fields we want from the X_ data, then append the Y_ and subject_ data [instruction step 2], and clean up
subsetalldata <- alldata[,grep("Mean[X-Z]?$|Std[X-Z]?$",colnames(alldata))]
subsetalldata <- cbind(subsetalldata, allydata)
subsetalldata <- cbind(subsetalldata, allsubjectdata)
rm(alldata, allsubjectdata, allydata)

##melt the data so we can process it, and clean up
allmelt <- melt(subsetalldata, id = c("activitynum","subject"))
rm(subsetalldata)

##recast the data to calculate the means and make a wide table, and clean up
wide <- dcast(allmelt, activitynum + subject ~ variable, mean)
rm(allmelt)

##load the activity_label data, and append it to the wide file [instruction step 3], and clean up
actlabels <- read.table("activity_labels.txt",col.names=c("activitynum","activity"))
wide <- merge(wide, actlabels, by.x="activitynum",by.y="activitynum",all=TRUE)
rm(actlabels)

##put fields where we need them
wide<-wide[,-1]
wide<- wide[,c(ncol(wide),1:(ncol(wide)-1))]

##create the final output file [instruction step 5]
write.table(wide,file = "wide.txt",sep=",",row.name=FALSE)
