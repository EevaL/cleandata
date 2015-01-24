 
 This code book describes the variables, the data, and steps performed (in run_analysis.r) to clean up the said data. 
 Further information on the study and the original data can be found from here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 

# Output data: 
The script produces two separate csv files. 

1. fulldata.csv 
 This csv file contains data for each measurement for each test subject and activity. The actual measurement data is a subset, containing only mean and standard deviations for each measurement. 
 
 "subject" - number identifying the test subject (person)
 "Activity" - a text value explaining what the test subject was doing at the time of the measurement. 
 "tBody*", fBody* and tGravity* - fields giving various mean() or standard deviation std() values for each measurement. 
 
2. summarydata.csv 
This csv file contains a summary of the data per test subject and activity. The summary is based on mean value for each person and activity. 

 "subject" - number identifying the test subject (person)
 "Activity" - a text value explaining what the test subject was doing at the time of the measurement. 
 "tBody*", fBody* and tGravity* - fields giving means of various mean() or standard deviation std() values per subject and activity. 
 
# Steps done to tidy up the data:  
 
## Step1: 

read all the data into R, and give a meaningful name to the columns in each dataframe.  
  
## Step2: 

Extract standard deviation (std) and mean values from the complete set of measurements provided. 
  
## Step3: 

Combine different dataframes into one. First bind columns of Test Subject (person), Activity and Measurements (for test and train each).
Then bind rows (Test and Training data).

## Step4:

Make Activity data more meaningful by replacing number values with text.
Print out fulldata.csv
  
## Step5 

Create a summary of the full data set by calculating the mean of values per test subject and activity.   
