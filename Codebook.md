# Introduction
run_analysis.R performs steps in order to combine and create a tidy data set only with subject, descriptive activity names and mean or standard deviation for each measurement
	. select wanted features which is only the mean and standard deviation for each measurement
	. load information of subject numbers and activity values for train and test data
	. load values of measurement for train and test data and then select only desired features selected from step 1
	. complete train and test data with desire measurements by using cbind() to combine columns of subject number, activity values and desired measurements for train and test data
	. merge train data and test data by using rbind() to create one single data set
	. replace activity values by decriptive names
	. appropriately names column with descriptive names
	. export a text file of the result as tidy data

# Variables
	. feature: all the features that has been provided
	. mean_std: only mean and standard deviation of each measurement
	. trainLabel/testLabel: activity value of train/test data set
	. trainSubject/testSubject: subject number range 1-30 of train/test data set
	. trainSet/testSet: collected values of desired features for train/test data set
	. trainData/testData: complete train/test data set
	. data: one single big data as result after merging train and test data set
	. activity: descriptive activity names
	. Finally, export "tidy data.txt" as the data after the cleaning process.
