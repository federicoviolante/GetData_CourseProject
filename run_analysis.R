## read original files
print("reading source dataset...")
flush.console()
xTest <- read.table("./test/X_test.txt")
yTest <- read.table("./test/y_test.txt")
sTest <- read.table("./test/subject_test.txt")
feat <- read.table("./features.txt")
act <- read.table("./activity_labels.txt")
xTrain <- read.table("./train/X_train.txt")
yTrain <- read.table("./train/y_train.txt")
sTrain <- read.table("./train/subject_train.txt")

print("selecting columns...")
flush.console()
## select requested columns (-std e -mean)
selObs=rbind(feat[grep("-std\\()",feat$V2),], feat[grep("-mean\\()",feat$V2),])
## sort on column position
selObs=selObs[order(selObs$V1),]

## array of columns to extract
myCols=selObs[order(selObs$V1),1]
## array of selected column names
myColNames=lapply(selObs[order(selObs$V1),2],as.character)

print("merge selected columns of train and test data...")
flush.console()
## merge selected columns of train and test data 
final<-rbind(cbind(sTrain,yTrain,xTrain[,myCols]),cbind(sTest,yTest,xTest[,myCols]))

## reassign column names
print("making some cosmetic work...")
flush.console()
colnames(final) <- c("subject", "activity", gsub("\\(\\)", "",myColNames))
colnames(final)<-gsub("\\-std\\-", "StDev", gsub("\\-mean\\-", "Mean",colnames(final)))
colnames(final)<-gsub("\\-std", "StDev", gsub("\\-mean", "Mean",colnames(final)))

## substitutes tables for activities
## I intended that for "Uses descriptive activity names to name the activities in the data set"
actLk=data.frame(V3=c("Walk", "UpStairs", "DownStairs", "Sit", "Stand", "Lay"))
for (i in 1:6 ) {
  final$activity[final$activity==i] <- as.character(actLk[i,1])
}

# create and write the tidy data set
# I saved as tidy.csv.txt to upload the csv disguised as txt on coursera
# obviously to read it you should use read.csv()
#
print("generate tidy dataset as tidy.csv.txt")
flush.console()
library(doBy)
write.csv((summaryBy(.~activity+subject, data=final,FUN=mean, keep.names=TRUE)),"tidy.csv.txt")
print("Done!")
