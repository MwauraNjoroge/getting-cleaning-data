testSet <- read.table("./test/X_test.txt")
testLabels <- read.table("./test/y_test.txt")
trainingSet <- read.table("./train/X_train.txt")
trainingLabels <- read.table("./train/y_train.txt")
features <- read.table("./features.txt", stringsAsFactors=FALSE)
activityLabels <- read.table("./activity_labels.txt")
testSubjects <- read.table("./test/subject_test.txt")
trainingSubjects <- read.table("./train/subject_train.txt")
testData <- data.frame(subject=testSubjects, activity=testLabels, testSet)
trainingData <- data.frame(subject=trainingSubjects,activity=trainingLabels, trainingSet)
allData <- rbind(testData, trainingData)
names(allData) <- c('subject', 'activity', features$V2)
meanValues <- allData[,grepl('mean()', names(allData), fixed=TRUE)]
stdValues <- allData[,grepl('std()', names(allData), fixed=TRUE)]
allData$activity <- activityLabels$V2[allData$activity]
tidyData <- data.frame(allData$subject, allData$activity,allData[,grepl('mean()', names(allData), fixed=TRUE)] )
