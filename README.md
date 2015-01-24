cleandata
==========

This repo contains code to clean and summarise the data set XX (from XX). It also contains the data and related documentation (retrieved on the 9th of January, 2015). 

To run the script you need to download the data and unzip all files in your working directory, 
as well as set the correct path to your working directory in the beginning of the run_analysis.R cleanData() function. 

Program expects dplyr library to be installed in the system.

Functionality of the script is explained by comments in code, and summarised below:

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
Print out fulldata.txt
  
## Step5 

Create a summary of the full data set by calculating the mean of values per test subject and activity.   


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
