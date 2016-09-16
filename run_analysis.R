# Load the datasets
train <- read.table("UCI HAR Dataset/train/X_train.txt")
Ytrain <- read.table("UCI HAR Dataset/train/Y_train.txt")
Subjectrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(Subjectrain, Ytrain, train)

test <- read.table("UCI HAR Dataset/test/X_test.txt")
Ytest <- read.table("UCI HAR Dataset/test/Y_test.txt")
Subjectest <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(Subjectest, Ytest, test)

# Merges the training and the test sets to create one data set
allData <- rbind(train, test)

# Load features
features <- read.table("UCI HAR Dataset/features.txt")
colnames(allData) <- c("subject", "activity", as.character(features[, 2]))

# Extract only the measurements on the mean and standard deviation
ext.features <- grep(".*mean.*|.*std.*", as.character(features[, 2]))
allData <- allData[, c(1, 2, ext.features + 2)]

# Appropriately labels the data set with descriptive variable names
ext.features.names <- droplevels(features[ext.features, 2])
ext.features.names <- gsub('-mean', 'Mean', ext.features.names)
ext.features.names <- gsub('-std', 'Std', ext.features.names)
ext.features.names <- gsub('[-()]', '', ext.features.names)

colnames(allData) <- c("subject", "activity", ext.features.names)

# Load activity labels
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")

# turn activities & subjects into factors
allData$activity <- factor(allData$activity, levels = activityLabels[, 1], 
                           labels = as.character(activityLabels[, 2]))
allData$subject <- as.factor(allData$subject)

allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

write.table(allData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)