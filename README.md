Coursera Data Science
=====================

Getting and Cleaning Data Course Project

This course project takes a set of input data, performs various transformations and calculations on it, and outputs a tidy data file of results.


Input Requirements:
===================
The project runs with a single script named run_analysis.R

Prerequisites:
The script will call the library reshape2, which should be installed prior to running the script.

The script requires the following files to be in the working directory:
- features.txt
- X_test.txt 
- X_train.txt
- Y_test.txt
- Y_train.txt
- subject_test.txt
- subject_train.txt
- activity_labels.txt

These files are described in the README.txt provided with the source data.

Note: per the project instructions, the files should be in the working directory. The files should *not* be in the UCI HAR Dataset directory, because the code only looks in the working directory. Adding code to check different locations is beyond the planned scope of this project.

Processing:
===========
The run_analysis.R file contains documentation of all steps performed on the data. The following is a summary of those steps:
- load the features file to use as column names, and do some processing to clean up the variable names [instruction step 4]
- load the X_test and X_train files and combine them, using the variable names from the previous step [project instruction step 1]
- load the Y_test and Y_train files and combine them
- load the subject_test and subject_train files and combine them
- split out the fields we want from the X_ data, then append the Y_ and subject_ data [instruction step 2]
- melt the data so we can process it
- recast the data to calculate the means and make a wide table
- load the activity_label data
- append the activity_label data to the wide file [instruction step 3], and do some formatting
- create the final output file [instruction step 5]

During each step we also clean up used data tables, so we reduce the risk of memory issues later in the processing. We end with just a single table - wide - left in memory.


Output:
=======
Executing the script will output the following (comma-delimited) tidy data file into the working directory:
- wide.txt

Notes:
======

See the CodeBook.md file for descriptions of the data.

See the run_analysis.R script for documentation on the steps within the code

The output is considered tidy because it has a simple data structure, with the variables forming columns and observations forming rows (in this case the row observations are summaries of the source data). It includes clear variable names, using lowerCamelCase to make them easier to read.

The choice was made to use the source data that ended in either mean() or std() (with XYZ where applicable) rather than any variant of mean or std within the source data name.

The dataset used in this project was provided by:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
