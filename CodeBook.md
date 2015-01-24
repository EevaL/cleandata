 
 24.1.2015
 
 This code book describes the variables, the data, and steps performed (in run_analysis.r) to clean up the said data. 
 Further information on the study and the original data can be found from here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 

# Output data: 
The script produces two separate txt files. 

1. fulldata.txt
 This file contains data (in csv format) for each measurement for each test subject and activity. The actual measurement data is a subset, containing only mean and standard deviations for each measurement. 
 
 "subject" - number identifying the test subject (person)
 "Activity" - a text value explaining what the test subject was doing at the time of the measurement. 
 "tBody*", fBody* and tGravity* - fields giving various mean() or standard deviation std() values for each measurement. 
 
 This file contains 10299 records (in rows), and 81 attributes (in columns).
 
2. summarydata.txt
This file contains a summary of the data (in csv format) per test subject and activity. The summary is based on mean value for each person and activity. 

 "subject" - number identifying the test subject (person)
 "Activity" - a text value explaining what the test subject was doing at the time of the measurement. 
 "tBody*", fBody* and tGravity* - fields giving means of various mean() or standard deviation std() values per subject and activity. 
 
 This file contains 180 records (in rows), and 81 attributes (in columns).