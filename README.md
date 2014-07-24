getdata course project assignment
=================================

The script works this way:
--------------------------

Step 1
------
Reads test data, train data, and features (column names for test and train data)
The scripts assumes that the data files (features.txt and test and train folders) are in the default/current directory, the same of the script.

Step 2
------
The names required columns are extracted to a data frame named selObs.
I assumed comparing the requirements against the features.txt file (column names) that I have to extract the columns ending with *"-mean()"* and *"-sdt()"*, together with subject and activity. Sorry if I misunderstood.

Step 3 
------
In a single pass (one instruction), I subset the requested columns as dataframe[,myCols], *cbind()* them with subject and activity dataset, and then *rbind()* the two datasets. This operation is not made in the same order as in the assigment descriptions (point 1 and 2 are in reverse order) but I think is equivalent and more efficient as are merged two smaller subsets.

Step 4
------
Column names are reassigned. I chose to avoid an external lookup table or a hand-made list, and do it programmatically simply removing conflictual/reserved words that would interfere with the final step. Else, why have a CodeBook?

Step 5
------
Value for the activities are recoded with a for loop, (if I had not misunderstood point 4 in the assigment specs).

Step 6
------
The tidy dataset is generated and written, using the *summaryBy()* function of the *doBy* package. I made this choice after seeing a suggestion of a TA in the forum and some googling around.
