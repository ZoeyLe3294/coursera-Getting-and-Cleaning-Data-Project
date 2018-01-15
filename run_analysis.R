
## select wanted feature
 
feature=read.table("features.txt")  ##load feature
mean_std=grep("-(mean|std)\\(\\)", feature[, 2])

##load infomation of subject number and activity value for train and test data

trainLabel=read.table("./train/Y_train.txt")
trainSubject=read.table("./train/subject_train.txt")
testLabel=read.table("./test/Y_test.txt")
testSubject=read.table("./test/subject_test.txt")

##load values of wanted feature for train and test data

testSet=read.table("./test/X_test.txt")[,mean_std]
trainSet=read.table("./train/X_train.txt")[,mean_std]

##complete train and test data with desire measurements

trainData=cbind(trainSubject,trainLabel,trainSet)
testData=cbind(testSubject,testLabel,testSet)

##merge train data and test data

data=rbind(trainData,testData)

##replace activity values by decriptive names
activity=read.table("activity_labels.txt")
data[,2]=activity[data[,2],2]

##appropriately names column with descriptive names
colnames(data)=c("Subject","Activity",as.character(feature[mean_std,2]))

##write tidy data set text file
write.table(data,"tidy data.txt",row.names = FALSE)


