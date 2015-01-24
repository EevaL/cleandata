

cleanData <- function() {
  
  setwd("C://Users/lennoeev/My Documents/GitHub/cleandata")
  setwd("C://Users/lennoeev/My Documents/GitHub/cleandata/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")
  
  
  ###Step1 (see codebook.md)
  
  featuresTable <- read.table("features.txt", header = FALSE)
  #reading all the features (column names for the measurments)
  
  featuresNames <- featuresTable[ , 2] #tätä käytetään indeksinä
  #creating a vector of the features in the data set
  
  activityTable <- read.table("activity_labels.txt", header = FALSE)
  colnames(activityTable) <- c("Actnumber", "Activity")
  #reading in the activity labels and numbers
  
  setwd("C://Users/lennoeev/My Documents/GitHub/cleandata/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test")

  testDataPerson <- read.table("subject_test.txt", sep = " ", header = FALSE)
  testDataLabels <- read.table("y_test.txt", sep = " ", header = FALSE)
  testDataSet <- read.table("X_test.txt")
  #reading the test data, as well as corresponding info an test subject and activity

  setwd("C://Users/lennoeev/My Documents/GitHub/cleandata/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train")
  
  trainDataPerson <- read.table("subject_train.txt", sep = " ", header = FALSE)
  trainDataLabels <- read.table("y_train.txt", sep = " ", header = FALSE)
  trainDataSet <- read.table("X_train.txt")
  #reading the training data, as well as corresponding info an test subject and activity
  
  colnames(testDataSet) <- featuresNames
  colnames(trainDataSet) <- featuresNames
  #renaming the columns in data set
  
  colnames(trainDataPerson) <- "Subject"
  colnames(testDataPerson) <- "Subject"
  
  colnames(trainDataLabels) <- "Actnumber"
  colnames(testDataLabels) <- "Actnumber"
  
  
  ###Step2 (see codebook.md)
    
  testDataSet2 <- testDataSet[, grep("std()|mean()", colnames(testDataSet))]
  trainDataSet2 <- trainDataSet[, grep("std()|mean()", colnames(trainDataSet))]
  #subsetting data set to include only mean & std values
  
  
  ###Step3 (see codebook.md)
  
  testDataSet3 <- cbind(testDataPerson, testDataLabels, testDataSet2)
  trainDataSet3 <- cbind(trainDataPerson, trainDataLabels, trainDataSet2)

  #combining Labels, Subjects and Data
  
  fullDataSet <- rbind(testDataSet3, trainDataSet3)
  #combining Test and Train data in one Dataframe
  
  
  ###Step4 (see codebook.md)
  
  setwd("C://Users/lennoeev/My Documents/GitHub/cleandata")
  
  #write.csv(fullDataSet, file = "fulldataTest.csv")
  
  fullDataSetInterim <- merge(fullDataSet, activityTable, by.x = "Actnumber", by.y = "Actnumber", sort = FALSE)
  
  fullDataSet2 <- subset(fullDataSetInterim, select = Subject:Activity)
  #replaces Activity numbers with full descriptive labels
  
  write.csv(fullDataSet2, file = "fulldata.csv")
  #writes full data set into a csv file in working folder
  
  ###Step5 (see codebook.md)
  
  library(plyr)
  
  summaryDataSet <- ddply(fullDataSet2, .(Subject,Activity), numcolwise(mean))
  #summarises the data by subject and activity
  
  write.csv(summaryDataSet, file = "summarydata.csv")
  #writes summarised data set into a csv file
  
  
}